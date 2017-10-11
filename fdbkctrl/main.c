/*
    SmartMDC - Copyright (C) 2014..2015 Sarunas Vaitekonis

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

#include "usbcfg.h"

#include "arm_math.h"

#include "ad5761r.h"

/* Available streaming channels. */
#define STREAMING_CHANNEL_FE        0x00
#define STREAMING_CHANNEL_CE        0x01
#define STREAMING_CHANNEL_SUM       0x02
#define STREAMING_CHANNEL_A         0x03
#define STREAMING_CHANNEL_B         0x04
#define STREAMING_CHANNEL_C         0x05
#define STREAMING_CHANNEL_D         0x06

#define STREAMING_COUNTER_VALUE     8

/* ADC timeout in ms. */
#define ADC_WAIT_TIMEOUT_MS         10

/* Buffer size of the ADC subsystem. */
#define ADC_BUF_DEPTH               32

/* ADC1_2 conversion group. */
#define ADC_GRP1_NUM_CHANNELS       0x04
#define ADC_GRP1_BUF_DEPTH          (ADC_BUF_DEPTH * ADC_GRP1_NUM_CHANNELS)

/* Telemetry message related constants. */
#define TELEMETRY_MSG_USB_SIGNATURE 0xAA
#define TELEMETRY_MSG_USB_HDR_SIZE  0x04
#define TELEMETRY_MSG_COM_HDR_SIZE  0x02
#define TELEMETRY_LOOP_DIV          5

/* SmartMDC Modes */
#define MODE_STREAMING              0
#define MODE_SCANNING               1

/* MACROS */
#define SYMVAL(sym)                 (uint32_t)(((uint8_t *)&(sym)) - ((uint8_t *)0))
#define CONSTRAIN(val,min,max)      ((val)<(min)?(min):((val)>(max)?(max):(val)))

/* The end of RAM defined in linker script. */
extern uint32_t __ram0_end__;

/* USB Telemetry message structure. */
typedef struct tagMessageUSB {
  uint8_t msg_id;     /* Telemetry message ID.             */
  uint8_t signature;  /* Telemetry message signature byte. */
  uint16_t data_size; /* Size of telemetry message data.   */
} __attribute__((packed)) MessageUSB, *PMessageUSB;

/* PID gain structure. */
typedef struct tagPID {
  float32_t P;        /* Proportional gain. */
  float32_t I;        /* Integral gain.     */
  float32_t D;        /* Differential gain. */
} __attribute__((packed)) PID, *PPID;

/* PID controller structure. */
typedef struct tagPIDCtrl {
  PID pid;            /* PID gains.              */
  int32_t integral;   /* Integral value.    */
  int16_t prevErr;    /* Previous process error. */
} __attribute__((packed)) PIDCtrl, *PPIDCtrl;

typedef struct tagPWMOutputStruct {
  uint8_t power;
  uint8_t flags;
} __attribute__((packed)) PWMOutputStruct, *PPWMOutputStruct;

/*
 * SPI1 configuration (9MHz, 8-bit, CPOL=1, CPHA=0, MSb first).
 */
static const SPIConfig spicfg1 = {
  end_cb: NULL,             /* Operation complete callback        */
  ssport: GPIOA,            /* The chip select line port.         */
  sspad:  GPIOA_SPI1_NSS,   /* The chip select line pad number.   */
  cr1:    SPI_CR1_BR_0 |    /* CR1 register initialization data.  */
          SPI_CR1_CPOL,
  cr2:    SPI_CR2_DS_2 |    /* CR2 register initialization data.  */
          SPI_CR2_DS_1 |
          SPI_CR2_DS_0
};

/* ADC1_2 samples. */
static adcsample_t samplesCBAD[ADC_GRP1_NUM_CHANNELS * ADC_GRP1_BUF_DEPTH];
static adcsample_t *bufferCBAD;
/* Streaming buffer. */
static uint16_t streamingBuf[ADC_BUF_DEPTH];

/* Streaming control variables. */
static uint8_t streamingChnID = STREAMING_CHANNEL_FE;
static uint32_t streamingCnt = 0;

/* PID controller settings. */
static PIDCtrl pidc = {
  {
    0.0f, /* P gain.            */
    0.0f, /* I gain.            */
    0.0f  /* D gain.            */
  },
  0,      /* Integral value.    */
  0       /* Previous error.    */
};

