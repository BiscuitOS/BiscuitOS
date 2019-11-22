################################################
#
# at24c08_chest
#
################################################
PK_AT24C08_CHEST_NAME        := at24c08_chest
PK_AT24C08_CHEST_VERSION     := $(CONFIG_PK_AT24C08_CHEST_VERSION)
PK_AT24C08_CHEST_SITE        := $(CONFIG_PK_AT24C08_CHEST_URL)
PK_AT24C08_CHEST_GITHUB      := $(CONFIG_PK_AT24C08_CHEST_GITHUB)
PK_AT24C08_CHEST_SUBNAME     :=
PK_AT24C08_CHEST_BUILDARCH   := $(CONFIG_PK_AT24C08_CHEST_BUILDARCH)
PK_AT24C08_CHEST_DIR         := $(srctree)/package/i2c/at24c08_chest
PK_AT24C08_CHEST_PATCH       := $(PK_AT24C08_CHEST_DIR)/patch
PK_AT24C08_CHEST_BSBIT       := at24c08_chest-$(PK_AT24C08_CHEST_VERSION).bsbit
PK_AT24C08_CHEST_OUT         :=
PK_AT24C08_CHEST_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_AT24C08_CHEST_TAR         := $(CONFIG_PK_AT24C08_CHEST_TAR)
PK_AT24C08_CHEST_PACKAGE     :=
PK_AT24C08_CHEST_CONFIG      := $(CONFIG_PK_AT24C08_CHEST_CONFIG)
SUB_TARGET                  += $(PK_AT24C08_CHEST_DIR)/build

PK_AT24C08_CHEST_sh = $(CONFIG_SHELL) $(PK_AT24C08_CHEST_SCRIPTS) \
                 $1X \
                 $(PK_AT24C08_CHEST_NAME)X \
                 $(PK_AT24C08_CHEST_VERSION)X \
                 $(PK_AT24C08_CHEST_SITE)X \
                 $(PK_AT24C08_CHEST_GITHUB)X \
                 $(PK_AT24C08_CHEST_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_AT24C08_CHEST_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_AT24C08_CHEST_SUBNAME)X \
                 $(CONFIG_PK_AT24C08_CHEST_CONFIG)X \
                 $(CONFIG_PK_AT24C08_CHEST_LIBPATH)X \
                 $(CONFIG_PK_AT24C08_CHEST_CPPFLAGS)X \
                 $(CONFIG_PK_AT24C08_CHEST_DPKCONFIG)X \
                 $(CONFIG_PK_AT24C08_CHEST_CFLAGS)X \
                 $(CONFIG_PK_AT24C08_CHEST_LDFLAGS)X \
                 $(CONFIG_PK_AT24C08_CHEST_CXXFLAGS)X \
                 $(CONFIG_PK_AT24C08_CHEST_ASFLAGS)X \
                 $(PK_AT24C08_CHEST_BSBIT)X \
                 $(PK_AT24C08_CHEST_BUILDARCH)X \
		 $(PK_AT24C08_CHEST_CSRCFILE)X \
                 $(CONFIG_PK_AT24C08_CHEST_SRCFILE)X \
                 $(CONFIG_PK_AT24C08_CHEST_CSRCFILE)

$(PK_AT24C08_CHEST_DIR)/build: FORCE
	$(Q)$(call PK_AT24C08_CHEST_sh,$(srctree))
