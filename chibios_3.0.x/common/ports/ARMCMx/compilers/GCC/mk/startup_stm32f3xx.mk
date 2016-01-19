# List of the ChibiOS generic STM32F3xx startup and CMSIS files.
STARTUPSRC = $(SRCDIR)/chibios_3.0.x/common/ports/ARMCMx/compilers/GCC/crt1.c \
             $(SRCDIR)/chibios_3.0.x/common/ports/ARMCMx/compilers/GCC/vectors.c
          
STARTUPASM = $(SRCDIR)/chibios_3.0.x/common/ports/ARMCMx/compilers/GCC/crt0_v7m.s

STARTUPINC = $(SRCDIR)/chibios_3.0.x/common/ports/ARMCMx/devices/STM32F3xx \
             $(SRCDIR)/chibios_3.0.x/ext/CMSIS/include \
             $(SRCDIR)/chibios_3.0.x/ext/CMSIS/ST

STARTUPLD  = $(SRCDIR)/chibios_3.0.x/common/ports/ARMCMx/compilers/GCC/ld
