################################################
#
# LDD_i2c_bus
#
################################################
PK_LDD_I2C_BUS_NAME        := LDD_i2c_bus
PK_LDD_I2C_BUS_VERSION     := $(CONFIG_PK_LDD_I2C_BUS_VERSION)
PK_LDD_I2C_BUS_SITE        := $(CONFIG_PK_LDD_I2C_BUS_URL)
PK_LDD_I2C_BUS_GITHUB      := $(CONFIG_PK_LDD_I2C_BUS_GITHUB)
PK_LDD_I2C_BUS_SUBNAME     :=
PK_LDD_I2C_BUS_BUILDARCH   := $(CONFIG_PK_LDD_I2C_BUS_BUILDARCH)
PK_LDD_I2C_BUS_DIR         := $(srctree)/package/LDD_i2c_bus
PK_LDD_I2C_BUS_PATCH       := $(PK_LDD_I2C_BUS_DIR)/patch
PK_LDD_I2C_BUS_BSBIT       := LDD_i2c_bus-$(PK_LDD_I2C_BUS_VERSION).bsbit
PK_LDD_I2C_BUS_OUT         :=
PK_LDD_I2C_BUS_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_LDD_I2C_BUS_TAR         := $(CONFIG_PK_LDD_I2C_BUS_TAR)
PK_LDD_I2C_BUS_PACKAGE     :=
PK_LDD_I2C_BUS_CONFIG      := $(CONFIG_PK_LDD_I2C_BUS_CONFIG)
SUB_TARGET                  += $(PK_LDD_I2C_BUS_DIR)/build

PK_LDD_I2C_BUS_sh = $(CONFIG_SHELL) $(PK_LDD_I2C_BUS_SCRIPTS) \
                 $1X \
                 $(PK_LDD_I2C_BUS_NAME)X \
                 $(PK_LDD_I2C_BUS_VERSION)X \
                 $(PK_LDD_I2C_BUS_SITE)X \
                 $(PK_LDD_I2C_BUS_GITHUB)X \
                 $(PK_LDD_I2C_BUS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LDD_I2C_BUS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LDD_I2C_BUS_SUBNAME)X \
                 $(CONFIG_PK_LDD_I2C_BUS_CONFIG)X \
                 $(CONFIG_PK_LDD_I2C_BUS_LIBPATH)X \
                 $(CONFIG_PK_LDD_I2C_BUS_CPPFLAGS)X \
                 $(CONFIG_PK_LDD_I2C_BUS_DPKCONFIG)X \
                 $(CONFIG_PK_LDD_I2C_BUS_CFLAGS)X \
                 $(CONFIG_PK_LDD_I2C_BUS_LDFLAGS)X \
                 $(CONFIG_PK_LDD_I2C_BUS_CXXFLAGS)X \
                 $(CONFIG_PK_LDD_I2C_BUS_ASFLAGS)X \
                 $(PK_LDD_I2C_BUS_BSBIT)X \
                 $(PK_LDD_I2C_BUS_BUILDARCH)X \
		 $(PK_LDD_I2C_BUS_CSRCFILE)X \
                 $(CONFIG_PK_LDD_I2C_BUS_SRCFILE)X \
                 $(CONFIG_PK_LDD_I2C_BUS_CSRCFILE)

$(PK_LDD_I2C_BUS_DIR)/build: FORCE
	$(Q)$(call PK_LDD_I2C_BUS_sh,$(srctree))
