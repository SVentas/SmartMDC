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

#ifndef SPIFLASH_H_
#define SPIFLASH_H_

/**
 * Global variables
 */
extern uint8_t g_fSaveToFlash;

#ifdef __cplusplus
extern "C" {
#endif
  uint8_t flashLoadSettings(void);
  uint8_t flashSaveSettings(void);
  uint8_t flashWriteData(void);
  uint8_t flashIsReady(void);
  uint32_t flashReadID(void);
#ifdef __cplusplus
}
#endif

#endif /* SPIFLASH_H_ */
