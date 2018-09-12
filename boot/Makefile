BOOT-$(CONFIG_MACH_I386)           += i386/

BOOT_MAKEDIR := $(patsubst %/, $(srctree)/boot/%/Makefile, $(BOOT-y))

include $(BOOT_MAKEDIR)
