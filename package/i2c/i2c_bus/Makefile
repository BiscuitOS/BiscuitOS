################################################
#
# i2c_bus
#
################################################
PK_I2C_BUS_NAME        := i2c_bus
PK_I2C_BUS_VERSION     := $(CONFIG_PK_I2C_BUS_VERSION)
PK_I2C_BUS_SITE        := $(CONFIG_PK_I2C_BUS_URL)
PK_I2C_BUS_GITHUB      := $(CONFIG_PK_I2C_BUS_GITHUB)
PK_I2C_BUS_SUBNAME     :=
PK_I2C_BUS_BUILDARCH   := $(CONFIG_PK_I2C_BUS_BUILDARCH)
PK_I2C_BUS_DIR         := $(srctree)/package/i2c/i2c_bus
PK_I2C_BUS_PATCH       := $(PK_I2C_BUS_DIR)/patch
PK_I2C_BUS_BSBIT       := i2c_bus-$(PK_I2C_BUS_VERSION).bsbit
PK_I2C_BUS_OUT         :=
PK_I2C_BUS_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_I2C_BUS_TAR         := $(CONFIG_PK_I2C_BUS_TAR)
PK_I2C_BUS_PACKAGE     :=
PK_I2C_BUS_CONFIG      := $(CONFIG_PK_I2C_BUS_CONFIG)
SUB_TARGET                  += $(PK_I2C_BUS_DIR)/build

PK_I2C_BUS_sh = $(CONFIG_SHELL) $(PK_I2C_BUS_SCRIPTS) \
                 $1X \
                 $(PK_I2C_BUS_NAME)X \
                 $(PK_I2C_BUS_VERSION)X \
                 $(PK_I2C_BUS_SITE)X \
                 $(PK_I2C_BUS_GITHUB)X \
                 $(PK_I2C_BUS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_I2C_BUS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_I2C_BUS_SUBNAME)X \
                 $(CONFIG_PK_I2C_BUS_CONFIG)X \
                 $(CONFIG_PK_I2C_BUS_LIBPATH)X \
                 $(CONFIG_PK_I2C_BUS_CPPFLAGS)X \
                 $(CONFIG_PK_I2C_BUS_DPKCONFIG)X \
                 $(CONFIG_PK_I2C_BUS_CFLAGS)X \
                 $(CONFIG_PK_I2C_BUS_LDFLAGS)X \
                 $(CONFIG_PK_I2C_BUS_CXXFLAGS)X \
                 $(CONFIG_PK_I2C_BUS_ASFLAGS)X \
                 $(PK_I2C_BUS_BSBIT)X \
                 $(PK_I2C_BUS_BUILDARCH)X \
		 $(PK_I2C_BUS_CSRCFILE)X \
                 $(CONFIG_PK_I2C_BUS_SRCFILE)X \
                 $(CONFIG_PK_I2C_BUS_CSRCFILE)

$(PK_I2C_BUS_DIR)/build: FORCE
	$(Q)$(call PK_I2C_BUS_sh,$(srctree))
