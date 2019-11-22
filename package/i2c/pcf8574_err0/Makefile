################################################
#
# pcf8574_err0
#
################################################
PK_PCF8574_ERR0_NAME        := pcf8574_err0
PK_PCF8574_ERR0_VERSION     := $(CONFIG_PK_PCF8574_ERR0_VERSION)
PK_PCF8574_ERR0_SITE        := $(CONFIG_PK_PCF8574_ERR0_URL)
PK_PCF8574_ERR0_GITHUB      := $(CONFIG_PK_PCF8574_ERR0_GITHUB)
PK_PCF8574_ERR0_SUBNAME     :=
PK_PCF8574_ERR0_BUILDARCH   := $(CONFIG_PK_PCF8574_ERR0_BUILDARCH)
PK_PCF8574_ERR0_DIR         := $(srctree)/package/i2c/pcf8574_err0
PK_PCF8574_ERR0_PATCH       := $(PK_PCF8574_ERR0_DIR)/patch
PK_PCF8574_ERR0_BSBIT       := pcf8574_err0-$(PK_PCF8574_ERR0_VERSION).bsbit
PK_PCF8574_ERR0_OUT         :=
PK_PCF8574_ERR0_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PCF8574_ERR0_TAR         := $(CONFIG_PK_PCF8574_ERR0_TAR)
PK_PCF8574_ERR0_PACKAGE     :=
PK_PCF8574_ERR0_CONFIG      := $(CONFIG_PK_PCF8574_ERR0_CONFIG)
SUB_TARGET                  += $(PK_PCF8574_ERR0_DIR)/build

PK_PCF8574_ERR0_sh = $(CONFIG_SHELL) $(PK_PCF8574_ERR0_SCRIPTS) \
                 $1X \
                 $(PK_PCF8574_ERR0_NAME)X \
                 $(PK_PCF8574_ERR0_VERSION)X \
                 $(PK_PCF8574_ERR0_SITE)X \
                 $(PK_PCF8574_ERR0_GITHUB)X \
                 $(PK_PCF8574_ERR0_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PCF8574_ERR0_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PCF8574_ERR0_SUBNAME)X \
                 $(CONFIG_PK_PCF8574_ERR0_CONFIG)X \
                 $(CONFIG_PK_PCF8574_ERR0_LIBPATH)X \
                 $(CONFIG_PK_PCF8574_ERR0_CPPFLAGS)X \
                 $(CONFIG_PK_PCF8574_ERR0_DPKCONFIG)X \
                 $(CONFIG_PK_PCF8574_ERR0_CFLAGS)X \
                 $(CONFIG_PK_PCF8574_ERR0_LDFLAGS)X \
                 $(CONFIG_PK_PCF8574_ERR0_CXXFLAGS)X \
                 $(CONFIG_PK_PCF8574_ERR0_ASFLAGS)X \
                 $(PK_PCF8574_ERR0_BSBIT)X \
                 $(PK_PCF8574_ERR0_BUILDARCH)X \
		 $(PK_PCF8574_ERR0_CSRCFILE)X \
                 $(CONFIG_PK_PCF8574_ERR0_SRCFILE)X \
                 $(CONFIG_PK_PCF8574_ERR0_CSRCFILE)

$(PK_PCF8574_ERR0_DIR)/build: FORCE
	$(Q)$(call PK_PCF8574_ERR0_sh,$(srctree))
