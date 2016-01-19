/*
    EFXPGC - Copyright (C) 2015 MidiMon Dev.

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
*/

#include "ch.h"
#include "hal.h"

#include "fix16.h"
#include "pwmio.h"
#include "spiflash.h"
#include "usbcfg.h"

/* Telemetry message related constants. */
#define TELEMETRY_MSG_HDR_SIZE  0x02

/* MACROS */
#define SYMVAL(sym)             (uint32_t)(((uint8_t *)&(sym)) - ((uint8_t *)0))
#define CONSTRAIN(val,min,max)  ((val)<(min)?(min):((val)>(max)?(max):(val)))

/* The end of RAM defined in linker script. */
extern uint32_t __ram0_end__;

/* Telemetry message structure. */
typedef struct tagMessage {
  uint8_t msg_id;     /* Telemetry message ID.             */
  uint8_t data_size; /* Size of telemetry message data.   */
} __attribute__((packed)) Message, *PMessage;

/**
 * G L O B A L   V A R I A B L E S
 */
// NONE;

/**
 * L O C A L   V A R I A B L E S
 */
/* Main thread termination flag. */
static bool fRunMain = TRUE;

/* Virtual serial port over USB. */
SerialUSBDriver SDU1;

/* High speed SPI configuration for SPI driver 2:
 * - 18MHz, CPHA=0, CPOL=0, MSb first.
 */
static const SPIConfig spicfg_d2 = {
  NULL,           /* end_cb */
  GPIOB,          /* ssport */
  GPIOB_SPI2NSS,  /* sspad  */
  0               /* cr1    */
};

/* Speed of the motors.          */
static fix16_t motorSpeedDst[2] = {0x00000000, 0x00000000};
static fix16_t motorSpeedAct[2] = {0x00000000, 0x00000000};

/* Position of the motors.        */
static fix16_t motorPos[2] = {0x00000000, 0x00000000};

/* Telemetry message. */
static Message msg = {
  msg_id:     0,            /* Message ID.  */
  data_size:  0             /* Data size.   */
};

/*
 * Blinker thread (low priority).
 */
static THD_WORKING_AREA(waBlinker, 64);
static THD_FUNCTION(Blinker, arg) {
  (void)arg;
  while (!chThdShouldTerminateX()) {
    palTogglePad(GPIOB, GPIOB_LED_A);
    if (serusbcfg.usbp->state == USB_ACTIVE) {
      chThdSleepMilliseconds(250);
    } else {
      chThdSleepMilliseconds(1000);
    }
  }
}

/**
 * Motor rotation thread. Times are in milliseconds.
 * This thread updates motor position every 2 ms (@500 Hz).
 */
static THD_WORKING_AREA(waMotor, 1024);
static THD_FUNCTION(Motor, arg) {
  (void)arg;
  systime_t time = chVTGetSystemTime();
  uint32_t uTmp32;

  while (!chThdShouldTerminateX()) {
    /* Pitch: */
    uTmp32 = motorSpeedAct[PWM_OUT_PITCH] * 127 + (motorSpeedDst[PWM_OUT_PITCH] << 8);
    motorSpeedAct[PWM_OUT_PITCH] = uTmp32 >> 7;
    motorPos[PWM_OUT_PITCH] = fix16_add(motorPos[PWM_OUT_PITCH], motorSpeedAct[PWM_OUT_PITCH] >> 8);
    if (motorPos[PWM_OUT_PITCH] > fix16_pi) {
      motorPos[PWM_OUT_PITCH] = fix16_sub(motorPos[PWM_OUT_PITCH], fix16_two_pi);
    }
    /* Roll: */
    uTmp32 = motorSpeedAct[PWM_OUT_ROLL] * 127 + (motorSpeedDst[PWM_OUT_ROLL] << 8);
    motorSpeedAct[PWM_OUT_ROLL] = uTmp32 >> 7;
    motorPos[PWM_OUT_ROLL] = fix16_add(motorPos[PWM_OUT_ROLL], motorSpeedAct[PWM_OUT_ROLL] >> 8);
    if (motorPos[PWM_OUT_ROLL] > fix16_pi) {
      motorPos[PWM_OUT_ROLL] = fix16_sub(motorPos[PWM_OUT_ROLL], fix16_two_pi);
    }
    /* Update motor position. */
    pwmOutputUpdate(PWM_OUT_PITCH, motorPos[PWM_OUT_PITCH]);
    pwmOutputUpdate(PWM_OUT_ROLL, motorPos[PWM_OUT_ROLL]);
    /* Wait until the next 2 milliseconds passes. */
    chThdSleepUntil(time += MS2ST(2));
  }
}

/**
 *
 */
