/*
    SmartMDC - Copyright (C) 2013-2016 Sarunas Vaitekonis

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
 * Setup for the SmartMDC v0.3 board.
 */

/*
 * Board identifier.
 */
#define BOARD_SMARTMDC_V0_3
#define BOARD_NAME              "SmartMDC v0.3"

/*
 * Board oscillators-related settings.
 * NOTE: LSE not fitted.
 */
#if !defined(STM32_LSECLK)
#define STM32_LSECLK            0U
#endif

#define STM32_LSEDRV            (3U << 3U)

#if !defined(STM32_HSECLK)
#define STM32_HSECLK            8000000U
#endif

/*
 * MCU type as defined in the ST header.
 */
#define STM32F303xC

/*
 * IO pins assignments.
 */
#define GPIOA_ADC1_CH1          0U  // OPU A
#define GPIOA_PIN1              1U
#define GPIOA_PIN2              2U
#define GPIOA_PIN3              3U
#define GPIOA_DAC_CH1           4U  // FOC
#define GPIOA_DAC_CH2           5U  // RAD
#define GPIOA_ADC2_CH3          6U  // OPU D
#define GPIOA_PIN7              7U
#define GPIOA_PIN8              8U
#define GPIOA_TX1_SCL2          9U  // USART1 TX / I2C2 SCL
#define GPIOA_RX1_SDA2          10U // USART1 RX / I2C2 SDA
#define GPIOA_USB_DM            11U // USB D-
#define GPIOA_USB_DP            12U // USB D+
#define GPIOA_SWDIO             13U // SWDIO
#define GPIOA_SWCLK             14U // SWCLK
#define GPIOA_SPI1_NSS          15U // NSS

#define GPIOB_LED_A             0U  // LED A
#define GPIOB_LED_B             1U  // LED B
#define GPIOB_PIN2              2U
#define GPIOB_SPI1_SCK          3U  // SCK
#define GPIOB_SPI1_MISO         4U  // MISO
#define GPIOB_SPI1_MOSI         5U  // MOSI
#define GPIOB_TIM8_CH1          6U  // TRIGER IN
#define GPIOB_PIN7              7U
#define GPIOB_PIN8              8U
#define GPIOB_TIM4_CH4          9U  // PWM OUTPUT
#define GPIOB_PIN10             10U
#define GPIOB_PIN11             11U
#define GPIOB_PIN12             12U
#define GPIOB_ADC3_CH5          13U // OPU C
#define GPIOB_ADC4_CH4          14U // OPU B
#define GPIOB_PIN15             15U

/* NOT POPULATED */
#define GPIOC_PIN0              0U
#define GPIOC_PIN1              1U
#define GPIOC_PIN2              2U
#define GPIOC_PIN3              3U
#define GPIOC_PIN4              4U
#define GPIOC_PIN5              5U
#define GPIOC_PIN6              6U
#define GPIOC_PIN7              7U
#define GPIOC_PIN8              8U
#define GPIOC_PIN9              9U
#define GPIOC_PIN10             10U
#define GPIOC_PIN11             11U
#define GPIOC_PIN12             12U
#define GPIOC_PIN13             13U
#define GPIOC_PIN14             14U
#define GPIOC_PIN15             15U

/* NOT POPULATED */
#define GPIOD_PIN0              0U
#define GPIOD_PIN1              1U
#define GPIOD_PIN2              2U
#define GPIOD_PIN3              3U
#define GPIOD_PIN4              4U
#define GPIOD_PIN5              5U
#define GPIOD_PIN6              6U
#define GPIOD_PIN7              7U
#define GPIOD_PIN8              8U
#define GPIOD_PIN9              9U
#define GPIOD_PIN10             10U
#define GPIOD_PIN11             11U
#define GPIOD_PIN12             12U
#define GPIOD_PIN13             13U
#define GPIOD_PIN14             14U
#define GPIOD_PIN15             15U

/* NOT POPULATED */
#define GPIOE_PIN0              0U
#define GPIOE_PIN1              1U
#define GPIOE_PIN2              2U
#define GPIOE_PIN3              3U
#define GPIOE_PIN4              4U
#define GPIOE_PIN5              5U
#define GPIOE_PIN6              6U
#define GPIOE_PIN7              7U
#define GPIOE_PIN8              8U
#define GPIOE_PIN9              9U
#define GPIOE_PIN10             10U
#define GPIOE_PIN11             11U
#define GPIOE_PIN12             12U
#define GPIOE_PIN13             13U
#define GPIOE_PIN14             14U
#define GPIOE_PIN15             15U

#define GPIOF_OSC_IN            0U
#define GPIOF_OSC_OUT           1U
#define GPIOF_PIN2              2U
#define GPIOF_PIN3              3U
#define GPIOF_PIN4              4U
#define GPIOF_PIN5              5U
#define GPIOF_PIN6              6U
#define GPIOF_PIN7              7U
#define GPIOF_PIN8              8U
#define GPIOF_PIN9              9U
#define GPIOF_PIN10             10U
#define GPIOF_PIN11             11U
#define GPIOF_PIN12             12U
#define GPIOF_PIN13             13U
#define GPIOF_PIN14             14U
#define GPIOF_PIN15             15U

/*
 * I/O ports initial setup, this configuration is established soon after reset
 * in the initialization code.
 * Please refer to the STM32 Reference Manual for details.
 */
#define PIN_MODE_INPUT(n)           (0U << ((n) * 2U))
#define PIN_MODE_OUTPUT(n)          (1U << ((n) * 2U))
#define PIN_MODE_ALTERNATE(n)       (2U << ((n) * 2U))
#define PIN_MODE_ANALOG(n)          (3U << ((n) * 2U))
#define PIN_ODR_LOW(n)              (0U << (n))
#define PIN_ODR_HIGH(n)             (1U << (n))
#define PIN_OTYPE_PUSHPULL(n)       (0U << (n))
#define PIN_OTYPE_OPENDRAIN(n)      (1U << (n))
#define PIN_OSPEED_2M(n)            (0U << ((n) * 2U))
#define PIN_OSPEED_10M(n)           (1U << ((n) * 2U))
#define PIN_OSPEED_50M(n)           (3U << ((n) * 2U))
#define PIN_PUPDR_FLOATING(n)       (0U << ((n) * 2U))
#define PIN_PUPDR_PULLUP(n)         (1U << ((n) * 2U))
#define PIN_PUPDR_PULLDOWN(n)       (2U << ((n) * 2U))
#define PIN_AFIO_AF(n, v)           ((v) << (((n) % 8U) * 4U))

/*
 * GPIOA setup:
 *
 * PA0  - ADC1_CH1                  (analog floating).
 * PA1  - PIN1                      (input floating).
 * PA2  - PIN2                      (input floating).
 * PA3  - PIN3                      (input floating).
 * PA4  - DAC_CH1                   (analog floating).
 * PA5  - DAC_CH2                   (analog floating).
 * PA6  - ADC2_CH3                  (analog floating).
 * PA7  - PIN7                      (input floating).
 * PA8  - PIN8                      (input floating).
 * PA9  - I2C2_SCL                  (alternate 4).
 * PA10 - I2C2_SDA                  (alternate 4).
 * PA11 - USB_DM                    (alternate 14).
 * PA12 - USB_DP                    (alternate 14).
 * PA13 - SWDIO                     (alternate 0).
 * PA14 - SWCLK                     (alternate 0).
 * PA15 - SPI1_NSS                  (output pushpull).
 */
