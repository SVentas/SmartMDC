/*
    EvvGC-PLUS - Copyright (C) 2013-2015 Sarunas Vaitekonis

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

#include <string.h>

/**
 * PWM value for the 50 percent of the total power, given:
 * - PWM clock frequency = 72 MHz;
 * - PWM period = 1/18000 s;
 */
#define PWM_OUT_POWER_50PCT     0x000003E8
/**
 * PWM value for the half percent of the total power, given:
 * - PWM clock frequency = 72 MHz;
 * - PWM period = 1/18000 s;
 */
#define PWM_OUT_POWER_1PCT2     0x000A

/**
 * Separation angle between phases.
 */
#ifndef M_2PI_3
#define M_2PI_3                 0x0002182A  // (2 * PI / 3) in fix16 format;
#endif

/**
 * Amplitude scaling factor for third harmonic injection PWM.
 */
#define THI_PWM_K               0x0001279A  // (2 / sqrt(3)) in fix16 format;

/**
 * M A C R O S
 */
#define ROUNDED_DATA_U8(val32)  ((uint8_t)(((val32)+0x00008000U)>>16))

/**
 * Default settings for PWM outputs.
 */
PWMOutputStruct g_pwmOutput[2] = {
  {50,                     /* Motor power;       */
   0},                     /* Flags;             */
  {50,                     /* Motor power;       */
   0}                      /* Flags;             */
};

/**
 * PWM configuration structure for TIM2 output.
 */
static const PWMConfig pwmcfg_d2 = {
  72000000, /* PWM clock frequency (72 MHz). */
  2000,     /* PWM period (1/18000 s) in ticks
               for center-aligned mode.      */
  NULL,     /* Callback disabled.            */
  {         /* PWM channel configuration:    */
    {PWM_OUTPUT_ACTIVE_LOW, NULL},  /* CH1 */
    {PWM_OUTPUT_ACTIVE_LOW, NULL},  /* CH2 */
    {PWM_OUTPUT_ACTIVE_LOW, NULL},  /* CH3 */
    {PWM_OUTPUT_DISABLED,   NULL}   /* CH4 */
  },
  0, /* CR2 register value. */
#if STM32_PWM_USE_ADVANCED
  0, /* BDTR register value. Not used for TIM4. */
#endif
  0  /* DIER register value. */
};

/**
 * PWM configuration structure for TIM4 output.
 */
static const PWMConfig pwmcfg_d4 = {
  72000000, /* PWM clock frequency (72 MHz). */
  2000,     /* PWM period (1/18000 s) in ticks
               for center-aligned mode.      */
  NULL,     /* Callback disabled.            */
  {         /* PWM channel configuration:    */
    {PWM_OUTPUT_DISABLED,   NULL},  /* CH1 */
    {PWM_OUTPUT_ACTIVE_LOW, NULL},  /* CH2 */
    {PWM_OUTPUT_ACTIVE_LOW, NULL},  /* CH3 */
    {PWM_OUTPUT_ACTIVE_LOW, NULL}   /* CH4 */
  },
  0, /* CR2 register value. */
#if STM32_PWM_USE_ADVANCED
  0, /* BDTR register value. Not used for TIM4. */
#endif
  0  /* DIER register value. */
};

/**
 * Local PWM output values for three phase BLDC motor driver.
 */
static int32_t pwm3PhaseDrv[3];

/**
 * Actual filtered motor power.
 */
static uint32_t pwmPower[2] = {0U,0U};

/**
 * @brief  Disables PWM on pitch driver.
 * @return none.
 */
static void pwmOutputDisablePitch(void) {
  /* Disable update event. */
  PWMD4.tim->CR1 |= STM32_TIM_CR1_UDIS;
  memset((void *)PWMD4.tim->CCR, 0, sizeof(uint32_t) * 4);
  /* Enable update event. */
  PWMD4.tim->CR1 &= ~STM32_TIM_CR1_UDIS;
}

/**
 * @brief  Disables PWM on roll driver.
 * @return none.
 */
