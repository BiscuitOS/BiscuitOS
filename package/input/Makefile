input-$(CONFIG_PK_INPUT_APP)		+= input_app/
input-$(CONFIG_PK_INPUT_MOD)		+= input_module/
input-$(CONFIG_PK_INPUT_KEY_APP)	+= input_key_app/
input-$(CONFIG_PK_INPUT_KEY_MOD)	+= input_key_module/
input-$(CONFIG_PK_INPUT_TOUCH_APP)	+= input_touch_app/
input-$(CONFIG_PK_INPUT_TOUCH_MOD)	+= input_touch_module/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/input/%/Makefile, $(input-y))

include $(PACKAGE_MAKEDIR)
