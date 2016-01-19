/*
    ChibiOS - Copyright (C) 2006..2015 Giovanni Di Sirio

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

#ifndef _BOARD_H_
#define _BOARD_H_

/*
 * Setup for the VauDUO v1.0 board.
 */

/*
 * Board identifier.
 */
#define BOARD_VAUDUO_V1_0
#define BOARD_NAME              "VauDUO v1.0"

/*
 * Board frequencies.
 */
#if !defined(STM32_LSECLK)
#define STM32_LSECLK            0
#endif

#if !defined(STM32_HSECLK)
#define STM32_HSECLK            8000000
#endif

/*
 * MCU type, supported types are defined in ./os/hal/platforms/hal_lld.h.
 */
#define STM32F10X_MD

/*
 * IO pins assignments.
 */
#define GPIOA_USB_DP            12
#define GPIOB_LED_A             3
#define GPIOB_LED_B             4
#define GPIOB_DRV_EN            5
#define GPIOB_SPI2NSS           12

/*
 * I/O ports initial setup, this configuration is established soon after reset
 * in the initialization code.
 *
 * The digits have the following meaning:
 *   0 - Analog input.
 *   1 - Push Pull output 10MHz.
 *   2 - Push Pull output 2MHz.
 *   3 - Push Pull output 50MHz.
 *   4 - Digital input.
 *   5 - Open Drain output 10MHz.
 *   6 - Open Drain output 2MHz.
 *   7 - Open Drain output 50MHz.
 *   8 - Digital input with PullUp or PullDown resistor depending on ODR.
 *   9 - Alternate Push Pull output 10MHz.
 *   A - Alternate Push Pull output 2MHz.
 *   B - Alternate Push Pull output 50MHz.
 *   C - Reserved.
 *   D - Alternate Open Drain output 10MHz.
 *   E - Alternate Open Drain output 2MHz.
 *   F - Alternate Open Drain output 50MHz.
 * Please refer to the STM32 Reference Manual for details.
 */

/*
 * Port A setup.
 * Everything floating input except:
 * PA0  - Alternate Push Pull output  (TIM2 CH1).
 * PA1  - Alternate Push Pull output  (TIM2 CH2).
 * PA2  - Alternate Push Pull output  (TIM2 CH3).
 * PA3  - Alternate Push Pull output  (TIM2 CH4).
 * PA4  - Not Used.
 * PA5  - Normal input                (INT).
 * PA6  - Normal input                (TIM3 CH1 - IN4).
 * PA7  - Normal input                (TIM3 CH2 - IN3).
 * PA8  - Not Used.
 * PA9  - Alternate Push Pull output  (USART1 TX).
 * PA10 - Normal Input                (USART1 RX).
 * PA11 - Normal input                (USB DM).
 * PA12 - Normal input                (USB DP).
 * PA13 - Pull-up input               (SWDIO).
 * PA14 - Pull-down input             (SWCLK).
 * PA15 - Not Used.
 */
#define VAL_GPIOACRL            0x4444AAAA      /*  PA7...PA0 */
#define VAL_GPIOACRH            0x488444A4      /* PA15...PA8 */
#define VAL_GPIOAODR            0x00002000

/*
 * Port B setup.
 * Everything floating input except:
 * PB0  - Normal input                (TIM3 CH3 - IN2).
 * PB1  - Normal input                (TIM3 CH4 - IN1).
 * PB2  - Normal input                (BOOT1).
 * PB3  - Push Pull output            (LEDA).
 * PB4  - Push Pull output            (LEDB).
 * PB5  - Push Pull output            (DRV_EN).
 * PB6  - Alternate Push Pull output  (TIM4_CH1).
 * PB7  - Alternate Push Pull output  (TIM4 CH2).
 * PB8  - Alternate Push Pull output  (TIM4 CH3).
 * PB9  - Alternate Push Pull output  (TIM4 CH4).
 * PB10 - Alternate Open Drain output (SCL).
 * PB11 - Alternate Open Drain output (SDA).
 * PB12 - Push Pull output            (SPI2 NSS).
 * PB13 - Alternate Push Pull output  (SPI2 SCK).
 * PB14 - Normal input                (SPI2 MISO).
 * PB15 - Alternate Push Pull output  (SPI2 MOSI).
 */
#define VAL_GPIOBCRL            0xBB222444      /*  PB7...PB0 */
#define VAL_GPIOBCRH            0xB4B2EEBB      /* PB15...PB8 */
#define VAL_GPIOBODR            0x00001018

/*
 * Port C setup.
 * Everything floating input except:
 * PC15 - Normal input (USBEN).
 */
#define VAL_GPIOCCRL            0x44444444      /*  PC7...PC0 */
#define VAL_GPIOCCRH            0x44444444      /* PC15...PC8 */
#define VAL_GPIOCODR            0x00000000

/*
 * Port D setup.
 * Everything floating input except:
 * PD0  - Normal input (XTAL).
 * PD1  - Normal input (XTAL).
 */
#define VAL_GPIODCRL            0x44444444      /*  PD7...PD0 */
#define VAL_GPIODCRH            0x44444444      /* PD15...PD8 */
#define VAL_GPIODODR            0x00000000

/*
 * Port E setup.
 * Everything floating input except:
 */
#define VAL_GPIOECRL            0x44444444      /*  PE7...PE0 */
#define VAL_GPIOECRH            0x44444444      /* PE15...PE8 */
#define VAL_GPIOEODR            0x00000000

/*
 * USB bus activation macro, required by the USB driver.
 */
#define usb_lld_connect_bus(usbp) { \
  palSetPadMode(GPIOA, GPIOA_USB_DP, PAL_MODE_INPUT); \
}

/*
 * USB bus de-activation macro, required by the USB driver.
 */
#define usb_lld_disconnect_bus(usbp) { \
  palSetPadMode(GPIOA, GPIOA_USB_DP, PAL_MODE_OUTPUT_PUSHPULL); \
  palClearPad(GPIOA, GPIOA_USB_DP); \
}

#if !defined(_FROM_ASM_)
#ifdef __cplusplus
extern "C" {
#endif
  void boardInit(void);
#ifdef __cplusplus
}
#endif
#endif /* _FROM_ASM_ */

#endif /* _BOARD_H_ */