#define VAL_GPIOA_MODER             (PIN_MODE_ANALOG(GPIOA_ADC1_CH1) |      \
                                     PIN_MODE_INPUT(GPIOA_PIN1) |           \
                                     PIN_MODE_INPUT(GPIOA_PIN2) |           \
                                     PIN_MODE_INPUT(GPIOA_PIN3) |           \
                                     PIN_MODE_ANALOG(GPIOA_DAC_CH1) |       \
                                     PIN_MODE_ANALOG(GPIOA_DAC_CH2) |       \
                                     PIN_MODE_ANALOG(GPIOA_ADC2_CH3) |      \
                                     PIN_MODE_INPUT(GPIOA_PIN7) |           \
                                     PIN_MODE_INPUT(GPIOA_PIN8) |           \
                                     PIN_MODE_ALTERNATE(GPIOA_TX1_SCL2) |   \
                                     PIN_MODE_ALTERNATE(GPIOA_RX1_SDA2) |   \
                                     PIN_MODE_ALTERNATE(GPIOA_USB_DM) |     \
                                     PIN_MODE_ALTERNATE(GPIOA_USB_DP) |     \
                                     PIN_MODE_ALTERNATE(GPIOA_SWDIO) |      \
                                     PIN_MODE_ALTERNATE(GPIOA_SWCLK) |      \
                                     PIN_MODE_OUTPUT(GPIOA_SPI1_NSS))
#define VAL_GPIOA_OTYPER            (PIN_OTYPE_PUSHPULL(GPIOA_ADC1_CH1) |   \
                                     PIN_OTYPE_PUSHPULL(GPIOA_PIN1) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOA_PIN2) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOA_PIN3) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOA_DAC_CH1) |    \
                                     PIN_OTYPE_PUSHPULL(GPIOA_DAC_CH2) |    \
                                     PIN_OTYPE_PUSHPULL(GPIOA_ADC2_CH3) |   \
                                     PIN_OTYPE_PUSHPULL(GPIOA_PIN7) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOA_PIN8) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOA_TX1_SCL2) |   \
                                     PIN_OTYPE_PUSHPULL(GPIOA_RX1_SDA2) |   \
                                     PIN_OTYPE_PUSHPULL(GPIOA_USB_DM) |     \
                                     PIN_OTYPE_PUSHPULL(GPIOA_USB_DP) |     \
                                     PIN_OTYPE_PUSHPULL(GPIOA_SWDIO) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOA_SWCLK) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOA_SPI1_NSS))
#define VAL_GPIOA_OSPEEDR           (PIN_OSPEED_2M(GPIOA_ADC1_CH1) |        \
                                     PIN_OSPEED_2M(GPIOA_PIN1) |            \
                                     PIN_OSPEED_2M(GPIOA_PIN2) |            \
                                     PIN_OSPEED_2M(GPIOA_PIN3) |            \
                                     PIN_OSPEED_2M(GPIOA_DAC_CH1) |         \
                                     PIN_OSPEED_2M(GPIOA_DAC_CH2) |         \
                                     PIN_OSPEED_2M(GPIOA_ADC2_CH3) |        \
                                     PIN_OSPEED_2M(GPIOA_PIN7) |            \
                                     PIN_OSPEED_2M(GPIOA_PIN8) |            \
                                     PIN_OSPEED_2M(GPIOA_TX1_SCL2) |        \
                                     PIN_OSPEED_2M(GPIOA_RX1_SDA2) |        \
                                     PIN_OSPEED_50M(GPIOA_USB_DM) |         \
                                     PIN_OSPEED_50M(GPIOA_USB_DP) |         \
                                     PIN_OSPEED_50M(GPIOA_SWDIO) |          \
                                     PIN_OSPEED_50M(GPIOA_SWCLK) |          \
                                     PIN_OSPEED_50M(GPIOA_SPI1_NSS))
#define VAL_GPIOA_PUPDR             (PIN_PUPDR_FLOATING(GPIOA_ADC1_CH1) |   \
                                     PIN_PUPDR_FLOATING(GPIOA_PIN1) |       \
                                     PIN_PUPDR_FLOATING(GPIOA_PIN2) |       \
                                     PIN_PUPDR_FLOATING(GPIOA_PIN3) |       \
                                     PIN_PUPDR_FLOATING(GPIOA_DAC_CH1) |    \
                                     PIN_PUPDR_FLOATING(GPIOA_DAC_CH2) |    \
                                     PIN_PUPDR_FLOATING(GPIOA_ADC2_CH3) |   \
                                     PIN_PUPDR_FLOATING(GPIOA_PIN7) |       \
                                     PIN_PUPDR_FLOATING(GPIOA_PIN8) |       \
                                     PIN_PUPDR_PULLDOWN(GPIOA_TX1_SCL2) |   \
                                     PIN_PUPDR_PULLDOWN(GPIOA_RX1_SDA2) |   \
                                     PIN_PUPDR_FLOATING(GPIOA_USB_DM) |     \
                                     PIN_PUPDR_FLOATING(GPIOA_USB_DP) |     \
                                     PIN_PUPDR_PULLUP(GPIOA_SWDIO) |        \
                                     PIN_PUPDR_PULLDOWN(GPIOA_SWCLK) |      \
                                     PIN_PUPDR_PULLUP(GPIOA_SPI1_NSS))
#define VAL_GPIOA_ODR               (PIN_ODR_LOW(GPIOA_ADC1_CH1) |          \
                                     PIN_ODR_LOW(GPIOA_PIN1) |              \
                                     PIN_ODR_LOW(GPIOA_PIN2) |              \
                                     PIN_ODR_LOW(GPIOA_PIN3) |              \
                                     PIN_ODR_LOW(GPIOA_DAC_CH1) |           \
                                     PIN_ODR_LOW(GPIOA_DAC_CH2) |           \
                                     PIN_ODR_LOW(GPIOA_ADC2_CH3) |          \
                                     PIN_ODR_LOW(GPIOA_PIN7) |              \
                                     PIN_ODR_LOW(GPIOA_PIN8) |              \
                                     PIN_ODR_LOW(GPIOA_TX1_SCL2) |          \
                                     PIN_ODR_LOW(GPIOA_RX1_SDA2) |          \
                                     PIN_ODR_LOW(GPIOA_USB_DM) |            \
                                     PIN_ODR_LOW(GPIOA_USB_DP) |            \
                                     PIN_ODR_LOW(GPIOA_SWDIO) |             \
                                     PIN_ODR_LOW(GPIOA_SWCLK) |             \
                                     PIN_ODR_HIGH(GPIOA_SPI1_NSS))
