# List of all the ChibiOS/HAL files, there is no need to remove the files
# from this list, you can disable parts of the HAL by editing halconf.h.
ifeq ($(USE_SMART_BUILD),yes)
HALCONF := $(strip $(shell cat halconf.h | egrep -e "define"))

HALSRC := $(SRCDIR)/chibios_3.0.x/hal/src/hal.c \
          $(SRCDIR)/chibios_3.0.x/hal/src/st.c \
          $(SRCDIR)/chibios_3.0.x/hal/src/hal_queues.c \
          $(SRCDIR)/chibios_3.0.x/hal/src/hal_mmcsd.c
ifneq ($(findstring HAL_USE_ADC TRUE,$(HALCONF)),)
HALSRC += $(SRCDIR)/chibios_3.0.x/hal/src/adc.c
endif
ifneq ($(findstring HAL_USE_CAN TRUE,$(HALCONF)),)
HALSRC += $(SRCDIR)/chibios_3.0.x/hal/src/can.c
endif
ifneq ($(findstring HAL_USE_DAC TRUE,$(HALCONF)),)
HALSRC += $(SRCDIR)/chibios_3.0.x/hal/src/dac.c
endif
ifneq ($(findstring HAL_USE_EXT TRUE,$(HALCONF)),)
HALSRC += $(SRCDIR)/chibios_3.0.x/hal/src/ext.c
endif
ifneq ($(findstring HAL_USE_GPT TRUE,$(HALCONF)),)
HALSRC += $(SRCDIR)/chibios_3.0.x/hal/src/gpt.c
endif
ifneq ($(findstring HAL_USE_I2C TRUE,$(HALCONF)),)
HALSRC += $(SRCDIR)/chibios_3.0.x/hal/src/i2c.c
endif
ifneq ($(findstring HAL_USE_I2S TRUE,$(HALCONF)),)
HALSRC += $(SRCDIR)/chibios_3.0.x/hal/src/i2s.c
endif
ifneq ($(findstring HAL_USE_ICU TRUE,$(HALCONF)),)
HALSRC += $(SRCDIR)/chibios_3.0.x/hal/src/icu.c
endif
ifneq ($(findstring HAL_USE_MAC TRUE,$(HALCONF)),)
HALSRC += $(SRCDIR)/chibios_3.0.x/hal/src/mac.c
endif
ifneq ($(findstring HAL_USE_MMC_SPI TRUE,$(HALCONF)),)
HALSRC += $(SRCDIR)/chibios_3.0.x/hal/src/mmc_spi.c
endif
ifneq ($(findstring HAL_USE_PAL TRUE,$(HALCONF)),)
HALSRC += $(SRCDIR)/chibios_3.0.x/hal/src/pal.c
endif
ifneq ($(findstring HAL_USE_PWM TRUE,$(HALCONF)),)
HALSRC += $(SRCDIR)/chibios_3.0.x/hal/src/pwm.c
endif
ifneq ($(findstring HAL_USE_RTC TRUE,$(HALCONF)),)
HALSRC += $(SRCDIR)/chibios_3.0.x/hal/src/rtc.c
endif
ifneq ($(findstring HAL_USE_SDC TRUE,$(HALCONF)),)
HALSRC += $(SRCDIR)/chibios_3.0.x/hal/src/sdc.c
endif
ifneq ($(findstring HAL_USE_SERIAL TRUE,$(HALCONF)),)
HALSRC += $(SRCDIR)/chibios_3.0.x/hal/src/serial.c
endif
ifneq ($(findstring HAL_USE_SERIAL_USB TRUE,$(HALCONF)),)
HALSRC += $(SRCDIR)/chibios_3.0.x/hal/src/serial_usb.c
endif
ifneq ($(findstring HAL_USE_SPI TRUE,$(HALCONF)),)
HALSRC += $(SRCDIR)/chibios_3.0.x/hal/src/spi.c
endif
ifneq ($(findstring HAL_USE_UART TRUE,$(HALCONF)),)
HALSRC += $(SRCDIR)/chibios_3.0.x/hal/src/uart.c
endif
ifneq ($(findstring HAL_USE_USB TRUE,$(HALCONF)),)
HALSRC += $(SRCDIR)/chibios_3.0.x/hal/src/usb.c
endif
else
HALSRC = $(SRCDIR)/chibios_3.0.x/hal/src/hal.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/hal_queues.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/hal_mmcsd.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/adc.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/can.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/dac.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/ext.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/gpt.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/i2c.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/i2s.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/icu.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/mac.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/mmc_spi.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/pal.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/pwm.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/rtc.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/sdc.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/serial.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/serial_usb.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/spi.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/st.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/uart.c \
         $(SRCDIR)/chibios_3.0.x/hal/src/usb.c
endif

# Required include directories
HALINC = $(SRCDIR)/chibios_3.0.x/hal/include
