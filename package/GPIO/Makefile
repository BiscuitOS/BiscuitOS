GPIO-$(CONFIG_PK_GPIO_MOD)	+= GPIO_module/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/GPIO/%/Makefile, $(GPIO-y))

include $(PACKAGE_MAKEDIR)