#define VAL_GPIOA_AFRL              (PIN_AFIO_AF(GPIOA_ADC1_CH1, 0) |       \
                                     PIN_AFIO_AF(GPIOA_PIN1, 0) |           \
                                     PIN_AFIO_AF(GPIOA_PIN2, 0) |           \
                                     PIN_AFIO_AF(GPIOA_PIN3, 0) |           \
                                     PIN_AFIO_AF(GPIOA_DAC_CH1, 0) |        \
                                     PIN_AFIO_AF(GPIOA_DAC_CH2, 0) |        \
                                     PIN_AFIO_AF(GPIOA_ADC2_CH3, 0) |       \
                                     PIN_AFIO_AF(GPIOA_PIN7, 0))
#define VAL_GPIOA_AFRH              (PIN_AFIO_AF(GPIOA_PIN8, 0) |           \
                                     PIN_AFIO_AF(GPIOA_TX1_SCL2, 7) |       \
                                     PIN_AFIO_AF(GPIOA_RX1_SDA2, 7) |       \
                                     PIN_AFIO_AF(GPIOA_USB_DM, 14) |        \
                                     PIN_AFIO_AF(GPIOA_USB_DP, 14) |        \
                                     PIN_AFIO_AF(GPIOA_SWDIO, 0) |          \
                                     PIN_AFIO_AF(GPIOA_SWCLK, 0) |          \
                                     PIN_AFIO_AF(GPIOA_SPI1_NSS, 0))

/*
 * GPIOB setup:
 *
 * PB0  - LED_A                     (output pushpull).
 * PB1  - LED_B                     (output pushpull).
 * PB2  - PIN2                      (input floating).
 * PB3  - SPI1_SCK                  (alternate 5).
 * PB4  - SPI1_MISO                 (alternate 5).
 * PB5  - SPI1_MOSI                 (alternate 5).
 * PB6  - TIM8_CH1                  (alternate 5).
 * PB7  - PIN7                      (input floating).
 * PB8  - PIN8                      (input floating).
 * PB9  - TIM4_CH4                  (alternate 2).
 * PB10 - PIN10                     (input floating).
 * PB11 - PIN11                     (input floating).
 * PB12 - PIN12                     (input floating).
 * PB13 - ADC3_CH5                  (analog floating).
 * PB14 - ADC4_CH4                  (analog floating).
 * PB15 - PIN15                     (input floating).
 */
#define VAL_GPIOB_MODER             (PIN_MODE_OUTPUT(GPIOB_LED_A) |         \
                                     PIN_MODE_OUTPUT(GPIOB_LED_B) |         \
                                     PIN_MODE_INPUT(GPIOB_PIN2) |           \
                                     PIN_MODE_ALTERNATE(GPIOB_SPI1_SCK) |   \
                                     PIN_MODE_ALTERNATE(GPIOB_SPI1_MISO) |  \
                                     PIN_MODE_ALTERNATE(GPIOB_SPI1_MOSI) |  \
                                     PIN_MODE_ALTERNATE(GPIOB_TIM8_CH1) |   \
                                     PIN_MODE_INPUT(GPIOB_PIN7) |           \
                                     PIN_MODE_INPUT(GPIOB_PIN8) |           \
                                     PIN_MODE_ALTERNATE(GPIOB_TIM4_CH4) |   \
                                     PIN_MODE_INPUT(GPIOB_PIN10) |          \
                                     PIN_MODE_INPUT(GPIOB_PIN11) |          \
                                     PIN_MODE_INPUT(GPIOB_PIN12) |          \
                                     PIN_MODE_ANALOG(GPIOB_ADC3_CH5) |      \
                                     PIN_MODE_ANALOG(GPIOB_ADC4_CH4) |      \
                                     PIN_MODE_INPUT(GPIOB_PIN15))
#define VAL_GPIOB_OTYPER            (PIN_OTYPE_PUSHPULL(GPIOB_LED_A) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOB_LED_B) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOB_PIN2) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOB_SPI1_SCK) |   \
                                     PIN_OTYPE_PUSHPULL(GPIOB_SPI1_MISO) |  \
                                     PIN_OTYPE_PUSHPULL(GPIOB_SPI1_MOSI) |  \
                                     PIN_OTYPE_PUSHPULL(GPIOB_TIM8_CH1) |   \
                                     PIN_OTYPE_PUSHPULL(GPIOB_PIN7) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOB_PIN8) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOB_TIM4_CH4) |   \
                                     PIN_OTYPE_PUSHPULL(GPIOB_PIN10) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOB_PIN11) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOB_PIN12) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOB_ADC3_CH5) |   \
                                     PIN_OTYPE_PUSHPULL(GPIOB_ADC4_CH4) |   \
                                     PIN_OTYPE_PUSHPULL(GPIOB_PIN15))
#define VAL_GPIOB_OSPEEDR           (PIN_OSPEED_2M(GPIOB_LED_A) |           \
                                     PIN_OSPEED_2M(GPIOB_LED_B) |           \
                                     PIN_OSPEED_2M(GPIOB_PIN2) |            \
                                     PIN_OSPEED_50M(GPIOB_SPI1_SCK) |       \
                                     PIN_OSPEED_50M(GPIOB_SPI1_MISO) |      \
                                     PIN_OSPEED_50M(GPIOB_SPI1_MOSI) |      \
                                     PIN_OSPEED_2M(GPIOB_TIM8_CH1) |        \
                                     PIN_OSPEED_2M(GPIOB_PIN7) |            \
                                     PIN_OSPEED_2M(GPIOB_PIN8) |            \
                                     PIN_OSPEED_2M(GPIOB_TIM4_CH4) |        \
                                     PIN_OSPEED_2M(GPIOB_PIN10) |           \
                                     PIN_OSPEED_2M(GPIOB_PIN11) |           \
                                     PIN_OSPEED_2M(GPIOB_PIN12) |           \
                                     PIN_OSPEED_2M(GPIOB_ADC3_CH5) |        \
                                     PIN_OSPEED_2M(GPIOB_ADC4_CH4) |        \
                                     PIN_OSPEED_2M(GPIOB_PIN15))
#define VAL_GPIOB_PUPDR             (PIN_PUPDR_PULLDOWN(GPIOB_LED_A) |      \
                                     PIN_PUPDR_PULLDOWN(GPIOB_LED_B) |      \
                                     PIN_PUPDR_FLOATING(GPIOB_PIN2) |       \
                                     PIN_PUPDR_PULLDOWN(GPIOB_SPI1_SCK) |   \
                                     PIN_PUPDR_PULLDOWN(GPIOB_SPI1_MISO) |  \
                                     PIN_PUPDR_PULLDOWN(GPIOB_SPI1_MOSI) |  \
                                     PIN_PUPDR_PULLUP(GPIOB_TIM8_CH1) |     \
                                     PIN_PUPDR_FLOATING(GPIOB_PIN7) |       \
                                     PIN_PUPDR_FLOATING(GPIOB_PIN8) |       \
                                     PIN_PUPDR_FLOATING(GPIOB_TIM4_CH4) |   \
                                     PIN_PUPDR_FLOATING(GPIOB_PIN10) |      \
                                     PIN_PUPDR_FLOATING(GPIOB_PIN11) |      \
                                     PIN_PUPDR_FLOATING(GPIOB_PIN12) |      \
                                     PIN_PUPDR_FLOATING(GPIOB_ADC3_CH5) |   \
                                     PIN_PUPDR_FLOATING(GPIOB_ADC4_CH4) |   \
                                     PIN_PUPDR_FLOATING(GPIOB_PIN15))