/* PID controller enabled flag. */
static bool fPIDEnabled = FALSE;
/* PID controller invert error flag. */
static bool fPIDInvertErr = FALSE;
/* Setpoint for PID controller. */
static int16_t pidSetpoint = 0;

/* Main thread termination flag. */
static bool fRunMain = TRUE;

/* Binary semaphore for ADC synchronization. */
static BSEMAPHORE_DECL(bsemADCReady, TRUE);

/* Virtual serial port over USB.*/
SerialUSBDriver SDU1;

/* Generalized BaseChannels for serial data exchange. */
static BaseChannel *pChnUSB = NULL;

/* USB Telemetry message. */
static MessageUSB msgUSB = {
  msg_id:     0,                            /* Message ID.  */
  signature:  TELEMETRY_MSG_USB_SIGNATURE,  /* Signature.   */
  data_size:  0                             /* Data size.   */
};

static uint8_t smartMDCMode = MODE_STREAMING;

/* PWM output settings of the motor. */
static PWMOutputStruct pwmOutput = {1,0};
/* Speed of the motor. */
static uint32_t motorSpeed = 0;

/*
 * ADC streaming callback for C, B, A and D channels.
 */
static void adccallbackCBAD(ADCDriver *adcp, adcsample_t *buffer, size_t n) {
  (void)adcp;
  (void)n;
  bufferCBAD = buffer;

  /* Change state of the synchronizing semaphore. */
  chBSemSignalI(&bsemADCReady);
}

/*
 * ADC1_2 conversion group.
 * Mode:      Continuous, 32 samples of 4 channels each, SW triggered,
              (72 000 000 / 4) / (601.5 + 12.5) / 2 = 14658 sps (7 kHz bw).
 * Channels:  ADC1_CH3-(C), ADC2_CH1-(B), ADC1_CH4-(A), ADC2_CH2-(D).
 */
static ADCConversionGroup adcgrpcfg1 = {
  TRUE,                                     /* Circular */
  ADC_GRP1_NUM_CHANNELS,
  adccallbackCBAD,
  NULL,
  ADC_CFGR_CONT,                            /* CFGR     */
  ADC_TR(0, 4095),                          /* TR1      */
  ADC_CCR_DUAL(1),                          /* CCR      */
  /* MASTER CHANNEL */
  {                                         /* SMPR[2]  */
    ADC_SMPR1_SMP_AN3(ADC_SMPR_SMP_601P5) |
    ADC_SMPR1_SMP_AN4(ADC_SMPR_SMP_601P5),
    0,
  },
  {                                         /* SQR[4]   */
    ADC_SQR1_SQ1_N(ADC_CHANNEL_IN3) |
    ADC_SQR1_SQ2_N(ADC_CHANNEL_IN4),
    0,
    0,
    0
  },
  /* SLAVE CHANNEL */
  {                                         /* SSMPR[2] */
    ADC_SMPR1_SMP_AN1(ADC_SMPR_SMP_601P5) |
    ADC_SMPR1_SMP_AN2(ADC_SMPR_SMP_601P5),
    0,
  },
  {                                         /* SSQR[4]  */
    ADC_SQR1_SQ1_N(ADC_CHANNEL_IN1) |
    ADC_SQR1_SQ2_N(ADC_CHANNEL_IN2),
    0,
    0,
    0
  }
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
      chThdSleepMilliseconds(1000);
    } else {
      chThdSleepMilliseconds(250);
    }
  }
}

/**
 *
 */
static void pidApply(PIDCtrl *pidc, int16_t pv, int16_t sp) {
  int16_t err;
  int16_t drv;

  /* Calculate process error. */
  if (fPIDInvertErr) {
    err = pv - sp;
  } else {
    err = sp - pv;
  }

  /* Integral update. */
  pidc->integral += err;

  /* Wind-up guard. */
  pidc->integral = CONSTRAIN(pidc->integral, 0, 65536000);

  /* Derivative calculation.  */
  drv = err - pidc->prevErr;

  /* Update PID structure. */
  pidc->prevErr = err;

  /* Calculate the new actuator position. */
  /* NOTE: dt value is embedded in I and D coefficients. */
  int32_t pos =
    (float32_t)(err * pidc->pid.P) +
    (float32_t)(pidc->integral * pidc->pid.I) +
    (float32_t)(drv * pidc->pid.D);

  /* Update actuator. */
  pos = CONSTRAIN(pos, 0, 65535);
  ad5761rSetData(pos);
}

