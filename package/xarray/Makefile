xarray-$(CONFIG_PK_XARRAY_BASE)			+= xarray_base/
xarray-$(CONFIG_PK_XA_INIT_FLAGS)		+= xa_init_flags/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/xarray/%/Makefile, $(xarray-y))

include $(PACKAGE_MAKEDIR)