#define VAL_GPIOB_ODR               (PIN_ODR_LOW(GPIOB_LED_A) |             \
                                     PIN_ODR_LOW(GPIOB_LED_B) |             \
                                     PIN_ODR_LOW(GPIOB_PIN2) |              \
                                     PIN_ODR_LOW(GPIOB_SPI1_SCK) |          \
                                     PIN_ODR_LOW(GPIOB_SPI1_MISO) |         \
                                     PIN_ODR_LOW(GPIOB_SPI1_MOSI) |         \
                                     PIN_ODR_LOW(GPIOB_TIM8_CH1) |          \
                                     PIN_ODR_LOW(GPIOB_PIN7) |              \
                                     PIN_ODR_LOW(GPIOB_PIN8) |              \
                                     PIN_ODR_LOW(GPIOB_TIM4_CH4) |          \
                                     PIN_ODR_LOW(GPIOB_PIN10) |             \
                                     PIN_ODR_LOW(GPIOB_PIN11) |             \
                                     PIN_ODR_LOW(GPIOB_PIN12) |             \
                                     PIN_ODR_LOW(GPIOB_ADC3_CH5) |          \
                                     PIN_ODR_LOW(GPIOB_ADC4_CH4) |          \
                                     PIN_ODR_LOW(GPIOB_PIN15))
#define VAL_GPIOB_AFRL              (PIN_AFIO_AF(GPIOB_LED_A, 0) |          \
                                     PIN_AFIO_AF(GPIOB_LED_B, 0) |          \
                                     PIN_AFIO_AF(GPIOB_PIN2, 0) |           \
                                     PIN_AFIO_AF(GPIOB_SPI1_SCK, 5) |       \
                                     PIN_AFIO_AF(GPIOB_SPI1_MISO, 5) |      \
                                     PIN_AFIO_AF(GPIOB_SPI1_MOSI, 5) |      \
                                     PIN_AFIO_AF(GPIOB_TIM8_CH1, 5) |       \
                                     PIN_AFIO_AF(GPIOB_PIN7, 0))
#define VAL_GPIOB_AFRH              (PIN_AFIO_AF(GPIOB_PIN8, 0) |           \
                                     PIN_AFIO_AF(GPIOB_TIM4_CH4, 2) |       \
                                     PIN_AFIO_AF(GPIOB_PIN10, 0) |          \
                                     PIN_AFIO_AF(GPIOB_PIN11, 0) |          \
                                     PIN_AFIO_AF(GPIOB_PIN12, 0) |          \
                                     PIN_AFIO_AF(GPIOB_ADC3_CH5, 0) |       \
                                     PIN_AFIO_AF(GPIOB_ADC4_CH4, 0) |       \
                                     PIN_AFIO_AF(GPIOB_PIN15, 0))

/*
 * GPIOC setup:
 *
 * PC0  - PIN0                      (input floating).
 * PC1  - PIN1                      (input floating).
 * PC2  - PIN2                      (input floating).
 * PC3  - PIN3                      (input floating).
 * PC4  - PIN4                      (input floating).
 * PC5  - PIN5                      (input floating).
 * PC6  - PIN6                      (input floating).
 * PC7  - PIN7                      (input floating).
 * PC8  - PIN8                      (input floating).
 * PC9  - PIN9                      (input floating).
 * PC10 - PIN10                     (input floating).
 * PC11 - PIN11                     (input floating).
 * PC12 - PIN12                     (input floating).
 * PC13 - PIN13                     (input floating).
 * PC14 - PIN14                     (input floating).
 * PC15 - PIN15                     (input floating).
 */
#define VAL_GPIOC_MODER             (PIN_MODE_INPUT(GPIOC_PIN0) |           \
                                     PIN_MODE_INPUT(GPIOC_PIN1) |           \
                                     PIN_MODE_INPUT(GPIOC_PIN2) |           \
                                     PIN_MODE_INPUT(GPIOC_PIN3) |           \
                                     PIN_MODE_INPUT(GPIOC_PIN4) |           \
                                     PIN_MODE_INPUT(GPIOC_PIN5) |           \
                                     PIN_MODE_INPUT(GPIOC_PIN6) |           \
                                     PIN_MODE_INPUT(GPIOC_PIN7) |           \
                                     PIN_MODE_INPUT(GPIOC_PIN8) |           \
                                     PIN_MODE_INPUT(GPIOC_PIN9) |           \
                                     PIN_MODE_INPUT(GPIOC_PIN10) |          \
                                     PIN_MODE_INPUT(GPIOC_PIN11) |          \
                                     PIN_MODE_INPUT(GPIOC_PIN12) |          \
                                     PIN_MODE_INPUT(GPIOC_PIN13) |          \
                                     PIN_MODE_INPUT(GPIOC_PIN14) |          \
                                     PIN_MODE_INPUT(GPIOC_PIN15))
#define VAL_GPIOC_OTYPER            (PIN_OTYPE_PUSHPULL(GPIOC_PIN0) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOC_PIN1) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOC_PIN2) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOC_PIN3) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOC_PIN4) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOC_PIN5) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOC_PIN6) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOC_PIN7) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOC_PIN8) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOC_PIN9) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOC_PIN10) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOC_PIN11) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOC_PIN12) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOC_PIN13) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOC_PIN14) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOC_PIN15))
#define VAL_GPIOC_OSPEEDR           (PIN_OSPEED_2M(GPIOC_PIN0) |            \
                                     PIN_OSPEED_2M(GPIOC_PIN1) |            \
                                     PIN_OSPEED_2M(GPIOC_PIN2) |            \
                                     PIN_OSPEED_2M(GPIOC_PIN3) |            \
                                     PIN_OSPEED_2M(GPIOC_PIN4) |            \
                                     PIN_OSPEED_2M(GPIOC_PIN5) |            \
                                     PIN_OSPEED_2M(GPIOC_PIN6) |            \
                                     PIN_OSPEED_2M(GPIOC_PIN7) |            \
                                     PIN_OSPEED_2M(GPIOC_PIN8) |            \
                                     PIN_OSPEED_2M(GPIOC_PIN9) |            \
                                     PIN_OSPEED_2M(GPIOC_PIN10) |           \
                                     PIN_OSPEED_2M(GPIOC_PIN11) |           \
                                     PIN_OSPEED_2M(GPIOC_PIN12) |           \
                                     PIN_OSPEED_2M(GPIOC_PIN13) |           \
                                     PIN_OSPEED_2M(GPIOC_PIN14) |           \
                                     PIN_OSPEED_2M(GPIOC_PIN15))