/**
 *
 */
static void adcProcessData(void) {
  uint_fast8_t n;
  uint16_t sum;
  int16_t fe;
  int16_t ce;
  uint32_t sumSum = 0;
  int32_t sumFE = 0;
  int32_t sumCE = 0;
  uint16_t avgSum;
  int16_t avgFE;
  int16_t avgCE;

#if defined(ARM_MATH_CM4)
  int32_t tmpCB1, tmpCB2;
  int32_t tmpAD1, tmpAD2;
  int32_t tmpRes1, tmpRes2, tmpRes3, tmpRes4;
#else
  adcsample_t tmpA, tmpD, tmpC, tmpB;
  uint16_t sumAD, sumCB;
  int16_t diffAD, diffCB;
#endif /* ARM_MATH_CM4 */

  for (n = 0; n < ADC_BUF_DEPTH; n++) {
#if defined(ARM_MATH_CM4)
    tmpCB1 = *__SIMD32(bufferCBAD)++;     /* [B,C] */
    tmpCB2 = tmpCB1;

    tmpAD1 = *__SIMD32(bufferCBAD)++;     /* [D,A] */
    tmpAD2 = tmpAD1;

    tmpRes1 = __SASX(tmpAD1, tmpAD2);     /* [D+A,A-D] */
    tmpRes2 = __SASX(tmpCB1, tmpCB2);     /* [B+C,C-B] */
    tmpRes3 = __SADD16(tmpRes1, tmpRes2); /* [(D+A)+(B+C),(A-D)+(C-B)] */
    tmpRes4 = __SSUB16(tmpRes2, tmpRes1); /* [(B+C)-(D+A),(C+D)-(A+B)] */

    fe = (tmpRes3 << 16) >> 16;
    sum = (tmpRes3 >> 16);
    ce = (tmpRes4 >> 16);
#else
    tmpC = *bufferCBAD++;
    tmpB = *bufferCBAD++;
    sumCB = tmpC + tmpB;
    diffCB = tmpC - tmpB;

    tmpA = *bufferCBAD++;
    tmpD = *bufferCBAD++;
    sumAD = tmpA + tmpD;
    diffAD = tmpA - tmpD;

    sum  = sumAD + sumCB;
    /* (A-D)-(B-C) =
     *  A-D - B+C  =
     *  A-D + C-B  =
     * (A-D)+(C-B);
     */
    fe = diffAD + diffCB;
    ce = sumCB - sumAD;
#endif /* ARM_MATH_CM4 */

    sumFE += fe;
    sumCE += ce;
    sumSum += sum;

    switch (streamingChnID) {
    case STREAMING_CHANNEL_CE:
      streamingBuf[n] = ce;
      break;
    case STREAMING_CHANNEL_SUM:
      streamingBuf[n] = sum;
      break;
    case STREAMING_CHANNEL_A:
#if defined(ARM_MATH_CM4)
      streamingBuf[n] = (tmpAD1 << 16) >> 16;
#else
      streamingBuf[n] = tmpA;
#endif /* ARM_MATH_CM4 */
      break;
    case STREAMING_CHANNEL_B:
#if defined(ARM_MATH_CM4)
      streamingBuf[n] = (tmpCB1 >> 16);
#else
      streamingBuf[n] = tmpB;
#endif /* ARM_MATH_CM4 */
      break;
    case STREAMING_CHANNEL_C:
#if defined(ARM_MATH_CM4)
      streamingBuf[n] = (tmpCB1 << 16) >> 16;
#else
      streamingBuf[n] = tmpC;
#endif /* ARM_MATH_CM4 */
      break;
    case STREAMING_CHANNEL_D:
#if defined(ARM_MATH_CM4)
      streamingBuf[n] = (tmpAD1 >> 16);
#else
      streamingBuf[n] = tmpD;
#endif /* ARM_MATH_CM4 */
      break;
    default:
      streamingBuf[n] = (uint16_t)fe;
    }
  }

  avgFE = sumFE / ADC_BUF_DEPTH;
  avgCE = sumCE / ADC_BUF_DEPTH;
  avgSum = sumSum  / ADC_BUF_DEPTH;
  (void)avgCE;
  (void)avgSum;

  /* Apply PID controller. */
  if (fPIDEnabled) {
    pidApply(&pidc, avgFE, pidSetpoint);
  }
}

