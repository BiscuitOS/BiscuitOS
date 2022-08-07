PIO-$(CONFIG_PK_PIO_BROILER)		+= BiscuitOS-Broiler-pio/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/pio/%/Makefile, $(PIO-y))

include $(PACKAGE_MAKEDIR)