static void pwmOutputDisableRoll(void) {
  /* Disable update event. */
  PWMD2.tim->CR1 |= STM32_TIM_CR1_UDIS;
  memset((void *)PWMD2.tim->CCR, 0, sizeof(uint32_t) * 4);
  /* Enable update event. */
  PWMD2.tim->CR1 &= ~STM32_TIM_CR1_UDIS;
}

/**
 * @brief
 * @return none.
 */
static void pwmOutputCmdTo3PhasePWM(fix16_t cmd, uint8_t power, uint8_t thi) {
  fix16_t halfPower = fix16_from_int(power*PWM_OUT_POWER_1PCT2);
  fix16_t tmp;
  if (thi) {
    halfPower = fix16_mul(halfPower, THI_PWM_K);
    /* Calculate third harmonic. */
    fix16_t thirdHarmonic = fix16_mul(cmd, fix16_three);
    if (thirdHarmonic < -fix16_pi) {
      do {
        thirdHarmonic = fix16_add(thirdHarmonic, fix16_two_pi);
      } while (thirdHarmonic < -fix16_pi);
    } else if (thirdHarmonic > fix16_pi) {
      do {
        thirdHarmonic = fix16_sub(thirdHarmonic, fix16_two_pi);
      } while (thirdHarmonic > fix16_pi);
    }
    thirdHarmonic = fix16_sin(thirdHarmonic);
    thirdHarmonic = fix16_div(thirdHarmonic, fix16_from_int(6));
    /* Calculate PWM for three phases. */
    tmp = fix16_sin(cmd);
    tmp = fix16_add(tmp, thirdHarmonic);
    tmp = fix16_mul(tmp, halfPower);
    pwm3PhaseDrv[0] = PWM_OUT_POWER_50PCT + fix16_to_int(tmp);
    tmp = fix16_sin(fix16_add(cmd, M_2PI_3));
    tmp = fix16_add(tmp, thirdHarmonic);
    tmp = fix16_mul(tmp, halfPower);
    pwm3PhaseDrv[1] = PWM_OUT_POWER_50PCT + fix16_to_int(tmp);
    tmp = fix16_sin(fix16_sub(cmd, M_2PI_3));
    tmp = fix16_add(tmp, thirdHarmonic);
    tmp = fix16_mul(tmp, halfPower);
    pwm3PhaseDrv[2] = PWM_OUT_POWER_50PCT + fix16_to_int(tmp);
  } else {
    /* Calculate PWM for three phases. */
    tmp = fix16_sin(cmd);
    tmp = fix16_mul(tmp, halfPower);
    pwm3PhaseDrv[0] = PWM_OUT_POWER_50PCT + fix16_to_int(tmp);
    tmp = fix16_sin(fix16_add(cmd, M_2PI_3));
    tmp = fix16_mul(tmp, halfPower);
    pwm3PhaseDrv[1] = PWM_OUT_POWER_50PCT + fix16_to_int(tmp);
    tmp = fix16_sin(fix16_sub(cmd, M_2PI_3));
    tmp = fix16_mul(tmp, halfPower);
    pwm3PhaseDrv[2] = PWM_OUT_POWER_50PCT + fix16_to_int(tmp);
  }
}

/**
 *
 */
static void pwmOutputUpdatePitch(void) {
  /* Disable update event. */
  PWMD4.tim->CR1 |= STM32_TIM_CR1_UDIS;
  if (g_pwmOutput[PWM_OUT_PITCH].flags & PWM_OUT_FLAG_REVERSE) {
    PWMD4.tim->CCR[1] = pwm3PhaseDrv[1];
    PWMD4.tim->CCR[2] = pwm3PhaseDrv[0];
  } else {
    PWMD4.tim->CCR[1] = pwm3PhaseDrv[0];
    PWMD4.tim->CCR[2] = pwm3PhaseDrv[1];
  }
  PWMD4.tim->CCR[3] = pwm3PhaseDrv[2];
  /* Enable update event. */
  PWMD4.tim->CR1 &= ~STM32_TIM_CR1_UDIS;
}

/**
 *
 */
