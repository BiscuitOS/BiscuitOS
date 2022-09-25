MMIO-$(CONFIG_PK_MMIO_SYNC_BROILER)		+= Broiler-Synchronous-mmio/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/mmio/%/Makefile, $(MMIO-y))

include $(PACKAGE_MAKEDIR)