static bool commandGet(BaseChannel *pChn, Message *pMsg) {
  static bool fContinue = FALSE;
  static uint_fast8_t waitCnt;
  size_t numBytes;

  osalSysLock();
  /* Get number of bytes in the input queue. */
  numBytes = qSpaceI(&((SerialUSBDriver *)pChn)->iqueue);
  osalSysUnlock();

  if (fContinue) {
    if (numBytes >= (size_t)pMsg->data_size) {
      fContinue = FALSE;
      /* Whole message is in the buffer. */
      return TRUE;
    } else if (++waitCnt > 2) {
      fContinue = FALSE;
      /* Message is still not complete. Something wrong with communication?!.
       * Drop the message, clear the input queue and start all over again.
       */
      osalSysLock();
      iqResetI(&((SerialUSBDriver *)pChn)->iqueue);
      osalSysUnlock();
    }
  } else if (numBytes >= TELEMETRY_MSG_HDR_SIZE) {
    /* Get new message header. */
    chnRead(pChn, (uint8_t *)pMsg, TELEMETRY_MSG_HDR_SIZE);
    /* Check if message header is not corrupted. */
    if (pMsg->data_size <= 32) {
      if (numBytes >= (size_t)(pMsg->data_size + TELEMETRY_MSG_HDR_SIZE)) {
        /* Whole message is in the buffer. */
        return TRUE;
      } else {
        /* Message is not complete. Wait for another iteration. */
        fContinue = TRUE;
        waitCnt = 0;
      }
    } else {
      /* Corrupted header received. Clear the input queue. */
      osalSysLock();
      iqResetI(&((SerialUSBDriver *)pChn)->iqueue);
      osalSysUnlock();
    }
  }

  return FALSE;
}

/**
 *
 */
