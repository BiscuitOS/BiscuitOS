################################################
#
# at24c08_app
#
################################################
PK_AT24C08_APP_NAME        := at24c08_app
PK_AT24C08_APP_VERSION     := $(CONFIG_PK_AT24C08_APP_VERSION)
PK_AT24C08_APP_SITE        := $(CONFIG_PK_AT24C08_APP_URL)
PK_AT24C08_APP_GITHUB      := $(CONFIG_PK_AT24C08_APP_GITHUB)
PK_AT24C08_APP_SUBNAME     :=
PK_AT24C08_APP_BUILDARCH   := $(CONFIG_PK_AT24C08_APP_BUILDARCH)
PK_AT24C08_APP_DIR         := $(srctree)/package/i2c/at24c08_app
PK_AT24C08_APP_PATCH       := $(PK_AT24C08_APP_DIR)/patch
PK_AT24C08_APP_BSBIT       := at24c08_app-$(PK_AT24C08_APP_VERSION).bsbit
PK_AT24C08_APP_OUT         :=
PK_AT24C08_APP_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_AT24C08_APP_TAR         := $(CONFIG_PK_AT24C08_APP_TAR)
PK_AT24C08_APP_PACKAGE     :=
PK_AT24C08_APP_CONFIG      := $(CONFIG_PK_AT24C08_APP_CONFIG)
SUB_TARGET                  += $(PK_AT24C08_APP_DIR)/build

PK_AT24C08_APP_sh = $(CONFIG_SHELL) $(PK_AT24C08_APP_SCRIPTS) \
                 $1X \
                 $(PK_AT24C08_APP_NAME)X \
                 $(PK_AT24C08_APP_VERSION)X \
                 $(PK_AT24C08_APP_SITE)X \
                 $(PK_AT24C08_APP_GITHUB)X \
                 $(PK_AT24C08_APP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_AT24C08_APP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_AT24C08_APP_SUBNAME)X \
                 $(CONFIG_PK_AT24C08_APP_CONFIG)X \
                 $(CONFIG_PK_AT24C08_APP_LIBPATH)X \
                 $(CONFIG_PK_AT24C08_APP_CPPFLAGS)X \
                 $(CONFIG_PK_AT24C08_APP_DPKCONFIG)X \
                 $(CONFIG_PK_AT24C08_APP_CFLAGS)X \
                 $(CONFIG_PK_AT24C08_APP_LDFLAGS)X \
                 $(CONFIG_PK_AT24C08_APP_CXXFLAGS)X \
                 $(CONFIG_PK_AT24C08_APP_ASFLAGS)X \
                 $(PK_AT24C08_APP_BSBIT)X \
                 $(PK_AT24C08_APP_BUILDARCH)X \
		 $(PK_AT24C08_APP_CSRCFILE)X \
                 $(CONFIG_PK_AT24C08_APP_SRCFILE)X \
                 $(CONFIG_PK_AT24C08_APP_CSRCFILE)

$(PK_AT24C08_APP_DIR)/build: FORCE
	$(Q)$(call PK_AT24C08_APP_sh,$(srctree))
