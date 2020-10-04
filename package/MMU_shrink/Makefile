MMU_shrink-$(CONFIG_PK_REGISTER_SHRINK)		+= register_shrink/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/MMU_shrink/%/Makefile, $(MMU_shrink-y))

include $(PACKAGE_MAKEDIR)
