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
#include "spiflash.h"

/* C libraries: */
#include <string.h>

/* The beginning of the SPI Flash. */
#define SPI_FLASH_START_ADDR     0x00000000

/* M25P SPI Flash supported commands. */
#define SPI_FLASH_CMD_WRSR       0x01  /* Write Status Register instruction */
#define SPI_FLASH_CMD_WRITE      0x02  /* Write to Memory instruction       */
#define SPI_FLASH_CMD_READ       0x03  /* Read from Memory instruction      */
#define SPI_FLASH_CMD_RDSR       0x05  /* Read Status Register instruction  */
#define SPI_FLASH_CMD_WREN       0x06  /* Write enable instruction          */
#define SPI_FLASH_CMD_RDID       0x9F  /* Read identification               */
#define SPI_FLASH_CMD_BE         0xC7  /* Bulk Erase instruction            */
#define SPI_FLASH_CMD_SE         0xD8  /* Sector Erase instruction          */

#define SPI_FLASH_WIP_FLAG       0x01  /* Write In Progress (WIP) flag      */

#define SPI_FLASH_DUMMY_BYTE     0xA5
#define SPI_FLASH_SPI_PAGESIZE   0x0100

#define SPI_FLASH_M25P16_ID      0x00202015

typedef struct tagSPIFlashDataStruct {
  PWMOutputStruct pwmOutput[2];     /*  4 bytes */
  uint32_t crc32;                   /*  4 bytes */
/* TOTAL:                               8 bytes */
} __attribute__((packed)) SPIFlashDataStruct, *PSPIFlashDataStruct;

uint8_t g_fSaveToFlash = FALSE;

static SPIFlashDataStruct flashData;

/**
 * @brief  Computes the 32-bit CRC of a given buffer of data word(32-bit).
 * @param  pBuf: pointer to the buffer containing the data to be computed
 * @param  length: length of the data buffer
 * @retval 32-bit CRC
 */
static uint32_t crcGetChecksum(const uint32_t pBuf[], uint32_t length) {
  uint32_t i;
  /* Resets CRC generator. */
  CRC->CR = CRC_CR_RESET;
  /* Calculates CRC32 checksum. */
  for(i = 0; i < length; i++) {
    CRC->DR = pBuf[i];
  }
  return CRC->DR;
}

/**
 * @brief  Loads all user defined settings from external SPI flash chip.
 * @return 1 - if write operation is successful;
 *         0 - if write operation fails.
 */
uint8_t flashLoadSettings(void) {
  uint8_t cmd[4];
  /* Prepare for slow READ DATA command: */
  cmd[0] = SPI_FLASH_CMD_READ;
  cmd[1] = (SPI_FLASH_START_ADDR >> 16) & 0xFF;
  cmd[2] = (SPI_FLASH_START_ADDR >>  8) & 0xFF;
  cmd[3] = (SPI_FLASH_START_ADDR      ) & 0xFF;

  spiSelect(&SPID2);
  spiSend(&SPID2, sizeof(cmd), cmd);
  spiReceive(&SPID2, sizeof(SPIFlashDataStruct), &flashData);
  spiUnselect(&SPID2);

  if (flashData.crc32 != crcGetChecksum((uint32_t *)&flashData, sizeof(flashData) / sizeof(uint32_t) - 1)) {
    /* Fill with default settings. */
    flashSaveSettings();
  } else {
    memcpy((void *)g_pwmOutput, (void *)flashData.pwmOutput, sizeof(g_pwmOutput));
  }
  return 1;
}

/**
 * @brief  Prepares external SPI flash chip to save all user defined settings.
 * @return 1 - if write operation is successful;
 *         0 - if write operation fails.
 */
uint8_t flashSaveSettings(void) {
  uint8_t cmd[4];

  memcpy((void *)flashData.pwmOutput, (void *)g_pwmOutput, sizeof(g_pwmOutput));
  flashData.crc32 = crcGetChecksum((uint32_t *)&flashData, sizeof(SPIFlashDataStruct) / sizeof(uint32_t) - 1);

  /* Prepare for WRITE ENABLE command: */
  cmd[0] = SPI_FLASH_CMD_WREN;

  spiSelect(&SPID2);
  spiSend(&SPID2, 1, cmd);
  spiUnselect(&SPID2);

  /* Prepare for SECTOR ERASE command: */
  cmd[0] = SPI_FLASH_CMD_SE;
  cmd[1] = (SPI_FLASH_START_ADDR >> 16) & 0xFF;
  cmd[2] = (SPI_FLASH_START_ADDR >>  8) & 0xFF;
  cmd[3] = (SPI_FLASH_START_ADDR      ) & 0xFF;

  spiSelect(&SPID2);
  spiSend(&SPID2, sizeof(cmd), cmd);
  spiUnselect(&SPID2);

  g_fSaveToFlash = TRUE;

  return 1;
}

/**
 * @brief  Saves all user defined settings to external SPI flash chip.
 * @return 1 - if write operation is successful;
 *         0 - if write operation fails.
 */
uint8_t flashWriteData(void) {
  uint8_t cmd[4];

  /* Prepare for WRITE ENABLE command: */
  cmd[0] = SPI_FLASH_CMD_WREN;

  spiSelect(&SPID2);
  spiSend(&SPID2, 1, cmd);
  spiUnselect(&SPID2);

  /* Prepare for PAGE PROGRAM command: */
  cmd[0] = SPI_FLASH_CMD_WRITE;
  cmd[1] = (SPI_FLASH_START_ADDR >> 16) & 0xFF;
  cmd[2] = (SPI_FLASH_START_ADDR >>  8) & 0xFF;
  cmd[3] = (SPI_FLASH_START_ADDR      ) & 0xFF;

  spiSelect(&SPID2);
  spiSend(&SPID2, sizeof(cmd), cmd);
  spiSend(&SPID2, sizeof(SPIFlashDataStruct), &flashData);
  spiUnselect(&SPID2);

  g_fSaveToFlash = FALSE;

  return 1;
}

/**
 * @brief  Checks if SPI flash is ready for the next command.
 * @return 1 - if SPI flash is ready;
 *         0 - if SPI flash is busy.
 */
uint8_t flashIsReady(void) {
  /* Read Status Register instruction */
  uint8_t cmd = SPI_FLASH_CMD_RDSR;
  /* Status Register value */
	uint8_t status;

  spiSelect(&SPID2);
  spiSend(&SPID2, sizeof(cmd), &cmd);
  spiReceive(&SPID2, sizeof(status), &status);
  spiUnselect(&SPID2);

  /* Check if Write In Progress flag is set: */
  return ((status & SPI_FLASH_WIP_FLAG) == 0);
}

/**
 * @brief  Checks for SPI flash chip ID.
 * @return ID of the chip;
 */
uint32_t flashReadID(void) {
  uint8_t id[3] = {0};
  /* Read identification instruction. */
  uint8_t cmd = SPI_FLASH_CMD_RDID;

  spiSelect(&SPID2);
  spiSend(&SPID2, sizeof(cmd), &cmd);
  spiReceive(&SPID2, sizeof(id), id);
  spiUnselect(&SPID2);

  return ((id[0] << 16) | (id[1] << 8) | id[2]);
}
