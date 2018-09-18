BOOT-$(CONFIG_BOOT_SEABIOS)           += SeaBIOS/
BOOT-$(CONFIG_BOOT_UBOOT)             += u-boot/

BOOT_MAKEDIR := $(patsubst %/, $(srctree)/boot/%/Makefile, $(BOOT-y))

include $(BOOT_MAKEDIR)
