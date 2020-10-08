MMU_shrink-$(CONFIG_PK_SLAB_SHRINK_DEMO)	+= kernel-slab-shrink-base/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/MMU_shrink/%/Makefile, $(MMU_shrink-y))

include $(PACKAGE_MAKEDIR)