#define VAL_GPIOC_PUPDR             (PIN_PUPDR_FLOATING(GPIOC_PIN0) |       \
                                     PIN_PUPDR_FLOATING(GPIOC_PIN1) |       \
                                     PIN_PUPDR_FLOATING(GPIOC_PIN2) |       \
                                     PIN_PUPDR_FLOATING(GPIOC_PIN3) |       \
                                     PIN_PUPDR_FLOATING(GPIOC_PIN4) |       \
                                     PIN_PUPDR_FLOATING(GPIOC_PIN5) |       \
                                     PIN_PUPDR_FLOATING(GPIOC_PIN6) |       \
                                     PIN_PUPDR_FLOATING(GPIOC_PIN7) |       \
                                     PIN_PUPDR_FLOATING(GPIOC_PIN8) |       \
                                     PIN_PUPDR_FLOATING(GPIOC_PIN9) |       \
                                     PIN_PUPDR_FLOATING(GPIOC_PIN10) |      \
                                     PIN_PUPDR_FLOATING(GPIOC_PIN11) |      \
                                     PIN_PUPDR_FLOATING(GPIOC_PIN12) |      \
                                     PIN_PUPDR_FLOATING(GPIOC_PIN13) |      \
                                     PIN_PUPDR_FLOATING(GPIOC_PIN14) |      \
                                     PIN_PUPDR_FLOATING(GPIOC_PIN15))
#define VAL_GPIOC_ODR               (PIN_ODR_LOW(GPIOC_PIN0) |              \
                                     PIN_ODR_LOW(GPIOC_PIN1) |              \
                                     PIN_ODR_LOW(GPIOC_PIN2) |              \
                                     PIN_ODR_LOW(GPIOC_PIN3) |              \
                                     PIN_ODR_LOW(GPIOC_PIN4) |              \
                                     PIN_ODR_LOW(GPIOC_PIN5) |              \
                                     PIN_ODR_LOW(GPIOC_PIN6) |              \
                                     PIN_ODR_LOW(GPIOC_PIN7) |              \
                                     PIN_ODR_LOW(GPIOC_PIN8) |              \
                                     PIN_ODR_LOW(GPIOC_PIN9) |              \
                                     PIN_ODR_LOW(GPIOC_PIN10) |             \
                                     PIN_ODR_LOW(GPIOC_PIN11) |             \
                                     PIN_ODR_LOW(GPIOC_PIN12) |             \
                                     PIN_ODR_LOW(GPIOC_PIN13) |             \
                                     PIN_ODR_LOW(GPIOC_PIN14) |             \
                                     PIN_ODR_LOW(GPIOC_PIN15))
#define VAL_GPIOC_AFRL              (PIN_AFIO_AF(GPIOC_PIN0, 0) |           \
                                     PIN_AFIO_AF(GPIOC_PIN1, 0) |           \
                                     PIN_AFIO_AF(GPIOC_PIN2, 0) |           \
                                     PIN_AFIO_AF(GPIOC_PIN3, 0) |           \
                                     PIN_AFIO_AF(GPIOC_PIN4, 0) |           \
                                     PIN_AFIO_AF(GPIOC_PIN5, 0) |           \
                                     PIN_AFIO_AF(GPIOC_PIN6, 0) |           \
                                     PIN_AFIO_AF(GPIOC_PIN7, 0))
#define VAL_GPIOC_AFRH              (PIN_AFIO_AF(GPIOC_PIN8, 0) |           \
                                     PIN_AFIO_AF(GPIOC_PIN9, 0) |           \
                                     PIN_AFIO_AF(GPIOC_PIN10, 0) |          \
                                     PIN_AFIO_AF(GPIOC_PIN11, 0) |          \
                                     PIN_AFIO_AF(GPIOC_PIN12, 0) |          \
                                     PIN_AFIO_AF(GPIOC_PIN13, 0) |          \
                                     PIN_AFIO_AF(GPIOC_PIN14, 0) |          \
                                     PIN_AFIO_AF(GPIOC_PIN15, 0))

/*
 * GPIOD setup:
 *
 * PD0  - PIN0                      (input floating).
 * PD1  - PIN1                      (input floating).
 * PD2  - PIN2                      (input floating).
 * PD3  - PIN3                      (input floating).
 * PD4  - PIN4                      (input floating).
 * PD5  - PIN5                      (input floating).
 * PD6  - PIN6                      (input floating).
 * PD7  - PIN7                      (input floating).
 * PD8  - PIN8                      (input floating).
 * PD9  - PIN9                      (input floating).
 * PD10 - PIN10                     (input floating).
 * PD11 - PIN11                     (input floating).
 * PD12 - PIN12                     (input floating).
 * PD13 - PIN13                     (input floating).
 * PD14 - PIN14                     (input floating).
 * PD15 - PIN15                     (input floating).
 */
#define VAL_GPIOD_MODER             (PIN_MODE_INPUT(GPIOD_PIN0) |           \
                                     PIN_MODE_INPUT(GPIOD_PIN1) |           \
                                     PIN_MODE_INPUT(GPIOD_PIN2) |           \
                                     PIN_MODE_INPUT(GPIOD_PIN3) |           \
                                     PIN_MODE_INPUT(GPIOD_PIN4) |           \
                                     PIN_MODE_INPUT(GPIOD_PIN5) |           \
                                     PIN_MODE_INPUT(GPIOD_PIN6) |           \
                                     PIN_MODE_INPUT(GPIOD_PIN7) |           \
                                     PIN_MODE_INPUT(GPIOD_PIN8) |           \
                                     PIN_MODE_INPUT(GPIOD_PIN9) |           \
                                     PIN_MODE_INPUT(GPIOD_PIN10) |          \
                                     PIN_MODE_INPUT(GPIOD_PIN11) |          \
                                     PIN_MODE_INPUT(GPIOD_PIN12) |          \
                                     PIN_MODE_INPUT(GPIOD_PIN13) |          \
                                     PIN_MODE_INPUT(GPIOD_PIN14) |          \
                                     PIN_MODE_INPUT(GPIOD_PIN15))
