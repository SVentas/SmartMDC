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

#include "ad5504.h"
#include "usbcfg.h"

#include "arm_math.h"

/* Comment out this line if ADC must be triggered by software. */
#define USE_ADC_HW_TRG

/* DAC channels. */
#define DAC_CHANNEL_FOC             0U
#define DAC_CHANNEL_RAD             1U

/* ADC timeout in ms. */
#define ADC_WAIT_TIMEOUT_MS         10
#define ADC_GPT_START_TIMEOUT_MS    100

/* Buffer size of the ADC subsystem. */
#define ADC_BUF_DEPTH               256

/* Available streaming channels. */
#define STREAMING_CHANNEL_FE        0x00
#define STREAMING_CHANNEL_CE        0x01
#define STREAMING_CHANNEL_SUM       0x02
#define STREAMING_CHANNEL_A         0x03
#define STREAMING_CHANNEL_B         0x04
#define STREAMING_CHANNEL_C         0x05
#define STREAMING_CHANNEL_D         0x06

/* ADC1_2 conversion group. */
#define ADC_GRP1_NUM_CHANNELS       0x02
#define ADC_GRP1_BUF_DEPTH          (ADC_BUF_DEPTH * ADC_GRP1_NUM_CHANNELS)

/* ADC3_4 conversion group. */
#define ADC_GRP2_NUM_CHANNELS       0x02
#define ADC_GRP2_BUF_DEPTH          (ADC_BUF_DEPTH * ADC_GRP2_NUM_CHANNELS)

/* Telemetry message related constants. */
#define TELEMETRY_MSG_USB_SIGNATURE 0xAA
#define TELEMETRY_MSG_USB_HDR_SIZE  0x04
#define TELEMETRY_MSG_COM_HDR_SIZE  0x02
#define TELEMETRY_LOOP_DIV          5

#define STREAMING_COUNTER_VALUE     8

/* Z actuator stepping limits. */
#define STEP_LIMIT_MAX              16
#define STEP_LIMIT_MIN              -STEP_LIMIT_MAX

/* Z actuator position limits. */
#define ZPOS_LIMIT_MIN              0
#define ZPOS_LIMIT_MAX              1365

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

/* COM Telemetry message structure. */
typedef struct tagMessageCOM {
  uint8_t msg_id;     /* Telemetry message ID.             */
  uint8_t data_size;  /* Size of telemetry message data.   */
} __attribute__((packed)) MessageCOM, *PMessageCOM;

/* PID gain structure. */
typedef struct tagPID {
  float32_t P;        /* Proportional gain. */
  float32_t I;        /* Integral gain.     */
  float32_t D;        /* Differential gain. */
} __attribute__((packed)) PID, *PPID;

/* PID controller structure. */
typedef struct tagPIDCtrl {
  PID pid;            /* PID gains.              */
  int16_t prevErr;    /* Previous process error. */
  int16_t prevSpeed;  /* Previous speed.         */
  int16_t prevPos;    /* Previous position.      */
} __attribute__((packed)) PIDCtrl, *PPIDCtrl;

typedef struct tagPWMOutputStruct {
  uint8_t power;
  uint8_t flags;
} __attribute__((packed)) PWMOutputStruct, *PPWMOutputStruct;

/* DAC1 channel #1 */
static const DACConfig dac1cfg1 = {
  init:         0U,
  datamode:     DAC_DHRM_12BIT_RIGHT
};

/* DAC1 channel #2 */
static const DACConfig dac1cfg2 = {
  init:         0U,
  datamode:     DAC_DHRM_12BIT_RIGHT
};

/*
 * SPI1 configuration (9MHz, 16-bit, CPHA=1, CPOL=0, MSb first).
 */
static const SPIConfig spicfg1 = {
  end_cb: NULL,             /* Operation complete callback        */
  ssport: GPIOA,            /* The chip select line port.         */
  sspad:  GPIOA_SPI1_NSS,   /* The chip select line pad number.   */
  cr1:    SPI_CR1_BR_0 |    /* CR1 register initialization data.  */
          SPI_CR1_CPHA,
  cr2:    SPI_CR2_DS_3 |    /* CR2 register initialization data.  */
          SPI_CR2_DS_2 |
          SPI_CR2_DS_1 |
          SPI_CR2_DS_0
};

