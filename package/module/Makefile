module-$(CONFIG_PK_CORE_MOD)		+= module_core/
module-$(CONFIG_PK_APP_PROJ)		+= Application_project/
module-$(CONFIG_PK_MOD_PROJ)		+= Module_project/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/module/%/Makefile, $(module-y))

include $(PACKAGE_MAKEDIR)
