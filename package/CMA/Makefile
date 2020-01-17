CMA-$(CONFIG_PK_CMA_APP)		+= CMA_app/
CMA-$(CONFIG_PK_CMA_MOD)		+= CMA_module/
CMA-$(CONFIG_PK_CMA_MONITOR)		+= CMA_monitor/
CMA-$(CONFIG_PK_CMA_AREA_APP)		+= CMA_area_app/
CMA-$(CONFIG_PK_CMA_AREA_MOD)		+= CMA_area_module/
CMA-$(CONFIG_PK_CMA_DEBRIS_APP)		+= CMA_debris_app/
CMA-$(CONFIG_PK_CMA_DEBRIS_MOD)		+= CMA_debris_module/
CMA-$(CONFIG_PK_CMA_DEBRIS_LONG_APP)	+= CMA_debris_long_app/
CMA-$(CONFIG_PK_CMA_DEBRIS_LONG_MOD)	+= CMA_debris_long_module/
CMA-$(CONFIG_PK_CMA_ZOMB_APP)		+= CMA_zomb_app/
CMA-$(CONFIG_PK_CMA_ZOMB_MOD)		+= CMA_zomb_module/
CMA-$(CONFIG_PK_CMA_PLANT_APP)		+= CMA_plant_app/
CMA-$(CONFIG_PK_CMA_PLANT_MOD)		+= CMA_plant_module/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/CMA/%/Makefile, $(CMA-y))

include $(PACKAGE_MAKEDIR)
