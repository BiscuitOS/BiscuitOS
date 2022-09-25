################################################
#
# Broiler-Synchronous-pio-PCI
#
################################################
PK_PIO_SYNC_PCI_NAME        := Broiler-Synchronous-pio-PCI
PK_PIO_SYNC_PCI_VERSION     := $(CONFIG_PK_PIO_SYNC_PCI_VERSION)
PK_PIO_SYNC_PCI_SITE        := $(CONFIG_PK_PIO_SYNC_PCI_URL)
PK_PIO_SYNC_PCI_GITHUB      := $(CONFIG_PK_PIO_SYNC_PCI_GITHUB)
PK_PIO_SYNC_PCI_SUBNAME     :=
PK_PIO_SYNC_PCI_BUILDARCH   := $(CONFIG_PK_PIO_SYNC_PCI_BUILDARCH)
PK_PIO_SYNC_PCI_DIR         := $(srctree)/package/pio/Broiler-Synchronous-pio-PCI
PK_PIO_SYNC_PCI_PATCH       := $(PK_PIO_SYNC_PCI_DIR)/patch
PK_PIO_SYNC_PCI_BSBIT       := Broiler-Synchronous-pio-PCI-$(PK_PIO_SYNC_PCI_VERSION).bsbit
PK_PIO_SYNC_PCI_OUT         :=
PK_PIO_SYNC_PCI_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PIO_SYNC_PCI_TAR         := $(CONFIG_PK_PIO_SYNC_PCI_TAR)
PK_PIO_SYNC_PCI_PACKAGE     :=
PK_PIO_SYNC_PCI_CONFIG      := $(CONFIG_PK_PIO_SYNC_PCI_CONFIG)
SUB_TARGET                  += $(PK_PIO_SYNC_PCI_DIR)/build

PK_PIO_SYNC_PCI_sh = $(CONFIG_SHELL) $(PK_PIO_SYNC_PCI_SCRIPTS) \
                 $1X \
                 $(PK_PIO_SYNC_PCI_NAME)X \
                 $(PK_PIO_SYNC_PCI_VERSION)X \
                 $(PK_PIO_SYNC_PCI_SITE)X \
                 $(PK_PIO_SYNC_PCI_GITHUB)X \
                 $(PK_PIO_SYNC_PCI_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PIO_SYNC_PCI_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PIO_SYNC_PCI_SUBNAME)X \
                 $(CONFIG_PK_PIO_SYNC_PCI_CONFIG)X \
                 $(CONFIG_PK_PIO_SYNC_PCI_LIBPATH)X \
                 $(CONFIG_PK_PIO_SYNC_PCI_CPPFLAGS)X \
                 $(CONFIG_PK_PIO_SYNC_PCI_DPKCONFIG)X \
                 $(CONFIG_PK_PIO_SYNC_PCI_CFLAGS)X \
                 $(CONFIG_PK_PIO_SYNC_PCI_LDFLAGS)X \
                 $(CONFIG_PK_PIO_SYNC_PCI_CXXFLAGS)X \
                 $(CONFIG_PK_PIO_SYNC_PCI_ASFLAGS)X \
                 $(PK_PIO_SYNC_PCI_BSBIT)X \
                 $(PK_PIO_SYNC_PCI_BUILDARCH)X \
		 $(PK_PIO_SYNC_PCI_CSRCFILE)X \
                 $(CONFIG_PK_PIO_SYNC_PCI_SRCFILE)X \
                 $(CONFIG_PK_PIO_SYNC_PCI_CSRCFILE)

$(PK_PIO_SYNC_PCI_DIR)/build: FORCE
	$(Q)$(call PK_PIO_SYNC_PCI_sh,$(srctree))