/**
 *
 */
static void modeUpdate(uint8_t newMode) {
  smartMDCMode = newMode;
#if defined(USE_ADC_HW_TRG)
  /* Stop ADC conversions. */
  osalSysLock();
  adcStopConversion(&ADCD1);
  osalSysUnlock();

  switch (smartMDCMode) {
  case MODE_SCANNING:
    fSkipNextPeriodEvent = TRUE;
    /* Reconfigure hardware triggering to TIM8_TRGO2. */
    adcgrpcfg1.cfgr = ADC_CFGR_CONT | ADC_CFGR_EXTEN_RISING | ADC_CFGR_EXTSEL_SRC(8);
    break;
  default: // MODE_STREAMING
    fSkipNextPeriodEvent = FALSE;
    /* Reconfigure hardware triggering to TIM2_TRGO. */
    adcgrpcfg1.cfgr = ADC_CFGR_CONT | ADC_CFGR_EXTEN_RISING | ADC_CFGR_EXTSEL_SRC(11);

    gptStartOneShot(&GPTD2, ADC_GPT_START_TIMEOUT_MS);
  }
  /* Starts an ADC continuous conversion.
   * If software trigger is enabled conversion starts immediately.
   * If hardware trigger is enabled ADC waits until hardware trigger event occurs.
   */
  osalSysLock();
  adcStartConversion(&ADCD1, &adcgrpcfg1, samplesCBAD, ADC_GRP1_BUF_DEPTH);
  osalSysUnlock();
#endif /* USE_ADC_HW_TRG */
}

/**
 * @brief  Gets command from USB Serial port.
 * @return TRUE  - if whole command is in the buffer.
 *         FALSE - if buffer is empty or command is not yet complete.
 */
