misc-$(CONFIG_PK_MISC_APP)	+= misc_app/
misc-$(CONFIG_PK_MISC_MOD)	+= misc_module/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/misc/%/Makefile, $(misc-y))

include $(PACKAGE_MAKEDIR)
