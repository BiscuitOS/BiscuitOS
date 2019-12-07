idr-$(CONFIG_PK_IDR_INIT)	+= idr_init/
idr-$(CONFIG_PK_DEFINE_IDR)	+= DEFINE_IDR/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/idr/%/Makefile, $(idr-y))

include $(PACKAGE_MAKEDIR)
