################################################
#
# Broiler-pci-device-driver
#
################################################
PK_BROILER_PCI_DD_NAME        := Broiler-pci-device-driver
PK_BROILER_PCI_DD_VERSION     := $(CONFIG_PK_BROILER_PCI_DD_VERSION)
PK_BROILER_PCI_DD_SITE        := $(CONFIG_PK_BROILER_PCI_DD_URL)
PK_BROILER_PCI_DD_GITHUB      := $(CONFIG_PK_BROILER_PCI_DD_GITHUB)
PK_BROILER_PCI_DD_SUBNAME     :=
PK_BROILER_PCI_DD_BUILDARCH   := $(CONFIG_PK_BROILER_PCI_DD_BUILDARCH)
PK_BROILER_PCI_DD_DIR         := $(srctree)/package/pci/Broiler-pci-device-driver
PK_BROILER_PCI_DD_PATCH       := $(PK_BROILER_PCI_DD_DIR)/patch
PK_BROILER_PCI_DD_BSBIT       := Broiler-pci-device-driver-$(PK_BROILER_PCI_DD_VERSION).bsbit
PK_BROILER_PCI_DD_OUT         :=
PK_BROILER_PCI_DD_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_BROILER_PCI_DD_TAR         := $(CONFIG_PK_BROILER_PCI_DD_TAR)
PK_BROILER_PCI_DD_PACKAGE     :=
PK_BROILER_PCI_DD_CONFIG      := $(CONFIG_PK_BROILER_PCI_DD_CONFIG)
SUB_TARGET                  += $(PK_BROILER_PCI_DD_DIR)/build

PK_BROILER_PCI_DD_sh = $(CONFIG_SHELL) $(PK_BROILER_PCI_DD_SCRIPTS) \
                 $1X \
                 $(PK_BROILER_PCI_DD_NAME)X \
                 $(PK_BROILER_PCI_DD_VERSION)X \
                 $(PK_BROILER_PCI_DD_SITE)X \
                 $(PK_BROILER_PCI_DD_GITHUB)X \
                 $(PK_BROILER_PCI_DD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BROILER_PCI_DD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BROILER_PCI_DD_SUBNAME)X \
                 $(CONFIG_PK_BROILER_PCI_DD_CONFIG)X \
                 $(CONFIG_PK_BROILER_PCI_DD_LIBPATH)X \
                 $(CONFIG_PK_BROILER_PCI_DD_CPPFLAGS)X \
                 $(CONFIG_PK_BROILER_PCI_DD_DPKCONFIG)X \
                 $(CONFIG_PK_BROILER_PCI_DD_CFLAGS)X \
                 $(CONFIG_PK_BROILER_PCI_DD_LDFLAGS)X \
                 $(CONFIG_PK_BROILER_PCI_DD_CXXFLAGS)X \
                 $(CONFIG_PK_BROILER_PCI_DD_ASFLAGS)X \
                 $(PK_BROILER_PCI_DD_BSBIT)X \
                 $(PK_BROILER_PCI_DD_BUILDARCH)X \
		 $(PK_BROILER_PCI_DD_CSRCFILE)X \
                 $(CONFIG_PK_BROILER_PCI_DD_SRCFILE)X \
                 $(CONFIG_PK_BROILER_PCI_DD_CSRCFILE)

$(PK_BROILER_PCI_DD_DIR)/build: FORCE
	$(Q)$(call PK_BROILER_PCI_DD_sh,$(srctree))
