ZONE-$(CONFIG_PK_ZONE_ALLOC_ZONE_DMA)		+= BiscuitOS-ZONE-alloc-page-ZONE_DMA/
ZONE-$(CONFIG_PK_ZONE_DEVICE)			+= BiscuitOS-ZONE-DEVICE/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/ZONE/%/Makefile, $(ZONE-y))

include $(PACKAGE_MAKEDIR)
