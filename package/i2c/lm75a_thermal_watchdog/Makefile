################################################
#
# lm75a_thermal_watchdog
#
################################################
PK_LM75A_WDOG_NAME        := lm75a_thermal_watchdog
PK_LM75A_WDOG_VERSION     := $(CONFIG_PK_LM75A_WDOG_VERSION)
PK_LM75A_WDOG_SITE        := $(CONFIG_PK_LM75A_WDOG_URL)
PK_LM75A_WDOG_GITHUB      := $(CONFIG_PK_LM75A_WDOG_GITHUB)
PK_LM75A_WDOG_SUBNAME     :=
PK_LM75A_WDOG_BUILDARCH   := $(CONFIG_PK_LM75A_WDOG_BUILDARCH)
PK_LM75A_WDOG_DIR         := $(srctree)/package/i2c/lm75a_thermal_watchdog
PK_LM75A_WDOG_PATCH       := $(PK_LM75A_WDOG_DIR)/patch
PK_LM75A_WDOG_BSBIT       := lm75a_thermal_watchdog-$(PK_LM75A_WDOG_VERSION).bsbit
PK_LM75A_WDOG_OUT         :=
PK_LM75A_WDOG_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_LM75A_WDOG_TAR         := $(CONFIG_PK_LM75A_WDOG_TAR)
PK_LM75A_WDOG_PACKAGE     :=
PK_LM75A_WDOG_CONFIG      := $(CONFIG_PK_LM75A_WDOG_CONFIG)
SUB_TARGET                  += $(PK_LM75A_WDOG_DIR)/build

PK_LM75A_WDOG_sh = $(CONFIG_SHELL) $(PK_LM75A_WDOG_SCRIPTS) \
                 $1X \
                 $(PK_LM75A_WDOG_NAME)X \
                 $(PK_LM75A_WDOG_VERSION)X \
                 $(PK_LM75A_WDOG_SITE)X \
                 $(PK_LM75A_WDOG_GITHUB)X \
                 $(PK_LM75A_WDOG_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LM75A_WDOG_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LM75A_WDOG_SUBNAME)X \
                 $(CONFIG_PK_LM75A_WDOG_CONFIG)X \
                 $(CONFIG_PK_LM75A_WDOG_LIBPATH)X \
                 $(CONFIG_PK_LM75A_WDOG_CPPFLAGS)X \
                 $(CONFIG_PK_LM75A_WDOG_DPKCONFIG)X \
                 $(CONFIG_PK_LM75A_WDOG_CFLAGS)X \
                 $(CONFIG_PK_LM75A_WDOG_LDFLAGS)X \
                 $(CONFIG_PK_LM75A_WDOG_CXXFLAGS)X \
                 $(CONFIG_PK_LM75A_WDOG_ASFLAGS)X \
                 $(PK_LM75A_WDOG_BSBIT)X \
                 $(PK_LM75A_WDOG_BUILDARCH)X \
		 $(PK_LM75A_WDOG_CSRCFILE)X \
                 $(CONFIG_PK_LM75A_WDOG_SRCFILE)X \
                 $(CONFIG_PK_LM75A_WDOG_CSRCFILE)

$(PK_LM75A_WDOG_DIR)/build: FORCE
	$(Q)$(call PK_LM75A_WDOG_sh,$(srctree))
