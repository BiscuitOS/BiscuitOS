i2c-$(CONFIG_PK_LM75A_APP)		+= lm75a_app/
i2c-$(CONFIG_PK_LM75A_MOD)		+= lm75a_module/
i2c-$(CONFIG_PK_LM75A_INPUT_APP)	+= lm75a_input_app/
i2c-$(CONFIG_PK_LM75A_INPUT_MOD)	+= lm75a_input_module/
i2c-$(CONFIG_PK_LM75A_WDOG)		+= lm75a_thermal_watchdog/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/i2c/%/Makefile, $(i2c-y))

include $(PACKAGE_MAKEDIR)
