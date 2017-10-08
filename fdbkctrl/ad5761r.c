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

#include "ad5761r.h"

#define AD5761R_BUF_SIZE            3  /* 24-bit transfer */

/* AD5761R shift register commands. */
#define AD5761R_NOP                 0x00
#define AD5761R_WRITE_INPUT_REG     0x01
#define AD5761R_UPDATE_DAC_REG      0x02
#define AD5761R_WRITE_DAC_REG       0x03
#define AD5761R_WRITE_CTRL_REG      0x04
#define AD5761R_SW_DATA_RST         0x07
#define AD5761R_DDC_DISABLE         0x09
#define AD5761R_READ_INPUT_REG      0x0A
#define AD5761R_READ_DAC_REG        0x0B
#define AD5761R_READ_CTRL_REG       0x0C
#define AD5761R_SW_FULL_RST         0x0F

/* AD5761R CONTROL register bits. */
#define AD5761R_CRH_CV1             0x04
#define AD5761R_CRH_CV0             0x02
#define AD5761R_CRH_OVR             0x01

#define AD5761R_CRL_B2C             0x80
#define AD5761R_CRL_ETS             0x40
#define AD5761R_CRL_IRO             0x20
#define AD5761R_CRL_PV1             0x10
#define AD5761R_CRL_PV0             0x08
#define AD5761R_CRL_RA2             0x04
#define AD5761R_CRL_RA1             0x02
#define AD5761R_CRL_RA0             0x01

/* AD5761R DAISY-CHAIN FUNCTIONALITY bits. */
#define AD5761R_DDC                 0x01

/**
 * G L O B A L   V A R I A B L E S
 */

/**
 * L O C A L   V A R I A B L E S
 */
//static uint8_t rxBuf[AD5761R_BUF_SIZE];
static uint8_t txBuf[AD5761R_BUF_SIZE];
static uint16_t dataDAC = 0x0000;

/**
 *
 */
void ad5761rStart(void) {
  txBuf[0] = AD5761R_WRITE_CTRL_REG;
  txBuf[1] = 0x00;
  txBuf[2] = AD5761R_CRL_ETS | AD5761R_CRL_IRO | AD5761R_CRL_RA0;

  spiSelect(&SPID1);
  spiSend(&SPID1, sizeof(txBuf), (uint8_t *)txBuf);
  spiUnselect(&SPID1);
  
  /* Disable daisy-chain functionality */
  txBuf[0] = AD5761R_DDC_DISABLE;
  txBuf[1] = 0x00;
  txBuf[2] = AD5761R_DDC;

  spiSelect(&SPID1);
  spiSend(&SPID1, sizeof(txBuf), (uint8_t *)txBuf);
  spiUnselect(&SPID1);

  dataDAC = 0x0000;
}

/**
 *
 */
void ad5761rStop(void) {
  /* DAC behaves in a power-up state, where the output is
     clamped to AGND and the output buffer is powered down. */
  txBuf[0] = AD5761R_SW_FULL_RST;
  txBuf[1] = 0x00;
  txBuf[2] = 0x00;

  spiSelect(&SPID1);
  spiSend(&SPID1, sizeof(txBuf), (uint8_t *)txBuf);
  spiUnselect(&SPID1);

  dataDAC = 0x0000;
}

/**
 *
 */
void ad5761rSetData(uint16_t data) {
  txBuf[0] = AD5761R_UPDATE_DAC_REG;
  txBuf[1] = data >> 8;
  txBuf[2] = data & 0x00FF;

  spiSelect(&SPID1);
  spiSend(&SPID1, sizeof(txBuf), (uint8_t *)txBuf);
  spiUnselect(&SPID1);

  dataDAC = data;
}

/**
 *
 */
uint16_t ad5761rGetData(void){
  return dataDAC;
}
