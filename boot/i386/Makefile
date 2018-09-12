I386-$(CONFIG_BOOT_SEABIOS)           += SeaBIOS/

I386_MAKEDIR := $(patsubst %/, $(srctree)/boot/i386/%/Makefile, $(I386-y))

include $(I386_MAKEDIR)
