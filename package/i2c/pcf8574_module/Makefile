################################################
#
# pcf8574_module
#
################################################
PK_PCF8574_MOD_NAME        := pcf8574_module
PK_PCF8574_MOD_VERSION     := $(CONFIG_PK_PCF8574_MOD_VERSION)
PK_PCF8574_MOD_SITE        := $(CONFIG_PK_PCF8574_MOD_URL)
PK_PCF8574_MOD_GITHUB      := $(CONFIG_PK_PCF8574_MOD_GITHUB)
PK_PCF8574_MOD_SUBNAME     :=
PK_PCF8574_MOD_BUILDARCH   := $(CONFIG_PK_PCF8574_MOD_BUILDARCH)
PK_PCF8574_MOD_DIR         := $(srctree)/package/i2c/pcf8574_module
PK_PCF8574_MOD_PATCH       := $(PK_PCF8574_MOD_DIR)/patch
PK_PCF8574_MOD_BSBIT       := pcf8574_module-$(PK_PCF8574_MOD_VERSION).bsbit
PK_PCF8574_MOD_OUT         :=
PK_PCF8574_MOD_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PCF8574_MOD_TAR         := $(CONFIG_PK_PCF8574_MOD_TAR)
PK_PCF8574_MOD_PACKAGE     :=
PK_PCF8574_MOD_CONFIG      := $(CONFIG_PK_PCF8574_MOD_CONFIG)
SUB_TARGET                  += $(PK_PCF8574_MOD_DIR)/build

PK_PCF8574_MOD_sh = $(CONFIG_SHELL) $(PK_PCF8574_MOD_SCRIPTS) \
                 $1X \
                 $(PK_PCF8574_MOD_NAME)X \
                 $(PK_PCF8574_MOD_VERSION)X \
                 $(PK_PCF8574_MOD_SITE)X \
                 $(PK_PCF8574_MOD_GITHUB)X \
                 $(PK_PCF8574_MOD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PCF8574_MOD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PCF8574_MOD_SUBNAME)X \
                 $(CONFIG_PK_PCF8574_MOD_CONFIG)X \
                 $(CONFIG_PK_PCF8574_MOD_LIBPATH)X \
                 $(CONFIG_PK_PCF8574_MOD_CPPFLAGS)X \
                 $(CONFIG_PK_PCF8574_MOD_DPKCONFIG)X \
                 $(CONFIG_PK_PCF8574_MOD_CFLAGS)X \
                 $(CONFIG_PK_PCF8574_MOD_LDFLAGS)X \
                 $(CONFIG_PK_PCF8574_MOD_CXXFLAGS)X \
                 $(CONFIG_PK_PCF8574_MOD_ASFLAGS)X \
                 $(PK_PCF8574_MOD_BSBIT)X \
                 $(PK_PCF8574_MOD_BUILDARCH)X \
		 $(PK_PCF8574_MOD_CSRCFILE)X \
                 $(CONFIG_PK_PCF8574_MOD_SRCFILE)X \
                 $(CONFIG_PK_PCF8574_MOD_CSRCFILE)

$(PK_PCF8574_MOD_DIR)/build: FORCE
	$(Q)$(call PK_PCF8574_MOD_sh,$(srctree))
