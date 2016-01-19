# List of all the ChibiOS/RT kernel files, there is no need to remove the files
# from this list, you can disable parts of the kernel by editing chconf.h.
ifeq ($(USE_SMART_BUILD),yes)
CHCONF := $(strip $(shell cat chconf.h | egrep -e "define"))

KERNSRC := $(SRCDIR)/chibios_3.0.x/rt/src/chsys.c \
           $(SRCDIR)/chibios_3.0.x/rt/src/chdebug.c \
           $(SRCDIR)/chibios_3.0.x/rt/src/chvt.c \
           $(SRCDIR)/chibios_3.0.x/rt/src/chschd.c \
           $(SRCDIR)/chibios_3.0.x/rt/src/chthreads.c
ifneq ($(findstring CH_CFG_USE_TM TRUE,$(CHCONF)),)
KERNSRC += $(SRCDIR)/chibios_3.0.x/rt/src/chtm.c
endif
ifneq ($(findstring CH_DBG_STATISTICS TRUE,$(CHCONF)),)
KERNSRC += $(SRCDIR)/chibios_3.0.x/rt/src/chstats.c
endif
ifneq ($(findstring CH_CFG_USE_DYNAMIC TRUE,$(CHCONF)),)
KERNSRC += $(SRCDIR)/chibios_3.0.x/rt/src/chdynamic.c
endif
ifneq ($(findstring CH_CFG_USE_REGISTRY TRUE,$(CHCONF)),)
KERNSRC += $(SRCDIR)/chibios_3.0.x/rt/src/chregistry.c
endif
ifneq ($(findstring CH_CFG_USE_SEMAPHORES TRUE,$(CHCONF)),)
KERNSRC += $(SRCDIR)/chibios_3.0.x/rt/src/chsem.c
endif
ifneq ($(findstring CH_CFG_USE_MUTEXES TRUE,$(CHCONF)),)
KERNSRC += $(SRCDIR)/chibios_3.0.x/rt/src/chmtx.c
endif
ifneq ($(findstring CH_CFG_USE_CONDVARS TRUE,$(CHCONF)),)
KERNSRC += $(SRCDIR)/chibios_3.0.x/rt/src/chcond.c
endif
ifneq ($(findstring CH_CFG_USE_EVENTS TRUE,$(CHCONF)),)
KERNSRC += $(SRCDIR)/chibios_3.0.x/rt/src/chevents.c
endif
ifneq ($(findstring CH_CFG_USE_MESSAGES TRUE,$(CHCONF)),)
KERNSRC += $(SRCDIR)/chibios_3.0.x/rt/src/chmsg.c
endif
ifneq ($(findstring CH_CFG_USE_MAILBOXES TRUE,$(CHCONF)),)
KERNSRC += $(SRCDIR)/chibios_3.0.x/rt/src/chmboxes.c
endif
ifneq ($(findstring CH_CFG_USE_QUEUES TRUE,$(CHCONF)),)
KERNSRC += $(SRCDIR)/chibios_3.0.x/rt/src/chqueues.c
endif
ifneq ($(findstring CH_CFG_USE_MEMCORE TRUE,$(CHCONF)),)
KERNSRC += $(SRCDIR)/chibios_3.0.x/rt/src/chmemcore.c
endif
ifneq ($(findstring CH_CFG_USE_HEAP TRUE,$(CHCONF)),)
KERNSRC += $(SRCDIR)/chibios_3.0.x/rt/src/chheap.c
endif
ifneq ($(findstring CH_CFG_USE_MEMPOOLS TRUE,$(CHCONF)),)
KERNSRC += $(SRCDIR)/chibios_3.0.x/rt/src/chmempools.c
endif
else
KERNSRC = $(SRCDIR)/chibios_3.0.x/rt/src/chsys.c \
          $(SRCDIR)/chibios_3.0.x/rt/src/chdebug.c \
          $(SRCDIR)/chibios_3.0.x/rt/src/chvt.c \
          $(SRCDIR)/chibios_3.0.x/rt/src/chschd.c \
          $(SRCDIR)/chibios_3.0.x/rt/src/chthreads.c \
          $(SRCDIR)/chibios_3.0.x/rt/src/chtm.c \
          $(SRCDIR)/chibios_3.0.x/rt/src/chstats.c \
          $(SRCDIR)/chibios_3.0.x/rt/src/chdynamic.c \
          $(SRCDIR)/chibios_3.0.x/rt/src/chregistry.c \
          $(SRCDIR)/chibios_3.0.x/rt/src/chsem.c \
          $(SRCDIR)/chibios_3.0.x/rt/src/chmtx.c \
          $(SRCDIR)/chibios_3.0.x/rt/src/chcond.c \
          $(SRCDIR)/chibios_3.0.x/rt/src/chevents.c \
          $(SRCDIR)/chibios_3.0.x/rt/src/chmsg.c \
          $(SRCDIR)/chibios_3.0.x/rt/src/chmboxes.c \
          $(SRCDIR)/chibios_3.0.x/rt/src/chqueues.c \
          $(SRCDIR)/chibios_3.0.x/rt/src/chmemcore.c \
          $(SRCDIR)/chibios_3.0.x/rt/src/chheap.c \
          $(SRCDIR)/chibios_3.0.x/rt/src/chmempools.c
endif

# Required include directories
KERNINC = $(SRCDIR)/chibios_3.0.x/rt/include
