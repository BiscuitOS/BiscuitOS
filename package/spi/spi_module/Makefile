################################################
#
# spi_module
#
################################################
PK_SPI_MOD_NAME        := spi_module
PK_SPI_MOD_VERSION     := $(CONFIG_PK_SPI_MOD_VERSION)
PK_SPI_MOD_SITE        := $(CONFIG_PK_SPI_MOD_URL)
PK_SPI_MOD_GITHUB      := $(CONFIG_PK_SPI_MOD_GITHUB)
PK_SPI_MOD_SUBNAME     :=
PK_SPI_MOD_BUILDARCH   := $(CONFIG_PK_SPI_MOD_BUILDARCH)
PK_SPI_MOD_DIR         := $(srctree)/package/spi/spi_module
PK_SPI_MOD_PATCH       := $(PK_SPI_MOD_DIR)/patch
PK_SPI_MOD_BSBIT       := spi_module-$(PK_SPI_MOD_VERSION).bsbit
PK_SPI_MOD_OUT         :=
PK_SPI_MOD_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_SPI_MOD_TAR         := $(CONFIG_PK_SPI_MOD_TAR)
PK_SPI_MOD_PACKAGE     :=
PK_SPI_MOD_CONFIG      := $(CONFIG_PK_SPI_MOD_CONFIG)
SUB_TARGET                  += $(PK_SPI_MOD_DIR)/build

PK_SPI_MOD_sh = $(CONFIG_SHELL) $(PK_SPI_MOD_SCRIPTS) \
                 $1X \
                 $(PK_SPI_MOD_NAME)X \
                 $(PK_SPI_MOD_VERSION)X \
                 $(PK_SPI_MOD_SITE)X \
                 $(PK_SPI_MOD_GITHUB)X \
                 $(PK_SPI_MOD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_SPI_MOD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_SPI_MOD_SUBNAME)X \
                 $(CONFIG_PK_SPI_MOD_CONFIG)X \
                 $(CONFIG_PK_SPI_MOD_LIBPATH)X \
                 $(CONFIG_PK_SPI_MOD_CPPFLAGS)X \
                 $(CONFIG_PK_SPI_MOD_DPKCONFIG)X \
                 $(CONFIG_PK_SPI_MOD_CFLAGS)X \
                 $(CONFIG_PK_SPI_MOD_LDFLAGS)X \
                 $(CONFIG_PK_SPI_MOD_CXXFLAGS)X \
                 $(CONFIG_PK_SPI_MOD_ASFLAGS)X \
                 $(PK_SPI_MOD_BSBIT)X \
                 $(PK_SPI_MOD_BUILDARCH)X \
		 $(PK_SPI_MOD_CSRCFILE)X \
                 $(CONFIG_PK_SPI_MOD_SRCFILE)X \
                 $(CONFIG_PK_SPI_MOD_CSRCFILE)

$(PK_SPI_MOD_DIR)/build: FORCE
	$(Q)$(call PK_SPI_MOD_sh,$(srctree))
