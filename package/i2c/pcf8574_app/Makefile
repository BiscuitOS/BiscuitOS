################################################
#
# pcf8574_app
#
################################################
PK_PCF8574_APP_NAME        := pcf8574_app
PK_PCF8574_APP_VERSION     := $(CONFIG_PK_PCF8574_APP_VERSION)
PK_PCF8574_APP_SITE        := $(CONFIG_PK_PCF8574_APP_URL)
PK_PCF8574_APP_GITHUB      := $(CONFIG_PK_PCF8574_APP_GITHUB)
PK_PCF8574_APP_SUBNAME     :=
PK_PCF8574_APP_BUILDARCH   := $(CONFIG_PK_PCF8574_APP_BUILDARCH)
PK_PCF8574_APP_DIR         := $(srctree)/package/i2c/pcf8574_app
PK_PCF8574_APP_PATCH       := $(PK_PCF8574_APP_DIR)/patch
PK_PCF8574_APP_BSBIT       := pcf8574_app-$(PK_PCF8574_APP_VERSION).bsbit
PK_PCF8574_APP_OUT         :=
PK_PCF8574_APP_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_PCF8574_APP_TAR         := $(CONFIG_PK_PCF8574_APP_TAR)
PK_PCF8574_APP_PACKAGE     :=
PK_PCF8574_APP_CONFIG      := $(CONFIG_PK_PCF8574_APP_CONFIG)
SUB_TARGET                  += $(PK_PCF8574_APP_DIR)/build

PK_PCF8574_APP_sh = $(CONFIG_SHELL) $(PK_PCF8574_APP_SCRIPTS) \
                 $1X \
                 $(PK_PCF8574_APP_NAME)X \
                 $(PK_PCF8574_APP_VERSION)X \
                 $(PK_PCF8574_APP_SITE)X \
                 $(PK_PCF8574_APP_GITHUB)X \
                 $(PK_PCF8574_APP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PCF8574_APP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PCF8574_APP_SUBNAME)X \
                 $(CONFIG_PK_PCF8574_APP_CONFIG)X \
                 $(CONFIG_PK_PCF8574_APP_LIBPATH)X \
                 $(CONFIG_PK_PCF8574_APP_CPPFLAGS)X \
                 $(CONFIG_PK_PCF8574_APP_DPKCONFIG)X \
                 $(CONFIG_PK_PCF8574_APP_CFLAGS)X \
                 $(CONFIG_PK_PCF8574_APP_LDFLAGS)X \
                 $(CONFIG_PK_PCF8574_APP_CXXFLAGS)X \
                 $(CONFIG_PK_PCF8574_APP_ASFLAGS)X \
                 $(PK_PCF8574_APP_BSBIT)X \
                 $(PK_PCF8574_APP_BUILDARCH)X \
		 $(PK_PCF8574_APP_CSRCFILE)X \
                 $(CONFIG_PK_PCF8574_APP_SRCFILE)X \
                 $(CONFIG_PK_PCF8574_APP_CSRCFILE)

$(PK_PCF8574_APP_DIR)/build: FORCE
	$(Q)$(call PK_PCF8574_APP_sh,$(srctree))