#define VAL_GPIOD_OTYPER            (PIN_OTYPE_PUSHPULL(GPIOD_PIN0) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOD_PIN1) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOD_PIN2) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOD_PIN3) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOD_PIN4) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOD_PIN5) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOD_PIN6) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOD_PIN7) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOD_PIN8) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOD_PIN9) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOD_PIN10) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOD_PIN11) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOD_PIN12) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOD_PIN13) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOD_PIN14) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOD_PIN15))
#define VAL_GPIOD_OSPEEDR           (PIN_OSPEED_2M(GPIOD_PIN0) |            \
                                     PIN_OSPEED_2M(GPIOD_PIN1) |            \
                                     PIN_OSPEED_2M(GPIOD_PIN2) |            \
                                     PIN_OSPEED_2M(GPIOD_PIN3) |            \
                                     PIN_OSPEED_2M(GPIOD_PIN4) |            \
                                     PIN_OSPEED_2M(GPIOD_PIN5) |            \
                                     PIN_OSPEED_2M(GPIOD_PIN6) |            \
                                     PIN_OSPEED_2M(GPIOD_PIN7) |            \
                                     PIN_OSPEED_2M(GPIOD_PIN8) |            \
                                     PIN_OSPEED_2M(GPIOD_PIN9) |            \
                                     PIN_OSPEED_2M(GPIOD_PIN10) |           \
                                     PIN_OSPEED_2M(GPIOD_PIN11) |           \
                                     PIN_OSPEED_2M(GPIOD_PIN12) |           \
                                     PIN_OSPEED_2M(GPIOD_PIN13) |           \
                                     PIN_OSPEED_2M(GPIOD_PIN14) |           \
                                     PIN_OSPEED_2M(GPIOD_PIN15))
#define VAL_GPIOD_PUPDR             (PIN_PUPDR_FLOATING(GPIOD_PIN0) |       \
                                     PIN_PUPDR_FLOATING(GPIOD_PIN1) |       \
                                     PIN_PUPDR_FLOATING(GPIOD_PIN2) |       \
                                     PIN_PUPDR_FLOATING(GPIOD_PIN3) |       \
                                     PIN_PUPDR_FLOATING(GPIOD_PIN4) |       \
                                     PIN_PUPDR_FLOATING(GPIOD_PIN5) |       \
                                     PIN_PUPDR_FLOATING(GPIOD_PIN6) |       \
                                     PIN_PUPDR_FLOATING(GPIOD_PIN7) |       \
                                     PIN_PUPDR_FLOATING(GPIOD_PIN8) |       \
                                     PIN_PUPDR_FLOATING(GPIOD_PIN9) |       \
                                     PIN_PUPDR_FLOATING(GPIOD_PIN10) |      \
                                     PIN_PUPDR_FLOATING(GPIOD_PIN11) |      \
                                     PIN_PUPDR_FLOATING(GPIOD_PIN12) |      \
                                     PIN_PUPDR_FLOATING(GPIOD_PIN13) |      \
                                     PIN_PUPDR_FLOATING(GPIOD_PIN14) |      \
                                     PIN_PUPDR_FLOATING(GPIOD_PIN15))
#define VAL_GPIOD_ODR               (PIN_ODR_LOW(GPIOD_PIN0) |              \
                                     PIN_ODR_LOW(GPIOD_PIN1) |              \
                                     PIN_ODR_LOW(GPIOD_PIN2) |              \
                                     PIN_ODR_LOW(GPIOD_PIN3) |              \
                                     PIN_ODR_LOW(GPIOD_PIN4) |              \
                                     PIN_ODR_LOW(GPIOD_PIN5) |              \
                                     PIN_ODR_LOW(GPIOD_PIN6) |              \
                                     PIN_ODR_LOW(GPIOD_PIN7) |              \
                                     PIN_ODR_LOW(GPIOD_PIN8) |              \
                                     PIN_ODR_LOW(GPIOD_PIN9) |              \
                                     PIN_ODR_LOW(GPIOD_PIN10) |             \
                                     PIN_ODR_LOW(GPIOD_PIN11) |             \
                                     PIN_ODR_LOW(GPIOD_PIN12) |             \
                                     PIN_ODR_LOW(GPIOD_PIN13) |             \
                                     PIN_ODR_LOW(GPIOD_PIN14) |             \
                                     PIN_ODR_LOW(GPIOD_PIN15))
#define VAL_GPIOD_AFRL              (PIN_AFIO_AF(GPIOD_PIN0, 0) |           \
                                     PIN_AFIO_AF(GPIOD_PIN1, 0) |           \
                                     PIN_AFIO_AF(GPIOD_PIN2, 0) |           \
                                     PIN_AFIO_AF(GPIOD_PIN3, 0) |           \
                                     PIN_AFIO_AF(GPIOD_PIN4, 0) |           \
                                     PIN_AFIO_AF(GPIOD_PIN5, 0) |           \
                                     PIN_AFIO_AF(GPIOD_PIN6, 0) |           \
                                     PIN_AFIO_AF(GPIOD_PIN7, 0))
#define VAL_GPIOD_AFRH              (PIN_AFIO_AF(GPIOD_PIN8, 0) |           \
                                     PIN_AFIO_AF(GPIOD_PIN9, 0) |           \
                                     PIN_AFIO_AF(GPIOD_PIN10, 0) |          \
                                     PIN_AFIO_AF(GPIOD_PIN11, 0) |          \
                                     PIN_AFIO_AF(GPIOD_PIN12, 0) |          \
                                     PIN_AFIO_AF(GPIOD_PIN13, 0) |          \
                                     PIN_AFIO_AF(GPIOD_PIN14, 0) |          \
                                     PIN_AFIO_AF(GPIOD_PIN15, 0))

/*
 * GPIOE setup:
 *
 * PE0  - PIN0                      (input floating).
 * PE1  - PIN1                      (input floating).
 * PE2  - PIN2                      (input floating).
 * PE3  - PIN3                      (input floating).
 * PE4  - PIN4                      (input floating).
 * PE5  - PIN5                      (input floating).
 * PE6  - PIN6                      (input floating).
 * PE7  - PIN7                      (input floating).
 * PE8  - PIN8                      (input floating).
 * PE9  - PIN9                      (input floating).
 * PE10 - PIN10                     (input floating).
 * PE11 - PIN11                     (input floating).
 * PE12 - PIN12                     (input floating).
 * PE13 - PIN13                     (input floating).
 * PE14 - PIN14                     (input floating).
 * PE15 - PIN15                     (input floating).
 */
#define VAL_GPIOE_MODER             (PIN_MODE_INPUT(GPIOE_PIN0) |           \
                                     PIN_MODE_INPUT(GPIOE_PIN1) |           \
                                     PIN_MODE_INPUT(GPIOE_PIN2) |           \
                                     PIN_MODE_INPUT(GPIOE_PIN3) |           \
                                     PIN_MODE_INPUT(GPIOE_PIN4) |           \
                                     PIN_MODE_INPUT(GPIOE_PIN5) |           \
                                     PIN_MODE_INPUT(GPIOE_PIN6) |           \
                                     PIN_MODE_INPUT(GPIOE_PIN7) |           \
                                     PIN_MODE_INPUT(GPIOE_PIN8) |           \
                                     PIN_MODE_INPUT(GPIOE_PIN9) |           \
                                     PIN_MODE_INPUT(GPIOE_PIN10) |          \
                                     PIN_MODE_INPUT(GPIOE_PIN11) |          \
                                     PIN_MODE_INPUT(GPIOE_PIN12) |          \
                                     PIN_MODE_INPUT(GPIOE_PIN13) |          \
                                     PIN_MODE_INPUT(GPIOE_PIN14) |          \
                                     PIN_MODE_INPUT(GPIOE_PIN15))
