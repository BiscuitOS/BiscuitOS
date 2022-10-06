PIO-$(CONFIG_PK_PIO_SYNC_BROILER)		+= Broiler-Synchronous-pio/
PIO-$(CONFIG_PK_PIO_SYNC_INKERNEL)		+= Broiler-Synchronous-pio-In-Kernel/
PIO-$(CONFIG_PK_PIO_SYNC_PCI)			+= Broiler-Synchronous-pio-PCI/
PIO-$(CONFIG_PK_PIO_ASYNC_BROILER)		+= Broiler-Asynchronous-pio/
PIO-$(CONFIG_PK_PIO_ASYNC_PCI)			+= Broiler-Asynchronous-pio-PCI/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/pio/%/Makefile, $(PIO-y))

include $(PACKAGE_MAKEDIR)