static void commandProcess(BaseChannel *pChn, Message *pMsg)
{
  bool fIQReset = FALSE;
  uint32_t uTmp32;

  switch (pMsg->msg_id) {
  /**
   * R E C E I V E R   S E C T I O N
   */
  case 'A': /* Updates PWM Output configuration structure of MOT1 (0x41 hex; 65 dec). */
    if (pMsg->data_size == sizeof(PWMOutputStruct)) {
      chnRead(pChn, (uint8_t *)&g_pwmOutput[PWM_OUT_PITCH], pMsg->data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'B': /* Updates MOT1/PITCH speed value (0x42 hex; 66 dec). */
    if (pMsg->data_size == sizeof(fix16_t)) {
      chnRead(pChn, (uint8_t *)&motorSpeedDst[PWM_OUT_PITCH], pMsg->data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'C': /* Updates PWM Output configuration structure of MOT2 (0x43 hex; 67 dec). */
    if (pMsg->data_size == sizeof(PWMOutputStruct)) {
      chnRead(pChn, (uint8_t *)&g_pwmOutput[PWM_OUT_ROLL], pMsg->data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'D': /* Updates MOT2/ROLL speed value (0x44 hex; 68 dec). */
    if (pMsg->data_size == sizeof(fix16_t)) {
      chnRead(pChn, (uint8_t *)&motorSpeedDst[PWM_OUT_ROLL], pMsg->data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'W': /* Writes configuration to external flash memory (0x57 hex; 87 dec). */
    if (pMsg->data_size == 0) {
      flashSaveSettings();
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'X': /* Shuts down the controller and reboots into bootloader (0x58 hex; 88 dec). */
    /* Place a special mark at the end of RAM as a sign for Reset Handler
     * to enter bootloader.
     */
    if (pMsg->data_size == 0) {
      *((uint32_t *)(SYMVAL(__ram0_end__) - 4)) = 0xDEADBEEF;
      fRunMain = FALSE;
    } else {
      fIQReset = TRUE;
    }
    break;
  /**
   * T R A N S M I T T E R   S E C T I O N
   */
  case 'a': /* Sends PWM Output configuration structure of MOT1 (0x61 hex; 97 dec). */
    if (pMsg->data_size == 0) {
      pMsg->data_size = sizeof(PWMOutputStruct);
      chnWrite(pChn, (const uint8_t *)pMsg, TELEMETRY_MSG_HDR_SIZE);
      chnWrite(pChn, (const uint8_t *)&g_pwmOutput[PWM_OUT_PITCH], pMsg->data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'b': /* Sends current speed value of the MOT1/PITCH motor (0x62 hex; 98 dec). */
    if (pMsg->data_size == 0) {
      uTmp32 = motorSpeedAct[PWM_OUT_PITCH] >> 8;
      pMsg->data_size = sizeof(uTmp32);
      chnWrite(pChn, (const uint8_t *)pMsg, TELEMETRY_MSG_HDR_SIZE);
      chnWrite(pChn, (const uint8_t *)&uTmp32, pMsg->data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'c': /* Sends PWM Output configuration structure of MOT2 (0x63 hex; 99 dec). */
    if (pMsg->data_size == 0) {
      pMsg->data_size = sizeof(PWMOutputStruct);
      chnWrite(pChn, (const uint8_t *)pMsg, TELEMETRY_MSG_HDR_SIZE);
      chnWrite(pChn, (const uint8_t *)&g_pwmOutput[PWM_OUT_ROLL], pMsg->data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'd': /* Sends current speed value of the MOT2/ROLL motor (0x64 hex; 100 dec). */
    if (pMsg->data_size == 0) {
      uTmp32 = motorSpeedAct[PWM_OUT_ROLL] >> 8;
      pMsg->data_size = sizeof(uTmp32);
      chnWrite(pChn, (const uint8_t *)pMsg, TELEMETRY_MSG_HDR_SIZE);
      chnWrite(pChn, (const uint8_t *)&uTmp32, pMsg->data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'i': /* Sends ID of the external flash memory (0x69 hex; 105 dec). */
    if (pMsg->data_size == 0) {
      uTmp32 = flashReadID();
      pMsg->data_size = sizeof(uTmp32);
      chnWrite(pChn, (const uint8_t *)pMsg, TELEMETRY_MSG_HDR_SIZE);
      chnWrite(pChn, (const uint8_t *)&uTmp32, pMsg->data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  default: fIQReset = TRUE; /* Unknown message. */
  }

  /* Reset the input queue if an error occured. */
  if (fIQReset) {
    osalSysLock();
    iqResetI(&((SerialUSBDriver *)pChn)->iqueue);
    osalSysUnlock();
  }
}

/**
 * @brief   Application entry point.
 * @details
 */
int main(void) {
  /* Blinker thread handle. */
  thread_t *pThdBlinker = NULL;
  /* Motor thread handle. */
  thread_t *pThdMotor = NULL;
  /* Telemetry channel. */
  BaseChannel *pChn;

  /* System initializations.
   * - HAL initialization, this also initializes the configured device drivers
   *   and performs the board-specific initializations.
   * - Kernel initialization, the main() function becomes a thread and the
   *   RTOS is active.
   */
  halInit();
  chSysInit();

  /* Initializes a serial-over-USB CDC driver. */
  sduObjectInit(&SDU1);
  sduStart(&SDU1, &serusbcfg);

  /* Activates the USB driver and then the USB bus pull-up on D+.
   * Note, a delay is inserted in order to not have to disconnect the cable
   * after a reset.
   */
  usbDisconnectBus(serusbcfg.usbp);
  chThdSleepMilliseconds(500);
  usbStart(serusbcfg.usbp, &usbcfg);
  usbConnectBus(serusbcfg.usbp);

#if STM32_SERIAL_USE_USART1
  /* Activates the serial driver 1 using the driver's default configuration. */
  sdStart(&SD1, NULL);
#endif

  /* Activates the SPI driver 2. */
  spiStart(&SPID2, &spicfg_d2);

  /* Loads settings from external EEPROM chip. */
  flashLoadSettings();

  /* Creates the blinker thread. */
  pThdBlinker = chThdCreateStatic(waBlinker, sizeof(waBlinker),
    LOWPRIO, Blinker, NULL);
  /* Creates the motor thread. */
  pThdMotor = chThdCreateStatic(waMotor, sizeof(waMotor),
      HIGHPRIO, Motor, NULL);

  /* Starts motor drivers. */
  pwmOutputStart();

  /* Normal main() thread activity. */
  while (fRunMain) {
    if (g_fSaveToFlash && flashIsReady()) {
      flashWriteData();
    }

#if STM32_SERIAL_USE_USART1
    pChn = serusbcfg.usbp->state == USB_ACTIVE ? (BaseChannel *)&SDU1 : (BaseChannel *)&SD1;
#else
    pChn = (BaseChannel *)&SDU1;
#endif

    if (pChn) {
      if (commandGet(pChn, &msg)) {
        commandProcess(pChn, &msg);
      }
    }

    chThdSleepMilliseconds(10);
  }

  if (pThdMotor != NULL) {
    chThdTerminate(pThdMotor);    /* Requesting termination.              */
    chThdWait(pThdMotor);         /* Waiting for the actual termination.  */
  }

  if (pThdBlinker != NULL) {
    chThdTerminate(pThdBlinker);  /* Requesting termination.              */
    chThdWait(pThdBlinker);       /* Waiting for the actual termination.  */
  }

  pwmOutputStop();                /* Stopping pwm output devices.         */
  spiStop(&SPID2);                /* Stopping SPI driver 2.               */
#if STM32_SERIAL_USE_USART1
  sdStop(&SD1);                   /* Stopping serial port 1.              */
#endif
  usbStop(serusbcfg.usbp);        /* Stopping USB port.                   */
  usbDisconnectBus(serusbcfg.usbp);
  sduStop(&SDU1);                 /* Stopping serial-over-USB CDC driver. */

  chSysDisable();

  /* Reset of all peripherals. */
  rccResetAPB1(0xFFFFFFFF);
  rccResetAPB2(0xFFFFFFFF);

  NVIC_SystemReset();

  return 0;
}
