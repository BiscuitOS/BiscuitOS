ZONE-$(CONFIG_PK_ZONE_ALLOC_ZONE_DMA)		+= BiscuitOS-ZONE-alloc-page-ZONE_DMA/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/ZONE/%/Makefile, $(ZONE-y))

include $(PACKAGE_MAKEDIR)
