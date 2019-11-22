CMA-$(CONFIG_PK_CMA_APP)	+= CMA_app/
CMA-$(CONFIG_PK_CMA_MOD)	+= CMA_module/
CMA-$(CONFIG_PK_CMA_AREA_APP)	+= CMA_area_app/
CMA-$(CONFIG_PK_CMA_AREA_MOD)	+= CMA_area_module/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/CMA/%/Makefile, $(CMA-y))

include $(PACKAGE_MAKEDIR)
