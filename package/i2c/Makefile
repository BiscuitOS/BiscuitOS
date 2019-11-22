i2c-$(CONFIG_PK_LM75A_APP)		+= lm75a_app/
i2c-$(CONFIG_PK_LM75A_MOD)		+= lm75a_module/
i2c-$(CONFIG_PK_LM75A_INPUT_APP)	+= lm75a_input_app/
i2c-$(CONFIG_PK_LM75A_INPUT_MOD)	+= lm75a_input_module/
i2c-$(CONFIG_PK_LM75A_WDOG)		+= lm75a_thermal_watchdog/
i2c-$(CONFIG_PK_AT24C08_APP)		+= at24c08_app/
i2c-$(CONFIG_PK_AT24C08_CHEST)		+= at24c08_chest/
i2c-$(CONFIG_PK_AT24C08_MOD)		+= at24c08_module/
i2c-$(CONFIG_PK_PCF8574_APP)		+= pcf8574_app/
i2c-$(CONFIG_PK_PCF8574_MOD)		+= pcf8574_module/
i2c-$(CONFIG_PK_PCF8574_INTR_MOD)	+= pcf8574_intr_module/
i2c-$(CONFIG_PK_PCF8574_TRAFFIC)	+= pcf8574_traffic/
i2c-$(CONFIG_PK_PCF8574_ERR0)		+= pcf8574_err0/
i2c-$(CONFIG_PK_I2C_BUS)		+= i2c_bus/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/i2c/%/Makefile, $(i2c-y))

include $(PACKAGE_MAKEDIR)