static bool commandGetUSB(void) {
  static bool fContinue = FALSE;
  static uint_fast8_t waitCnt;
  size_t numBytes;

  osalSysLock();
  /* Get number of bytes in the input queue. */
  numBytes = qSpaceI(&((SerialUSBDriver *)pChnUSB)->iqueue);
  osalSysUnlock();

  if (fContinue) {
    if (numBytes >= (size_t)msgUSB.data_size) {
      fContinue = FALSE;
      /* Whole message is in the buffer. */
      return TRUE;
    } else if (++waitCnt > 2) {
      fContinue = FALSE;
      /* Message is still not complete. Something wrong with communication?!.
       * Drop the message, clear the input queue and start all over again.
       */
      osalSysLock();
      iqResetI(&((SerialUSBDriver *)pChnUSB)->iqueue);
      osalSysUnlock();
    }
  } else if (numBytes >= TELEMETRY_MSG_USB_HDR_SIZE) {
    /* Get new message header. */
    chnRead(pChnUSB, (uint8_t *)&msgUSB, TELEMETRY_MSG_USB_HDR_SIZE);
    /* Check if message header is not corrupted. */
    if ((msgUSB.signature == TELEMETRY_MSG_USB_SIGNATURE) && (msgUSB.data_size <= 128)) {
      if (numBytes >= (size_t)(msgUSB.data_size + TELEMETRY_MSG_USB_HDR_SIZE)) {
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
      iqResetI(&((SerialUSBDriver *)pChnUSB)->iqueue);
      osalSysUnlock();
    }
  }

  return FALSE;
}

/**
 *
 */
static void commandProcessUSB(void)
{
  uint16_t utmp16;
  uint8_t utmp8;
  bool fIQReset = FALSE;

  switch (msgUSB.msg_id) {
  /**
   * R E C E I V E R   S E C T I O N
   */
  case 'A': /* Updates position of the FOC actuator (0x41 hex; 65 dec). */
    if (msgUSB.data_size == sizeof(utmp16)) {
      chnRead(pChnUSB, (uint8_t *)&utmp16, msgUSB.data_size);
      utmp16 &= 0x0FFF; /* Limit to 12 bits right alligned. */
      //dacPutChannelX(&DACD1, DAC_CHANNEL_FOC, utmp16);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'B': /* Updates position of the RAD actuator (0x42 hex; 66 dec). */
    if (msgUSB.data_size == sizeof(utmp16)) {
      chnRead(pChnUSB, (uint8_t *)&utmp16, msgUSB.data_size);
      utmp16 &= 0x0FFF; /* Limit to 12 bits right alligned. */
      //dacPutChannelX(&DACD2, DAC_CHANNEL_RAD, utmp16);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'C': /* Updates position of the FBK actuator (0x43 hex; 67 dec). */
    if (msgUSB.data_size == sizeof(utmp16)) {
      chnRead(pChnUSB, (uint8_t *)&utmp16, msgUSB.data_size);
      if (!fPIDEnabled) {
        ad5761rSetData(utmp16);
      }
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'D': /* Update PID values (0x44 hex; 68 dec). */
    if (msgUSB.data_size == sizeof(PID)) {
      chnRead(pChnUSB, (uint8_t *)&pidc.pid, msgUSB.data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'E': /* Update fPIDEnabled flag (0x45 hex; 69 dec). */
    if (msgUSB.data_size == sizeof(fPIDEnabled)) {
      chnRead(pChnUSB, (uint8_t *)&fPIDEnabled, msgUSB.data_size);
      if (fPIDEnabled) {
        if (pidc.pid.I == 0.0f) {
          pidc.integral = 0x00000000;
        } else {
          pidc.integral = ad5761rGetData() / pidc.pid.I;
        }
        palSetPad(GPIOB, GPIOB_LED_B);
      } else {
        palClearPad(GPIOB, GPIOB_LED_B);
      }
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'F': /* Update PID setpoint value (0x46 hex; 70 dec). */
    if (msgUSB.data_size == sizeof(pidSetpoint)) {
      chnRead(pChnUSB, (uint8_t *)&pidSetpoint, msgUSB.data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'G': /* Update fPIDInvertErr flag (0x47 hex; 71 dec). */
    if (msgUSB.data_size == sizeof(fPIDInvertErr)) {
      chnRead(pChnUSB, (uint8_t *)&fPIDInvertErr, msgUSB.data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'O': /* Update PWM settings of the motor driver. */
    if (msgUSB.data_size == sizeof(pwmOutput)) {
      chnRead(pChnUSB, (uint8_t *)&pwmOutput, msgUSB.data_size);
      /* Forwarding message to the VauDUO motor driver board. */
      //msgCOM.msg_id = 'A';
      //msgCOM.data_size = sizeof(pwmOutput);
      //chnWrite(pChnCOM, (const uint8_t *)&msgCOM, TELEMETRY_MSG_COM_HDR_SIZE);
      //chnWrite(pChnCOM, (const uint8_t *)&pwmOutput, msgCOM.data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'P': /* Update motor driving speed. */
    if (msgUSB.data_size == sizeof(motorSpeed)) {
      chnRead(pChnUSB, (uint8_t *)&motorSpeed, msgUSB.data_size);
      /* Forwarding message to the VauDUO motor driver board. */
      //msgCOM.msg_id = 'B';
      //msgCOM.data_size = sizeof(motorSpeed);
      //chnWrite(pChnCOM, (const uint8_t *)&msgCOM, TELEMETRY_MSG_COM_HDR_SIZE);
      //chnWrite(pChnCOM, (const uint8_t *)&motorSpeed, msgCOM.data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'S': /* Update streaming channel ID (0x53 hex; 83 dec). */
    if (msgUSB.data_size == sizeof(streamingChnID)) {
      chnRead(pChnUSB, (uint8_t *)&streamingChnID, msgUSB.data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'T': /* Switch between Streaming/Scanning modes. */
    if (msgUSB.data_size == sizeof(utmp8)) {
      chnRead(pChnUSB, (uint8_t *)&utmp8, msgUSB.data_size);
      modeUpdate(utmp8);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'X': /* Shuts down the controller and reboots into bootloader (0x58 hex; 88 dec). */
    /* Place a special mark at the end of RAM as a sign for Reset Handler
     * to enter bootloader.
     */
    if (msgUSB.data_size == 0) {
      *((uint32_t *)(SYMVAL(__ram0_end__) - 4)) = 0xDEADBEEF;
      fRunMain = FALSE;
    } else {
      fIQReset = TRUE;
    }
    break;
  /**
   * T R A N S M I T T E R   S E C T I O N
   */
  case 'a': /* Sends value of the FOC actuator (0x61 hex; 97 dec). */
    if (msgUSB.data_size == 0) {
      msgUSB.data_size = sizeof(utmp16);
      //utmp16 = (uint16_t)dac_lld_get_channel(&DACD1, DAC_CHANNEL_FOC);
      utmp16 = 0x0000;
      chnWrite(pChnUSB, (const uint8_t *)&msgUSB, TELEMETRY_MSG_USB_HDR_SIZE);
      chnWrite(pChnUSB, (const uint8_t *)&utmp16, msgUSB.data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'b': /* Sends value of the RAD actuator (0x62 hex; 98 dec). */
    if (msgUSB.data_size == 0) {
      msgUSB.data_size = sizeof(utmp16);
      //utmp16 = (uint16_t)dac_lld_get_channel(&DACD2, DAC_CHANNEL_RAD);
      utmp16 = 0x0000;
      chnWrite(pChnUSB, (const uint8_t *)&msgUSB, TELEMETRY_MSG_USB_HDR_SIZE);
      chnWrite(pChnUSB, (const uint8_t *)&utmp16, msgUSB.data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'c': /* Sends value of the FBK actuator (0x63 hex; 99 dec). */
    if (msgUSB.data_size == 0) {
      msgUSB.data_size = sizeof(utmp16);
      utmp16 = ad5761rGetData();
      chnWrite(pChnUSB, (const uint8_t *)&msgUSB, TELEMETRY_MSG_USB_HDR_SIZE);
      chnWrite(pChnUSB, (const uint8_t *)&utmp16, msgUSB.data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'd': /* Sends PID gains (0x64 hex; 100 dec). */
    if (msgUSB.data_size == 0) {
      msgUSB.data_size = sizeof(PID);
      chnWrite(pChnUSB, (const uint8_t *)&msgUSB, TELEMETRY_MSG_USB_HDR_SIZE);
      chnWrite(pChnUSB, (const uint8_t *)&pidc.pid, msgUSB.data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'f': /* Sends the PID setpoint value (0x66 hex; 102 dec). */
    if (msgUSB.data_size == 0) {
      msgUSB.data_size = sizeof(pidSetpoint);
      chnWrite(pChnUSB, (const uint8_t *)&msgUSB, TELEMETRY_MSG_USB_HDR_SIZE);
      chnWrite(pChnUSB, (const uint8_t *)&pidSetpoint, msgUSB.data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'o': /* Sends a PWM settings request of the motor to the VauDUO board. */
    if (msgUSB.data_size == 0) {
      /* Forwarding message to the VauDUO motor driver board. */
      //msgCOM.msg_id = 'a';
      //msgCOM.data_size = 0;
      //chnWrite(pChnCOM, (const uint8_t *)&msgCOM, TELEMETRY_MSG_COM_HDR_SIZE);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'p': /* Sends a speed request of the motor to the VauDUO board. */
     if (msgUSB.data_size == 0) {
      /* Forwarding message to the VauDUO motor driver board. */
      //msgCOM.msg_id = 'b';
      //msgCOM.data_size = 0;
      //chnWrite(pChnCOM, (const uint8_t *)&msgCOM, TELEMETRY_MSG_COM_HDR_SIZE);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 's': /* Streaming data enable (0x73 hex; 115 dec). */
    if (msgUSB.data_size == 0) {
      streamingCnt = STREAMING_COUNTER_VALUE;
    } else {
      fIQReset = TRUE;
    }
    break;
  default: fIQReset = TRUE; /* Unknown message. */
  }

  /* Reset the input queue if an error occured. */
  if (fIQReset) {
    osalSysLock();
    iqResetI(&((SerialUSBDriver *)pChnUSB)->iqueue);
    osalSysUnlock();
  }
}

/*
 * Application entry point (normal priority).
 */
int main(void) {
  uint_fast8_t loopDiv = 1;
  uint16_t utmp16 = 0;
  thread_t *pThdBlinker;

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
  
  /* Activates the pair of ADC1 and ADC2 drivers. */
  adcStart(&ADCD1, NULL);

  /* Activates the SPI1 driver. */
  spiStart(&SPID1, &spicfg1);

  /* Activates the USB driver and then the USB bus pull-up on D+.
   * Note, a delay is inserted in order to not have to disconnect the cable
   * after a reset.
   */
  usbDisconnectBus(serusbcfg.usbp);
  chThdSleepMilliseconds(500);
  usbStart(serusbcfg.usbp, &usbcfg);
  usbConnectBus(serusbcfg.usbp);

  /* Reset the AD5761R high voltage bipollar DAC device. */
  ad5761rStop();
  chThdSleepMilliseconds(500);
  
  /* Activates the AD5761R high voltage bipollar DAC device. */
  ad5761rStart();
  ad5761rSetData(0x0000);
  
  /* Creates the blinker thread. */
  pThdBlinker = chThdCreateStatic(waBlinker, sizeof(waBlinker),
    LOWPRIO, Blinker, NULL);

  /* Starts an ADC continuous conversion.
   * If software trigger is enabled conversion starts immediately.
   * If hardware trigger is enabled ADC waits until hardware trigger event occurs.
   */
  adcStartConversion(&ADCD1, &adcgrpcfg1, samplesCBAD, ADC_GRP1_BUF_DEPTH);

  /* Normal main() thread activity. */
  while (fRunMain) {
    /* If ADC_BUF_DEPTH = 32 and sampling rate is 14 658 sps
     * the invoking rate of the thread is ~458 Hz.
     */
    if (chBSemWaitTimeout(&bsemADCReady, MS2ST(ADC_WAIT_TIMEOUT_MS)) == MSG_OK) {
      adcProcessData();

      /* Check if USB is connected and configured. */
      pChnUSB = serusbcfg.usbp->state == USB_ACTIVE ? (BaseChannel *)&SDU1 : NULL;

      if (pChnUSB) {
        if (streamingCnt) {
          /* Send message header and data. */
          msgUSB.msg_id    = 's';
          msgUSB.data_size = ADC_BUF_DEPTH * sizeof(uint16_t);

          chnWrite(pChnUSB, (const uint8_t *)&msgUSB, TELEMETRY_MSG_USB_HDR_SIZE);
          chnWrite(pChnUSB, (const uint8_t *)streamingBuf, msgUSB.data_size);

          streamingCnt--; /* Decrease streaming counter. */
        }

        if (fPIDEnabled) {
          msgUSB.msg_id    = 'c';
          msgUSB.data_size = sizeof(utmp16);
          utmp16 = ad5761rGetData();
          chnWrite(pChnUSB, (const uint8_t *)&msgUSB, TELEMETRY_MSG_USB_HDR_SIZE);
          chnWrite(pChnUSB, (const uint8_t *)&utmp16, msgUSB.data_size);
        }

        /* Run command processor @ ~92 Hz speed. */
        if (loopDiv++ > (TELEMETRY_LOOP_DIV - 1)) {
          if (commandGetUSB()) {
            commandProcessUSB();
          }
          loopDiv = 1;
        }
      }
    } else {
      /* Check if USB is connected and configured. */
      pChnUSB = serusbcfg.usbp->state == USB_ACTIVE ? (BaseChannel *)&SDU1 : NULL;

      if (pChnUSB) {
        if (commandGetUSB()) {
          commandProcessUSB();
        }

        loopDiv = 1;
      }
    }
  }

  /* Starting the shut-down sequence.*/
  adcStopConversion(&ADCD1);          /* Stopping ADC1_2 conversions.             */

  if (pThdBlinker != NULL) {
    chThdTerminate(pThdBlinker);      /* Requesting termination.                  */
    chThdWait(pThdBlinker);           /* Waiting for the actual termination.      */
  }

  adcStop(&ADCD1);                    /* Stopping ADC1_2 device.                  */
  ad5761rStop();                      /* Powering down AD5761R high voltage DAC.  */
  spiStop(&SPID1);                    /* Stopping SPI1 device.                    */
  usbStop(serusbcfg.usbp);            /* Stopping USB port.                       */
  usbDisconnectBus(serusbcfg.usbp);
  sduStop(&SDU1);                     /* Stopping serial-over-USB CDC driver.     */

  chSysDisable();

  /* Reset all peripherals. */
  rccResetAPB1(0xFFFFFFFF);
  rccResetAPB2(0xFFFFFFFF);

  /* Reset micro-controller. */
  NVIC_SystemReset();

  /* This point should never be reached. */
  return 0;
}
