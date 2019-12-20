platform-$(CONFIG_PK_PLATFORM_ATTR_APP)		+= platform_attr_app/
platform-$(CONFIG_PK_PLATFORM_ATTR_MOD)		+= platform_attr_module/
platform-$(CONFIG_PK_PLATFORM_RES_APP)		+= platform_res_app/
platform-$(CONFIG_PK_PLATFORM_RES_MOD)		+= platform_res_module/
platform-$(CONFIG_PK_PLATFORM_RESDTS_APP)	+= platform_resDTS_app/
platform-$(CONFIG_PK_PLATFORM_RESDTS_MOD)	+= platform_resDTS_module/
platform-$(CONFIG_PK_PLATFORM_COREDTS_APP)	+= platform_coreDTS_app/
platform-$(CONFIG_PK_PLATFORM_COREDTS_MOD)	+= platform_coreDTS_module/
platform-$(CONFIG_PK_PLATFORM_CORE_APP)		+= platform_core_app/
platform-$(CONFIG_PK_PLATFORM_CORE_MOD)		+= platform_core_module/
platform-$(CONFIG_PK_PLATFORM_SIMPLE_MOD)	+= platform_simple_module/
platform-$(CONFIG_PK_PLATFORM_CHAR_MOD)		+= platform_char_module/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/platform/%/Makefile, $(platform-y))

include $(PACKAGE_MAKEDIR)
