# List of the ChibiOS/RT ARMv7M generic port files.
PORTSRC = $(SRCDIR)/chibios_3.0.x/rt/ports/ARMCMx/chcore.c \
          $(SRCDIR)/chibios_3.0.x/rt/ports/ARMCMx/chcore_v7m.c
          
PORTASM = $(SRCDIR)/chibios_3.0.x/rt/ports/ARMCMx/compilers/GCC/chcoreasm_v7m.s

PORTINC = $(SRCDIR)/chibios_3.0.x/rt/ports/ARMCMx \
          $(SRCDIR)/chibios_3.0.x/rt/ports/ARMCMx/compilers/GCC