/*
 * GPT2 configuration.
 */
static const GPTConfig gpt2cfg1 = {
  frequency:    1000U,
  callback:     NULL,
  cr2:          TIM_CR2_MMS_1,  /* MMS=010 TRGO on Counter Update signal. */
  dier:         0U
};

/* ADC1_2 samples. */
static adcsample_t samplesAD[ADC_GRP1_NUM_CHANNELS * ADC_GRP1_BUF_DEPTH];
static adcsample_t *bufferAD;
/* ADC3_4 samples. */
static adcsample_t samplesCB[ADC_GRP2_NUM_CHANNELS * ADC_GRP2_BUF_DEPTH];
static adcsample_t *bufferCB;
/* Streaming buffer. */
static uint16_t streamingBuf[ADC_BUF_DEPTH];

/* Streaming control variables. */
static uint8_t streamingChnID = STREAMING_CHANNEL_FE;
static uint32_t streamingCnt = 0;

/* Input capture unit 32-bit variables. */
static icucnt_t periodLast = 0;
static bool fPeriodMeasured = FALSE;
static bool fSkipNextPeriodEvent = FALSE;

/* PID controller settings. */
static PIDCtrl pidc = {
  {
    0.0f, /* P gain.            */
    0.0f, /* I gain.            */
    0.0f  /* D gain.            */
  },
  0,      /* Previous error.    */
  0,      /* Previous speed.    */
  0       /* Previous position. */
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
static BaseChannel *pChnCOM = NULL;
static BaseChannel *pChnUSB = NULL;

/* USB Telemetry message. */
static MessageUSB msgUSB = {
  msg_id:     0,                            /* Message ID.  */
  signature:  TELEMETRY_MSG_USB_SIGNATURE,  /* Signature.   */
  data_size:  0                             /* Data size.   */
};

/* COM Telemetry message. */
static MessageCOM msgCOM = {
  msg_id:     0,                            /* Message ID.  */
  data_size:  0                             /* Data size.   */
};

/* PWM output settings of the motor. */
static PWMOutputStruct pwmOutput = {1,0};
/* Speed of the motor. */
static uint32_t motorSpeed = 0;

static uint8_t smartMDCMode = MODE_STREAMING;

/*
 * ADC streaming callback for A and D channels.
 */
static void adccallbackAD(ADCDriver *adcp, adcsample_t *buffer, size_t n) {
  (void)adcp;
  (void)n;
  bufferAD = buffer;
}

/*
 * ADC streaming callback for C and B channels.
 */
static void adccallbackCB(ADCDriver *adcp, adcsample_t *buffer, size_t n) {
  (void)adcp;
  (void)n;
  bufferCB = buffer;

  /* Change state of the synchronizing semaphore. */
  chBSemSignalI(&bsemADCReady);
}

/*
 * ADC1_2 conversion group.
 * Mode:      Continuous, 256 samples of 2 channels, SW or HW triggered,
              72 000 000 / (601.5 + 12.5) = 117 264 sps (50 kHz bw).
 * Channels:  ADC1_CH1-(A), ADC2_CH3-(D).
 */
static ADCConversionGroup adcgrpcfg1 = {
  TRUE,                                     /* Circular */
  ADC_GRP1_NUM_CHANNELS,
  adccallbackAD,
  NULL,
#if defined(USE_ADC_HW_TRG)
  ADC_CFGR_CONT |                           /* CFGR     */
  ADC_CFGR_EXTEN_RISING |
  ADC_CFGR_EXTSEL_SRC(11),                  // TIM2_TRGO event.
//ADC_CFGR_EXTSEL_SRC(8),                   // TIM8_TRGO2 event.
#else
  ADC_CFGR_CONT,                            /* CFGR     */
#endif
  ADC_TR(0, 4095),                          /* TR1      */
  ADC_CCR_DUAL(1),                          /* CCR      */
  {                                         /* SMPR[2]  */
    ADC_SMPR1_SMP_AN1(ADC_SMPR_SMP_601P5),
    0,
  },
  {                                         /* SQR[4]   */
    ADC_SQR1_SQ1_N(ADC_CHANNEL_IN1),
    0,
    0,
    0
  },
  {                                         /* SSMPR[2] */
    ADC_SMPR1_SMP_AN3(ADC_SMPR_SMP_601P5),
    0,
  },
  {                                         /* SSQR[4]  */
    ADC_SQR1_SQ1_N(ADC_CHANNEL_IN3),
    0,
    0,
    0
  }
};

/*
 * ADC3_4 conversion group.
 * Mode:      Continuous, 256 samples of 2 channels, SW or HW triggered,
              72 000 000 / (601.5 + 12.5) = 117 264 sps (50 kHz bw).
 * Channels:  ADC3_CH5-(C), ADC4_CH4-(B).
 */
static ADCConversionGroup adcgrpcfg2 = {
  TRUE,                                     /* Circular */
  ADC_GRP2_NUM_CHANNELS,
  adccallbackCB,
  NULL,
#if defined(USE_ADC_HW_TRG)
  ADC_CFGR_CONT |                           /* CFGR     */
  ADC_CFGR_EXTEN_RISING |
  ADC_CFGR_EXTSEL_SRC(7),                   // TIM2_TRGO event.
//ADC_CFGR_EXTSEL_SRC(8),                   // TIM8_TRGO2 event.
#else
  ADC_CFGR_CONT,                            /* CFGR     */
#endif
  ADC_TR(0, 4095),                          /* TR1      */
  ADC_CCR_DUAL(1),                          /* CCR      */
  {                                         /* SMPR[2]  */
    ADC_SMPR1_SMP_AN5(ADC_SMPR_SMP_601P5),
    0,
  },
  {                                         /* SQR[4]   */
    ADC_SQR1_SQ1_N(ADC_CHANNEL_IN5),
    0,
    0,
    0
  },
  {                                         /* SSMPR[2] */
    ADC_SMPR1_SMP_AN4(ADC_SMPR_SMP_601P5),
    0,
  },
  {                                         /* SSQR[4]  */
    ADC_SQR1_SQ1_N(ADC_CHANNEL_IN4),
    0,
    0,
    0
  }
};

/*
 * ICU period callback.
 */
static void icuperiodcb(ICUDriver *icup) {
  periodLast = icuGetPeriodX(icup) % ADC_BUF_DEPTH;
  fPeriodMeasured = TRUE;
  palTogglePad(GPIOB, GPIOB_LED_B);
}

/*
 * ICU configuration.
 */
static const ICUConfig icucfg = {
  ICU_INPUT_ACTIVE_HIGH,    /* Trigger on rising edge.                */
  117263,                   /* 117 263 Hz ICU clock frequency.        */
  NULL,                     /* Callback for pulse width measurement.  */
  icuperiodcb,              /* Callback for cycle period measurement. */
  NULL,                     /* Callback for timer overflow.           */
  ICU_CHANNEL_1,            /* Channel #.                             */
  0                         /* TIM DIER register.                     */
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
 * @brief   Reads a value directly from a DAC channel.
 *
 * @param[in] dacp      pointer to the @p DACDriver object
 * @param[in] channel   DAC channel number
 *
 * @param[out]          sample value read
 *
 * @notapi
 */
dacsample_t dac_lld_get_channel(DACDriver *dacp, dacchannel_t channel) {
  switch (dacp->config->datamode) {
  case DAC_DHRM_12BIT_RIGHT:
#if STM32_DAC_DUAL_MODE
  case DAC_DHRM_12BIT_RIGHT_DUAL:
#endif
    if (channel == 0U) {
      return (dacp->params->dac->DHR12R1);
    } else {
      return (dacp->params->dac->DHR12R2);
    }
  case DAC_DHRM_12BIT_LEFT:
#if STM32_DAC_DUAL_MODE
  case DAC_DHRM_12BIT_LEFT_DUAL:
#endif
    if (channel == 0U) {
      return (dacp->params->dac->DHR12L1);
    } else {
      return (dacp->params->dac->DHR12L2);
    }
  case DAC_DHRM_8BIT_RIGHT:
#if STM32_DAC_DUAL_MODE
  case DAC_DHRM_8BIT_RIGHT_DUAL:
#endif
    if (channel == 0U) {
      return (dacp->params->dac->DHR8R1);
    } else {
      return (dacp->params->dac->DHR8R2);
    }
  default:
    osalDbgAssert(false, "unexpected DAC mode");
    return 0;
  }
}

/**
 *
 */
static void pidApply(PIDCtrl *pidc, int16_t pv, int16_t sp) {
  int16_t err;

  /* Calculate process error. */
  if (fPIDInvertErr) {
    err = pv - sp;
  } else {
    err = sp - pv;
  }
  /* If there is a distance to move then move in small steps. */
  float32_t step = CONSTRAIN(err * pidc->pid.I, STEP_LIMIT_MIN, STEP_LIMIT_MAX);
  /* Calculate speed of the actuator. */
  int16_t speed = err - pidc->prevErr;
  /* Update step proportional to the speed. */
  step += speed * pidc->pid.P;
  /* Account for the acceleration. */
  step += (speed - pidc->prevSpeed) * pidc->pid.D;
  /* Calculate new position. */
  int16_t pos = CONSTRAIN(pidc->prevPos + (int16_t)step, ZPOS_LIMIT_MIN, ZPOS_LIMIT_MAX);
  /* Update PID structure. */
  pidc->prevErr   = err;
  pidc->prevSpeed = speed;
  pidc->prevPos   = pos;
  /* Update actuator. */
  ad5504SetData(pos);
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
  int32_t tmpAD1, tmpAD2;
  int32_t tmpCB1, tmpCB2;
  int32_t tmpRes1, tmpRes2, tmpRes3, tmpRes4;
#else
  adcsample_t tmpA, tmpD, tmpC, tmpB;
  uint16_t sumAD, sumCB;
  int16_t diffAD, diffCB;
#endif /* ARM_MATH_CM4 */

  for (n = 0; n < ADC_BUF_DEPTH; n++) {
#if defined(ARM_MATH_CM4)
    tmpAD1 = *__SIMD32(bufferAD)++;       /* [D,A] */
    tmpAD2 = tmpAD1;
    tmpCB1 = *__SIMD32(bufferCB)++;       /* [B,C] */
    tmpCB2 = tmpCB1;

    tmpRes1 = __SASX(tmpAD1, tmpAD2);     /* [D+A,A-D] */
    tmpRes2 = __SASX(tmpCB1, tmpCB2);     /* [B+C,C-B] */
    tmpRes3 = __SADD16(tmpRes1, tmpRes2); /* [(D+A)+(B+C),(A-D)+(C-B)] */
    tmpRes4 = __SSUB16(tmpRes2, tmpRes1); /* [(B+C)-(D+A),(C+D)-(A+B)] */

    fe = (tmpRes3 << 16) >> 16;
    sum = (tmpRes3 >> 16);
    ce = (tmpRes4 >> 16);
#else
    tmpA = *bufferAD++;
    tmpD = *bufferAD++;
    sumAD = tmpA + tmpD;
    diffAD = tmpA - tmpD;

    tmpC = *bufferCB++;
    tmpB = *bufferCB++;
    sumCB = tmpC + tmpB;
    diffCB = tmpC - tmpB;

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
  adcStopConversion(&ADCD3);
  osalSysUnlock();

  switch (smartMDCMode) {
  case MODE_SCANNING:
    fSkipNextPeriodEvent = TRUE;
    /* Reconfigure hardware triggering to TIM8_TRGO2. */
    adcgrpcfg1.cfgr = ADC_CFGR_CONT | ADC_CFGR_EXTEN_RISING | ADC_CFGR_EXTSEL_SRC(8);
    adcgrpcfg2.cfgr = ADC_CFGR_CONT | ADC_CFGR_EXTEN_RISING | ADC_CFGR_EXTSEL_SRC(8);
    break;
  default: // MODE_STREAMING
    fSkipNextPeriodEvent = FALSE;
    /* Reconfigure hardware triggering to TIM2_TRGO. */
    adcgrpcfg1.cfgr = ADC_CFGR_CONT | ADC_CFGR_EXTEN_RISING | ADC_CFGR_EXTSEL_SRC(11);
    adcgrpcfg2.cfgr = ADC_CFGR_CONT | ADC_CFGR_EXTEN_RISING | ADC_CFGR_EXTSEL_SRC(7);

    gptStartOneShot(&GPTD2, ADC_GPT_START_TIMEOUT_MS);
  }
  /* Starts an ADC continuous conversion.
   * If software trigger is enabled conversion starts immediately.
   * If hardware trigger is enabled ADC waits until hardware trigger event occurs.
   */
  osalSysLock();
  adcStartConversion(&ADCD1, &adcgrpcfg1, samplesAD, ADC_GRP1_BUF_DEPTH);
  adcStartConversion(&ADCD3, &adcgrpcfg2, samplesCB, ADC_GRP2_BUF_DEPTH);
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
      dacPutChannelX(&DACD1, DAC_CHANNEL_FOC, utmp16);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'B': /* Updates position of the RAD actuator (0x42 hex; 66 dec). */
    if (msgUSB.data_size == sizeof(utmp16)) {
      chnRead(pChnUSB, (uint8_t *)&utmp16, msgUSB.data_size);
      utmp16 &= 0x0FFF; /* Limit to 12 bits right alligned. */
      dacPutChannelX(&DACD2, DAC_CHANNEL_RAD, utmp16);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'C': /* Updates position of the FBK actuator (0x43 hex; 67 dec). */
    if (msgUSB.data_size == sizeof(utmp16)) {
      chnRead(pChnUSB, (uint8_t *)&utmp16, msgUSB.data_size);
      if (!fPIDEnabled) {
        utmp16 &= 0x0FFF; /* Limit to 12 bits right alligned. */
        ad5504SetData(utmp16);
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
        pidc.prevPos = ad5504GetData();
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
      msgCOM.msg_id = 'A';
      msgCOM.data_size = sizeof(pwmOutput);
      chnWrite(pChnCOM, (const uint8_t *)&msgCOM, TELEMETRY_MSG_COM_HDR_SIZE);
      chnWrite(pChnCOM, (const uint8_t *)&pwmOutput, msgCOM.data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'P': /* Update motor driving speed. */
    if (msgUSB.data_size == sizeof(motorSpeed)) {
      chnRead(pChnUSB, (uint8_t *)&motorSpeed, msgUSB.data_size);
      /* Forwarding message to the VauDUO motor driver board. */
      msgCOM.msg_id = 'B';
      msgCOM.data_size = sizeof(motorSpeed);
      chnWrite(pChnCOM, (const uint8_t *)&msgCOM, TELEMETRY_MSG_COM_HDR_SIZE);
      chnWrite(pChnCOM, (const uint8_t *)&motorSpeed, msgCOM.data_size);
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
      utmp16 = (uint16_t)dac_lld_get_channel(&DACD1, DAC_CHANNEL_FOC);
      chnWrite(pChnUSB, (const uint8_t *)&msgUSB, TELEMETRY_MSG_USB_HDR_SIZE);
      chnWrite(pChnUSB, (const uint8_t *)&utmp16, msgUSB.data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'b': /* Sends value of the RAD actuator (0x62 hex; 98 dec). */
    if (msgUSB.data_size == 0) {
      msgUSB.data_size = sizeof(utmp16);
      utmp16 = (uint16_t)dac_lld_get_channel(&DACD2, DAC_CHANNEL_RAD);
      chnWrite(pChnUSB, (const uint8_t *)&msgUSB, TELEMETRY_MSG_USB_HDR_SIZE);
      chnWrite(pChnUSB, (const uint8_t *)&utmp16, msgUSB.data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'c': /* Sends value of the FBK actuator (0x63 hex; 99 dec). */
    if (msgUSB.data_size == 0) {
      msgUSB.data_size = sizeof(utmp16);
      utmp16 = ad5504GetData();
      chnWrite(pChnUSB, (const uint8_t *)&msgUSB, TELEMETRY_MSG_USB_HDR_SIZE);
      chnWrite(pChnUSB, (const uint8_t *)&utmp16, msgUSB.data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'o': /* Sends a PWM settings request of the motor to the VauDUO board. */
    if (msgUSB.data_size == 0) {
      /* Forwarding message to the VauDUO motor driver board. */
      msgCOM.msg_id = 'a';
      msgCOM.data_size = 0;
      chnWrite(pChnCOM, (const uint8_t *)&msgCOM, TELEMETRY_MSG_COM_HDR_SIZE);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'p': /* Sends a speed request of the motor to the VauDUO board. */
     if (msgUSB.data_size == 0) {
      /* Forwarding message to the VauDUO motor driver board. */
      msgCOM.msg_id = 'b';
      msgCOM.data_size = 0;
      chnWrite(pChnCOM, (const uint8_t *)&msgCOM, TELEMETRY_MSG_COM_HDR_SIZE);
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

/**
 * @brief  Gets command from USART1 Serial port.
 * @return TRUE  - if whole command is in the buffer.
 *         FALSE - if buffer is empty or command is not yet complete.
 */
static bool commandGetCOM(void) {
  static bool fContinue = FALSE;
  static uint_fast8_t waitCnt;
  size_t numBytes;

  osalSysLock();
  /* Get number of bytes in the input queue. */
  numBytes = qSpaceI(&((SerialDriver *)pChnCOM)->iqueue);
  osalSysUnlock();

  if (fContinue) {
    if (numBytes >= (size_t)msgCOM.data_size) {
      fContinue = FALSE;
      /* Whole message is in the buffer. */
      return TRUE;
    } else if (++waitCnt > 2) {
      fContinue = FALSE;
      /* Message is still not complete. Something wrong with communication?!.
       * Drop the message, clear the input queue and start all over again.
       */
      osalSysLock();
      iqResetI(&((SerialDriver *)pChnCOM)->iqueue);
      osalSysUnlock();
    }
  } else if (numBytes >= TELEMETRY_MSG_COM_HDR_SIZE) {
    /* Get new message header. */
    chnRead(pChnCOM, (uint8_t *)&msgCOM, TELEMETRY_MSG_COM_HDR_SIZE);
    /* Check if message header is not corrupted. */
    if (msgCOM.data_size <= 32) {
      if (numBytes >= (size_t)(msgCOM.data_size + TELEMETRY_MSG_COM_HDR_SIZE)) {
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
      iqResetI(&((SerialDriver *)pChnCOM)->iqueue);
      osalSysUnlock();
    }
  }

  return FALSE;
}

/**
 *
 */
static void commandProcessCOM(void)
{
  bool fIQReset = FALSE;

  switch (msgCOM.msg_id) {
  /**
   * T R A N S M I T T E R   S E C T I O N
   */
  case 'a': /* Sends PWM Output configuration structure of MOT1 (0x61 hex; 97 dec). */
    if (msgCOM.data_size == sizeof(pwmOutput)) {
      chnRead(pChnCOM, (uint8_t *)&pwmOutput, msgCOM.data_size);
      /* Forwarding message to the PC. */
      msgUSB.msg_id    = 'o';
      msgUSB.signature = TELEMETRY_MSG_USB_SIGNATURE;
      msgUSB.data_size = sizeof(pwmOutput);
      chnWrite(pChnUSB, (const uint8_t *)&msgUSB, TELEMETRY_MSG_USB_HDR_SIZE);
      chnWrite(pChnUSB, (const uint8_t *)&pwmOutput, msgUSB.data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  case 'b': /* Sends current speed value of the MOT1/PITCH motor (0x62 hex; 98 dec). */
    if (msgCOM.data_size == sizeof(motorSpeed)) {
      chnRead(pChnCOM, (uint8_t *)&motorSpeed, msgCOM.data_size);
      /* Forwarding message to the PC. */
      msgUSB.msg_id    = 'p';
      msgUSB.signature = TELEMETRY_MSG_USB_SIGNATURE;
      msgUSB.data_size = sizeof(motorSpeed);
      chnWrite(pChnUSB, (const uint8_t *)&msgUSB, TELEMETRY_MSG_USB_HDR_SIZE);
      chnWrite(pChnUSB, (const uint8_t *)&motorSpeed, msgUSB.data_size);
    } else {
      fIQReset = TRUE;
    }
    break;
  default: fIQReset = TRUE; /* Unknown message. */
  }

  /* Reset the input queue if an error occured. */
  if (fIQReset) {
    osalSysLock();
    iqResetI(&((SerialDriver *)pChnCOM)->iqueue);
    osalSysUnlock();
  }
}

/*
 * Application entry point (normal priority).
 */
int main(void) {
  uint_fast8_t loopDiv = 1;
  uint16_t periodTemp;
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

  /* Activates the USB driver and then the USB bus pull-up on D+.
   * Note, a delay is inserted in order to not have to disconnect the cable
   * after a reset.
   */
  usbDisconnectBus(serusbcfg.usbp);
  chThdSleepMilliseconds(500);
  usbStart(serusbcfg.usbp, &usbcfg);
  usbConnectBus(serusbcfg.usbp);

  /* Activates the Serial Port 1  driver using the driver's default configuration. */
  sdStart(&SD1, NULL);

  /* Starts DAC1 driver channel #1 and channel #2. */
  dacStart(&DACD1, &dac1cfg1);
  dacStart(&DACD2, &dac1cfg2);

  /* Activates the ADC1 driver and the ADC3 driver. */
  adcStart(&ADCD1, NULL);
  adcStart(&ADCD3, NULL);

  /* Activates the SPI1 driver. */
  spiStart(&SPID1, &spicfg1);

  /* Initializes the AD5504 high voltage DAC. */
  ad5504Init();

  /* Initializes the input capture unit of TIM8. */
  icuStart(&ICUD8, &icucfg);
  ICUD8.tim->CR2 = STM32_TIM_CR2_MMS2(3); /* The trigger output sends a positive pulse
                                           * when the CC1IF flag is to be set, as soon
                                           * as a capture or compare match occurs (TRGO2).
                                           */
  icuStartCapture(&ICUD8);
  icuEnableNotifications(&ICUD8);

#if defined(USE_ADC_HW_TRG)
  /* Starts GPT2 driver, it is used for triggering the ADC. */
  gptStart(&GPTD2, &gpt2cfg1);
#endif /* USE_ADC_HW_TRG */

  /* Creates the blinker thread. */
  pThdBlinker = chThdCreateStatic(waBlinker, sizeof(waBlinker),
    LOWPRIO, Blinker, NULL);

  /* Starts an ADC continuous conversion.
   * If software trigger is enabled conversion starts immediately.
   * If hardware trigger is enabled ADC waits until hardware trigger event occurs.
   */
  //adcStartConversion(&ADCD1, &adcgrpcfg1, samplesAD, ADC_GRP1_BUF_DEPTH);
  //adcStartConversion(&ADCD3, &adcgrpcfg2, samplesCB, ADC_GRP2_BUF_DEPTH);
#if defined(USE_ADC_HW_TRG)
  //gptStartOneShot(&GPTD2, ADC_GPT_START_TIMEOUT_MS);
#endif /* USE_ADC_HW_TRG */

  pChnCOM = (BaseChannel *)(&SD1);

  /* Normal main() thread activity. */
  while (fRunMain) {
    /* If ADC_BUF_DEPTH = 256 and sampling rate is 117 264 sps
     * the invoking rate of the thread is ~458 Hz.
     */
    if (chBSemWaitTimeout(&bsemADCReady, MS2ST(ADC_WAIT_TIMEOUT_MS)) == MSG_OK) {
      adcProcessData();

      /* Check if USB is connected and configured. */
      pChnUSB = serusbcfg.usbp->state == USB_ACTIVE ? (BaseChannel *)&SDU1 : NULL;

      if (pChnUSB) {
        if (streamingCnt) {
          if (smartMDCMode && fPeriodMeasured) {
            osalSysLock();
            fPeriodMeasured = FALSE;
            periodTemp = periodLast;
            osalSysUnlock();

            if (fSkipNextPeriodEvent) {
              fSkipNextPeriodEvent = FALSE;
              /* Send message header and data. */
              msgUSB.msg_id    = 's';
              msgUSB.data_size = ADC_BUF_DEPTH * sizeof(uint16_t);

              chnWrite(pChnUSB, (const uint8_t *)&msgUSB, TELEMETRY_MSG_USB_HDR_SIZE);
              chnWrite(pChnUSB, (const uint8_t *)streamingBuf, msgUSB.data_size);
            } else {
              if (periodTemp) {
                /* Finish sending old stream data if any. */
                msgUSB.msg_id    = 's';
                msgUSB.data_size = periodTemp * sizeof(uint16_t);

                chnWrite(pChnUSB, (const uint8_t *)&msgUSB, TELEMETRY_MSG_USB_HDR_SIZE);
                chnWrite(pChnUSB, (const uint8_t *)streamingBuf, msgUSB.data_size);
              }

              /* Send New Period separator. */
              msgUSB.msg_id    = '.';
              msgUSB.data_size = 0;
              chnWrite(pChnUSB, (const uint8_t *)&msgUSB, TELEMETRY_MSG_USB_HDR_SIZE);

              /* Start a new stream. */
              msgUSB.msg_id    = 's';
              msgUSB.data_size = (ADC_BUF_DEPTH - periodTemp) * sizeof(uint16_t);

              chnWrite(pChnUSB, (const uint8_t *)&msgUSB, TELEMETRY_MSG_USB_HDR_SIZE);
              chnWrite(pChnUSB, (const uint8_t *)&streamingBuf[periodTemp], msgUSB.data_size);
            }
          } else {
            /* Send message header and data. */
            msgUSB.msg_id    = 's';
            msgUSB.data_size = ADC_BUF_DEPTH * sizeof(uint16_t);

            chnWrite(pChnUSB, (const uint8_t *)&msgUSB, TELEMETRY_MSG_USB_HDR_SIZE);
            chnWrite(pChnUSB, (const uint8_t *)streamingBuf, msgUSB.data_size);
          }
          streamingCnt--; /* Decrease streaming counter. */
        }

        /* Run command processor @ ~92 Hz speed. */
        if (loopDiv++ > (TELEMETRY_LOOP_DIV - 1)) {
          if (commandGetUSB()) {
            commandProcessUSB();
          }

          if (commandGetCOM()) {
            commandProcessCOM();
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

        if (commandGetCOM()) {
          commandProcessCOM();
        }

        loopDiv = 1;
      }
    }
  }

  /* Starting the shut-down sequence.*/
  adcStopConversion(&ADCD1);          /* Stopping ADC1_2 conversions.             */
  adcStopConversion(&ADCD3);          /* Stopping ADC3_4 conversions.             */

  if (pThdBlinker != NULL) {
    chThdTerminate(pThdBlinker);      /* Requesting termination.                  */
    chThdWait(pThdBlinker);           /* Waiting for the actual termination.      */
  }

  icuDisableNotifications(&ICUD8);
  icuStopCapture(&ICUD8);
  icuStop(&ICUD8);                    /* Stopping ICU TIM8_CH1 device.            */
#if defined(USE_ADC_HW_TRG)
  gptStop(&GPTD2);                    /* Stopping GPT TIM2 device.                */
#endif /* USE_ADC_HW_TRG */
  adcStop(&ADCD1);                    /* Stopping ADC1_2 device.                  */
  adcStop(&ADCD3);                    /* Stopping ADC3_4 device.                  */
  ad5504Stop();                       /* Powering down AD5504 high voltage DAC.   */
  dacStop(&DACD1);                    /* Stopping DAC1 device.                    */
  dacStop(&DACD2);                    /* Stopping DAC2 device.                    */
  spiStop(&SPID1);                    /* Stopping SPI1 device.                    */
  sdStop(&SD1);                       /* Stopping Serial Port 1.                  */
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