#define VAL_GPIOE_OTYPER            (PIN_OTYPE_PUSHPULL(GPIOE_PIN0) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOE_PIN1) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOE_PIN2) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOE_PIN3) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOE_PIN4) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOE_PIN5) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOE_PIN6) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOE_PIN7) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOE_PIN8) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOE_PIN9) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOE_PIN10) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOE_PIN11) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOE_PIN12) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOE_PIN13) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOE_PIN14) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOE_PIN15))
#define VAL_GPIOE_OSPEEDR           (PIN_OSPEED_2M(GPIOE_PIN0) |            \
                                     PIN_OSPEED_2M(GPIOE_PIN1) |            \
                                     PIN_OSPEED_2M(GPIOE_PIN2) |            \
                                     PIN_OSPEED_2M(GPIOE_PIN3) |            \
                                     PIN_OSPEED_2M(GPIOE_PIN4) |            \
                                     PIN_OSPEED_2M(GPIOE_PIN5) |            \
                                     PIN_OSPEED_2M(GPIOE_PIN6) |            \
                                     PIN_OSPEED_2M(GPIOE_PIN7) |            \
                                     PIN_OSPEED_2M(GPIOE_PIN8) |            \
                                     PIN_OSPEED_2M(GPIOE_PIN9) |            \
                                     PIN_OSPEED_2M(GPIOE_PIN10) |           \
                                     PIN_OSPEED_2M(GPIOE_PIN11) |           \
                                     PIN_OSPEED_2M(GPIOE_PIN12) |           \
                                     PIN_OSPEED_2M(GPIOE_PIN13) |           \
                                     PIN_OSPEED_2M(GPIOE_PIN14) |           \
                                     PIN_OSPEED_2M(GPIOE_PIN15))
#define VAL_GPIOE_PUPDR             (PIN_PUPDR_FLOATING(GPIOE_PIN0) |       \
                                     PIN_PUPDR_FLOATING(GPIOE_PIN1) |       \
                                     PIN_PUPDR_FLOATING(GPIOE_PIN2) |       \
                                     PIN_PUPDR_FLOATING(GPIOE_PIN3) |       \
                                     PIN_PUPDR_FLOATING(GPIOE_PIN4) |       \
                                     PIN_PUPDR_FLOATING(GPIOE_PIN5) |       \
                                     PIN_PUPDR_FLOATING(GPIOE_PIN6) |       \
                                     PIN_PUPDR_FLOATING(GPIOE_PIN7) |       \
                                     PIN_PUPDR_FLOATING(GPIOE_PIN8) |       \
                                     PIN_PUPDR_FLOATING(GPIOE_PIN9) |       \
                                     PIN_PUPDR_FLOATING(GPIOE_PIN10) |      \
                                     PIN_PUPDR_FLOATING(GPIOE_PIN11) |      \
                                     PIN_PUPDR_FLOATING(GPIOE_PIN12) |      \
                                     PIN_PUPDR_FLOATING(GPIOE_PIN13) |      \
                                     PIN_PUPDR_FLOATING(GPIOE_PIN14) |      \
                                     PIN_PUPDR_FLOATING(GPIOE_PIN15))
#define VAL_GPIOE_ODR               (PIN_ODR_LOW(GPIOE_PIN0) |              \
                                     PIN_ODR_LOW(GPIOE_PIN1) |              \
                                     PIN_ODR_LOW(GPIOE_PIN2) |              \
                                     PIN_ODR_LOW(GPIOE_PIN3) |              \
                                     PIN_ODR_LOW(GPIOE_PIN4) |              \
                                     PIN_ODR_LOW(GPIOE_PIN5) |              \
                                     PIN_ODR_LOW(GPIOE_PIN6) |              \
                                     PIN_ODR_LOW(GPIOE_PIN7) |              \
                                     PIN_ODR_LOW(GPIOE_PIN8) |              \
                                     PIN_ODR_LOW(GPIOE_PIN9) |              \
                                     PIN_ODR_LOW(GPIOE_PIN10) |             \
                                     PIN_ODR_LOW(GPIOE_PIN11) |             \
                                     PIN_ODR_LOW(GPIOE_PIN12) |             \
                                     PIN_ODR_LOW(GPIOE_PIN13) |             \
                                     PIN_ODR_LOW(GPIOE_PIN14) |             \
                                     PIN_ODR_LOW(GPIOE_PIN15))
#define VAL_GPIOE_AFRL              (PIN_AFIO_AF(GPIOE_PIN0, 0) |           \
                                     PIN_AFIO_AF(GPIOE_PIN1, 0) |           \
                                     PIN_AFIO_AF(GPIOE_PIN2, 0) |           \
                                     PIN_AFIO_AF(GPIOE_PIN3, 0) |           \
                                     PIN_AFIO_AF(GPIOE_PIN4, 0) |           \
                                     PIN_AFIO_AF(GPIOE_PIN5, 0) |           \
                                     PIN_AFIO_AF(GPIOE_PIN6, 0) |           \
                                     PIN_AFIO_AF(GPIOE_PIN7, 0))
#define VAL_GPIOE_AFRH              (PIN_AFIO_AF(GPIOE_PIN8, 0) |           \
                                     PIN_AFIO_AF(GPIOE_PIN9, 0) |           \
                                     PIN_AFIO_AF(GPIOE_PIN10, 0) |          \
                                     PIN_AFIO_AF(GPIOE_PIN11, 0) |          \
                                     PIN_AFIO_AF(GPIOE_PIN12, 0) |          \
                                     PIN_AFIO_AF(GPIOE_PIN13, 0) |          \
                                     PIN_AFIO_AF(GPIOE_PIN14, 0) |          \
                                     PIN_AFIO_AF(GPIOE_PIN15, 0))

/*
 * GPIOF setup:
 *
 * PF0  - OSC_IN                    (input floating).
 * PF1  - OSC_OUT                   (input floating).
 * PF2  - PIN2                      (input floating).
 * PF3  - PIN3                      (input floating).
 * PF4  - PIN4                      (input floating).
 * PF5  - PIN5                      (input floating).
 * PF6  - PIN6                      (input floating).
 * PF7  - PIN7                      (input floating).
 * PF8  - PIN8                      (input floating).
 * PF9  - PIN9                      (input floating).
 * PF10 - PIN10                     (input floating).
 * PF11 - PIN11                     (input floating).
 * PF12 - PIN12                     (input floating).
 * PF13 - PIN13                     (input floating).
 * PF14 - PIN14                     (input floating).
 * PF15 - PIN15                     (input floating).
 */
