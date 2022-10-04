################################################
#
# Broiler-Synchronous-mmio-PCI
#
################################################
PK_MMIO_SYNC_PCI_NAME        := Broiler-Synchronous-mmio-PCI
PK_MMIO_SYNC_PCI_VERSION     := $(CONFIG_PK_MMIO_SYNC_PCI_VERSION)
PK_MMIO_SYNC_PCI_SITE        := $(CONFIG_PK_MMIO_SYNC_PCI_URL)
PK_MMIO_SYNC_PCI_GITHUB      := $(CONFIG_PK_MMIO_SYNC_PCI_GITHUB)
PK_MMIO_SYNC_PCI_SUBNAME     :=
PK_MMIO_SYNC_PCI_BUILDARCH   := $(CONFIG_PK_MMIO_SYNC_PCI_BUILDARCH)
PK_MMIO_SYNC_PCI_DIR         := $(srctree)/package/mmio/Broiler-Synchronous-mmio-PCI
PK_MMIO_SYNC_PCI_PATCH       := $(PK_MMIO_SYNC_PCI_DIR)/patch
PK_MMIO_SYNC_PCI_BSBIT       := Broiler-Synchronous-mmio-PCI-$(PK_MMIO_SYNC_PCI_VERSION).bsbit
PK_MMIO_SYNC_PCI_OUT         :=
PK_MMIO_SYNC_PCI_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_MMIO_SYNC_PCI_TAR         := $(CONFIG_PK_MMIO_SYNC_PCI_TAR)
PK_MMIO_SYNC_PCI_PACKAGE     :=
PK_MMIO_SYNC_PCI_CONFIG      := $(CONFIG_PK_MMIO_SYNC_PCI_CONFIG)
SUB_TARGET                  += $(PK_MMIO_SYNC_PCI_DIR)/build

PK_MMIO_SYNC_PCI_sh = $(CONFIG_SHELL) $(PK_MMIO_SYNC_PCI_SCRIPTS) \
                 $1X \
                 $(PK_MMIO_SYNC_PCI_NAME)X \
                 $(PK_MMIO_SYNC_PCI_VERSION)X \
                 $(PK_MMIO_SYNC_PCI_SITE)X \
                 $(PK_MMIO_SYNC_PCI_GITHUB)X \
                 $(PK_MMIO_SYNC_PCI_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MMIO_SYNC_PCI_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MMIO_SYNC_PCI_SUBNAME)X \
                 $(CONFIG_PK_MMIO_SYNC_PCI_CONFIG)X \
                 $(CONFIG_PK_MMIO_SYNC_PCI_LIBPATH)X \
                 $(CONFIG_PK_MMIO_SYNC_PCI_CPPFLAGS)X \
                 $(CONFIG_PK_MMIO_SYNC_PCI_DPKCONFIG)X \
                 $(CONFIG_PK_MMIO_SYNC_PCI_CFLAGS)X \
                 $(CONFIG_PK_MMIO_SYNC_PCI_LDFLAGS)X \
                 $(CONFIG_PK_MMIO_SYNC_PCI_CXXFLAGS)X \
                 $(CONFIG_PK_MMIO_SYNC_PCI_ASFLAGS)X \
                 $(PK_MMIO_SYNC_PCI_BSBIT)X \
                 $(PK_MMIO_SYNC_PCI_BUILDARCH)X \
		 $(PK_MMIO_SYNC_PCI_CSRCFILE)X \
                 $(CONFIG_PK_MMIO_SYNC_PCI_SRCFILE)X \
                 $(CONFIG_PK_MMIO_SYNC_PCI_CSRCFILE)

$(PK_MMIO_SYNC_PCI_DIR)/build: FORCE
	$(Q)$(call PK_MMIO_SYNC_PCI_sh,$(srctree))
