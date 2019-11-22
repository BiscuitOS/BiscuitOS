################################################
#
# at24c08_module
#
################################################
PK_AT24C08_MOD_NAME        := at24c08_module
PK_AT24C08_MOD_VERSION     := $(CONFIG_PK_AT24C08_MOD_VERSION)
PK_AT24C08_MOD_SITE        := $(CONFIG_PK_AT24C08_MOD_URL)
PK_AT24C08_MOD_GITHUB      := $(CONFIG_PK_AT24C08_MOD_GITHUB)
PK_AT24C08_MOD_SUBNAME     :=
PK_AT24C08_MOD_BUILDARCH   := $(CONFIG_PK_AT24C08_MOD_BUILDARCH)
PK_AT24C08_MOD_DIR         := $(srctree)/package/i2c/at24c08_module
PK_AT24C08_MOD_PATCH       := $(PK_AT24C08_MOD_DIR)/patch
PK_AT24C08_MOD_BSBIT       := at24c08_module-$(PK_AT24C08_MOD_VERSION).bsbit
PK_AT24C08_MOD_OUT         :=
PK_AT24C08_MOD_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_AT24C08_MOD_TAR         := $(CONFIG_PK_AT24C08_MOD_TAR)
PK_AT24C08_MOD_PACKAGE     :=
PK_AT24C08_MOD_CONFIG      := $(CONFIG_PK_AT24C08_MOD_CONFIG)
SUB_TARGET                  += $(PK_AT24C08_MOD_DIR)/build

PK_AT24C08_MOD_sh = $(CONFIG_SHELL) $(PK_AT24C08_MOD_SCRIPTS) \
                 $1X \
                 $(PK_AT24C08_MOD_NAME)X \
                 $(PK_AT24C08_MOD_VERSION)X \
                 $(PK_AT24C08_MOD_SITE)X \
                 $(PK_AT24C08_MOD_GITHUB)X \
                 $(PK_AT24C08_MOD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_AT24C08_MOD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_AT24C08_MOD_SUBNAME)X \
                 $(CONFIG_PK_AT24C08_MOD_CONFIG)X \
                 $(CONFIG_PK_AT24C08_MOD_LIBPATH)X \
                 $(CONFIG_PK_AT24C08_MOD_CPPFLAGS)X \
                 $(CONFIG_PK_AT24C08_MOD_DPKCONFIG)X \
                 $(CONFIG_PK_AT24C08_MOD_CFLAGS)X \
                 $(CONFIG_PK_AT24C08_MOD_LDFLAGS)X \
                 $(CONFIG_PK_AT24C08_MOD_CXXFLAGS)X \
                 $(CONFIG_PK_AT24C08_MOD_ASFLAGS)X \
                 $(PK_AT24C08_MOD_BSBIT)X \
                 $(PK_AT24C08_MOD_BUILDARCH)X \
		 $(PK_AT24C08_MOD_CSRCFILE)X \
                 $(CONFIG_PK_AT24C08_MOD_SRCFILE)X \
                 $(CONFIG_PK_AT24C08_MOD_CSRCFILE)

$(PK_AT24C08_MOD_DIR)/build: FORCE
	$(Q)$(call PK_AT24C08_MOD_sh,$(srctree))