#define VAL_GPIOF_MODER             (PIN_MODE_INPUT(GPIOF_OSC_IN) |         \
                                     PIN_MODE_INPUT(GPIOF_OSC_OUT) |        \
                                     PIN_MODE_INPUT(GPIOF_PIN2) |           \
                                     PIN_MODE_INPUT(GPIOF_PIN3) |           \
                                     PIN_MODE_INPUT(GPIOF_PIN4) |           \
                                     PIN_MODE_INPUT(GPIOF_PIN5) |           \
                                     PIN_MODE_INPUT(GPIOF_PIN6) |           \
                                     PIN_MODE_INPUT(GPIOF_PIN7) |           \
                                     PIN_MODE_INPUT(GPIOF_PIN8) |           \
                                     PIN_MODE_INPUT(GPIOF_PIN9) |           \
                                     PIN_MODE_INPUT(GPIOF_PIN10) |          \
                                     PIN_MODE_INPUT(GPIOF_PIN11) |          \
                                     PIN_MODE_INPUT(GPIOF_PIN12) |          \
                                     PIN_MODE_INPUT(GPIOF_PIN13) |          \
                                     PIN_MODE_INPUT(GPIOF_PIN14) |          \
                                     PIN_MODE_INPUT(GPIOF_PIN15))
#define VAL_GPIOF_OTYPER            (PIN_OTYPE_PUSHPULL(GPIOF_OSC_IN) |     \
                                     PIN_OTYPE_PUSHPULL(GPIOF_OSC_OUT) |    \
                                     PIN_OTYPE_PUSHPULL(GPIOF_PIN2) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOF_PIN3) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOF_PIN4) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOF_PIN5) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOF_PIN6) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOF_PIN7) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOF_PIN8) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOF_PIN9) |       \
                                     PIN_OTYPE_PUSHPULL(GPIOF_PIN10) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOF_PIN11) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOF_PIN12) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOF_PIN13) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOF_PIN14) |      \
                                     PIN_OTYPE_PUSHPULL(GPIOF_PIN15))
#define VAL_GPIOF_OSPEEDR           (PIN_OSPEED_50M(GPIOF_OSC_IN) |         \
                                     PIN_OSPEED_50M(GPIOF_OSC_OUT) |        \
                                     PIN_OSPEED_2M(GPIOF_PIN2) |            \
                                     PIN_OSPEED_2M(GPIOF_PIN3) |            \
                                     PIN_OSPEED_2M(GPIOF_PIN4) |            \
                                     PIN_OSPEED_2M(GPIOF_PIN5) |            \
                                     PIN_OSPEED_2M(GPIOF_PIN6) |            \
                                     PIN_OSPEED_2M(GPIOF_PIN7) |            \
                                     PIN_OSPEED_2M(GPIOF_PIN8) |            \
                                     PIN_OSPEED_2M(GPIOF_PIN9) |            \
                                     PIN_OSPEED_2M(GPIOF_PIN10) |           \
                                     PIN_OSPEED_2M(GPIOF_PIN11) |           \
                                     PIN_OSPEED_2M(GPIOF_PIN12) |           \
                                     PIN_OSPEED_2M(GPIOF_PIN13) |           \
                                     PIN_OSPEED_2M(GPIOF_PIN14) |           \
                                     PIN_OSPEED_2M(GPIOF_PIN15))
#define VAL_GPIOF_PUPDR             (PIN_PUPDR_FLOATING(GPIOF_OSC_IN) |     \
                                     PIN_PUPDR_FLOATING(GPIOF_OSC_OUT) |    \
                                     PIN_PUPDR_FLOATING(GPIOF_PIN2) |       \
                                     PIN_PUPDR_FLOATING(GPIOF_PIN3) |       \
                                     PIN_PUPDR_FLOATING(GPIOF_PIN4) |       \
                                     PIN_PUPDR_FLOATING(GPIOF_PIN5) |       \
                                     PIN_PUPDR_FLOATING(GPIOF_PIN6) |       \
                                     PIN_PUPDR_FLOATING(GPIOF_PIN7) |       \
                                     PIN_PUPDR_FLOATING(GPIOF_PIN8) |       \
                                     PIN_PUPDR_FLOATING(GPIOF_PIN9) |       \
                                     PIN_PUPDR_FLOATING(GPIOF_PIN10) |      \
                                     PIN_PUPDR_FLOATING(GPIOF_PIN11) |      \
                                     PIN_PUPDR_FLOATING(GPIOF_PIN12) |      \
                                     PIN_PUPDR_FLOATING(GPIOF_PIN13) |      \
                                     PIN_PUPDR_FLOATING(GPIOF_PIN14) |      \
                                     PIN_PUPDR_FLOATING(GPIOF_PIN15))
#define VAL_GPIOF_ODR               (PIN_ODR_LOW(GPIOF_OSC_IN) |            \
                                     PIN_ODR_LOW(GPIOF_OSC_OUT) |           \
                                     PIN_ODR_LOW(GPIOF_PIN2) |              \
                                     PIN_ODR_LOW(GPIOF_PIN3) |              \
                                     PIN_ODR_LOW(GPIOF_PIN4) |              \
                                     PIN_ODR_LOW(GPIOF_PIN5) |              \
                                     PIN_ODR_LOW(GPIOF_PIN6) |              \
                                     PIN_ODR_LOW(GPIOF_PIN7) |              \
                                     PIN_ODR_LOW(GPIOF_PIN8) |              \
                                     PIN_ODR_LOW(GPIOF_PIN9) |              \
                                     PIN_ODR_LOW(GPIOF_PIN10) |             \
                                     PIN_ODR_LOW(GPIOF_PIN11) |             \
                                     PIN_ODR_LOW(GPIOF_PIN12) |             \
                                     PIN_ODR_LOW(GPIOF_PIN13) |             \
                                     PIN_ODR_LOW(GPIOF_PIN14) |             \
                                     PIN_ODR_LOW(GPIOF_PIN15))
#define VAL_GPIOF_AFRL              (PIN_AFIO_AF(GPIOF_OSC_IN, 0) |         \
                                     PIN_AFIO_AF(GPIOF_OSC_OUT, 0) |        \
                                     PIN_AFIO_AF(GPIOF_PIN2, 0) |           \
                                     PIN_AFIO_AF(GPIOF_PIN3, 0) |           \
                                     PIN_AFIO_AF(GPIOF_PIN4, 0) |           \
                                     PIN_AFIO_AF(GPIOF_PIN5, 0) |           \
                                     PIN_AFIO_AF(GPIOF_PIN6, 0) |           \
                                     PIN_AFIO_AF(GPIOF_PIN7, 0))
#define VAL_GPIOF_AFRH              (PIN_AFIO_AF(GPIOF_PIN8, 0) |           \
                                     PIN_AFIO_AF(GPIOF_PIN9, 0) |           \
                                     PIN_AFIO_AF(GPIOF_PIN10, 0) |          \
                                     PIN_AFIO_AF(GPIOF_PIN11, 0) |          \
                                     PIN_AFIO_AF(GPIOF_PIN12, 0) |          \
                                     PIN_AFIO_AF(GPIOF_PIN13, 0) |          \
                                     PIN_AFIO_AF(GPIOF_PIN14, 0) |          \
                                     PIN_AFIO_AF(GPIOF_PIN15, 0))

/*
 * USB bus activation macro, required by the USB driver.
 */
#define usb_lld_connect_bus(usbp) { \
  palSetPadMode(GPIOA, GPIOA_USB_DP, PAL_MODE_ALTERNATE(14)); \
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
