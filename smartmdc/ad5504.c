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

#define AD5504_BUF_SIZE             2
#define AD5504_READ_BIT             0x8000

/* AD5504 registers. */
#define AD5504_NOP                  0x0000
#define AD5504_DAC_A                0x1000
#define AD5504_DAC_B                0x2000
#define AD5504_DAC_C                0x3000
#define AD5504_DAC_D                0x4000
#define AD5504_DAC_ALL              0x5000
#define AD5504_CONTROL              0x7000

/* AD5504 CONTROL register bits. */
#define AD5504_CR_THERMAL_SHUTDOWN  0x0001
#define AD5504_CR_DAC_A_POWER_UP    0x0004
#define AD5504_CR_DAC_B_POWER_UP    0x0008
#define AD5504_CR_DAC_C_POWER_UP    0x0010
#define AD5504_CR_DAC_D_POWER_UP    0x0020
#define AD5504_CR_THREE_STATED      0x0040

/**
 * G L O B A L   V A R I A B L E S
 */

/**
 * L O C A L   V A R I A B L E S
 */
static uint16_t rxBuf[AD5504_BUF_SIZE];
static uint16_t txBuf[AD5504_BUF_SIZE];

/**
 *
 */
void ad5504Init(void) {
  /* Only DAC channel A is in the power up mode. */
  txBuf[0] = AD5504_CONTROL | AD5504_CR_DAC_A_POWER_UP;
  txBuf[1] = AD5504_DAC_A; /* Set DAC channel A to 0. */

  spiSelect(&SPID1);
  spiSend(&SPID1, 2 * sizeof(uint16_t), (uint8_t *)txBuf);
  spiUnselect(&SPID1);
}

/**
 *
 */
void ad5504Stop(void) {
  /* All DAC channels are in the power down mode. */
  txBuf[0] = AD5504_CONTROL;
  txBuf[1] = AD5504_DAC_A; /* Set DAC channel A to 0. */

  spiSelect(&SPID1);
  spiSend(&SPID1, 2 * sizeof(uint16_t), (uint8_t *)txBuf);
  spiUnselect(&SPID1);
}

/**
 *
 */
void ad5504SetData(uint16_t data) {
  txBuf[0] = AD5504_DAC_A | data;

  spiSelect(&SPID1);
  spiSend(&SPID1, sizeof(uint16_t), (uint8_t *)txBuf);
  spiUnselect(&SPID1);
}

/**
 *
 */
uint16_t ad5504GetData(void){
  txBuf[0] = AD5504_READ_BIT | AD5504_DAC_A;

  spiSelect(&SPID1);
  spiExchange(&SPID1, sizeof(uint16_t), (uint8_t *)txBuf, (uint8_t *)rxBuf);
  spiUnselect(&SPID1);
  return rxBuf[0];
}
