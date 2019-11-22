module-$(CONFIG_PK_CORE_MOD)		+= module_core/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/module/%/Makefile, $(module-y))

include $(PACKAGE_MAKEDIR)