static void pwmOutputUpdateRoll(void) {
  /* Disable update event. */
  PWMD2.tim->CR1 |= STM32_TIM_CR1_UDIS;
  if (g_pwmOutput[PWM_OUT_ROLL].flags & PWM_OUT_FLAG_REVERSE) {
    PWMD2.tim->CCR[0] = pwm3PhaseDrv[1];
    PWMD2.tim->CCR[1] = pwm3PhaseDrv[0];
  } else {
    PWMD2.tim->CCR[0] = pwm3PhaseDrv[0];
    PWMD2.tim->CCR[1] = pwm3PhaseDrv[1];
  }
  PWMD2.tim->CCR[2] = pwm3PhaseDrv[2];
  /* Enable update event. */
  PWMD2.tim->CR1 &= ~STM32_TIM_CR1_UDIS;
}

/**
 * @brief  Disables all PWM output channels.
 * @return none.
 */
void pwmOutputDisableAll(void) {
  pwmOutputDisablePitch();
  pwmOutputDisableRoll();
}

/**
 * @brief  Starts the PWM output.
 * @note   The pwmStart() function used in this code is not
 *         the original ChibiOS HAL function, but modified
 *         one with STM32_TIM_CR1_CEN flag removed.
 * @return none.
 */
void pwmOutputStart(void) {
  pwmStart(&PWMD4, &pwmcfg_d4);
  pwmStart(&PWMD2, &pwmcfg_d2);

  /* Switch to center-aligned mode 1 and start timers. */
  PWMD4.tim->CR1 |= (STM32_TIM_CR1_CMS(1) | STM32_TIM_CR1_CEN);
  PWMD2.tim->CR1 |= (STM32_TIM_CR1_CMS(1) | STM32_TIM_CR1_CEN);

  palSetPad(GPIOB, GPIOB_DRV_EN);
}

/**
 * @brief  Stops the PWM output.
 * @return none.
 */
void pwmOutputStop(void) {
  pwmOutputDisableAll();
  palClearPad(GPIOB, GPIOB_DRV_EN);
  pwmStop(&PWMD2);
  pwmStop(&PWMD4);
}

/**
 * @brief  Updates specified PWM output channel driver state
 *         according to the given command.
 * @param  channel_id - PWM output channel ID.
 * @param  cmd - new command to the motor driver.
 * @return none.
 */
void pwmOutputUpdate(const uint8_t channel_id, fix16_t cmd) {
  switch (channel_id) {
  case PWM_OUT_PITCH:
    if (g_pwmOutput[PWM_OUT_PITCH].flags & PWM_OUT_FLAG_DISABLED) {
      pwmOutputDisablePitch();
      pwmPower[PWM_OUT_PITCH] = 0U;
    } else {
      pwmPower[PWM_OUT_PITCH] = (pwmPower[PWM_OUT_PITCH] * 511 +
        (g_pwmOutput[PWM_OUT_PITCH].power << 16)) / 512;
      pwmOutputCmdTo3PhasePWM(cmd, ROUNDED_DATA_U8(pwmPower[PWM_OUT_PITCH]),
        g_pwmOutput[PWM_OUT_PITCH].flags & PWM_OUT_FLAG_USE_THI);
      pwmOutputUpdatePitch();
    }
    break;
  case PWM_OUT_ROLL:
    if (g_pwmOutput[PWM_OUT_ROLL].flags & PWM_OUT_FLAG_DISABLED) {
      pwmOutputDisableRoll();
      pwmPower[PWM_OUT_ROLL] = 0U;
    } else {
      pwmPower[PWM_OUT_ROLL] = (pwmPower[PWM_OUT_ROLL] * 511 +
        (g_pwmOutput[PWM_OUT_ROLL].power << 16)) / 512;
      pwmOutputCmdTo3PhasePWM(cmd, ROUNDED_DATA_U8(pwmPower[PWM_OUT_ROLL]),
        g_pwmOutput[PWM_OUT_ROLL].flags & PWM_OUT_FLAG_USE_THI);
      pwmOutputUpdateRoll();
    }
    break;
  default:;
  }
}
