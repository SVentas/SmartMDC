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

#ifndef PWMIO_H_
#define PWMIO_H_

#define PWM_OUT_PITCH           0x00
#define PWM_OUT_ROLL            0x01

#define PWM_OUT_FLAG_REVERSE    0x01
#define PWM_OUT_FLAG_USE_THI    0x02
#define PWM_OUT_FLAG_DISABLED   0x04

typedef struct tagPWMOutputStruct {
  uint8_t power;
  uint8_t flags;
} __attribute__((packed)) PWMOutputStruct, *PPWMOutputStruct;

extern PWMOutputStruct g_pwmOutput[2];

#ifdef __cplusplus
extern "C" {
#endif
  void pwmOutputStart(void);
  void pwmOutputStop(void);
  void pwmOutputUpdate(const uint8_t channel_id, fix16_t cmd);
#ifdef __cplusplus
}
#endif

#endif /* PWMIO_H_ */
