################################################
#
# BiscuitOS-PCI-QEMU-DEVICE-MSI
#
################################################
PK_PCI_QEMU_DEV_MSI_NAME        := BiscuitOS-PCI-QEMU-DEVICE-MSI
PK_PCI_QEMU_DEV_MSI_VERSION     := $(CONFIG_PK_PCI_QEMU_DEV_MSI_VERSION)
PK_PCI_QEMU_DEV_MSI_SITE        := $(CONFIG_PK_PCI_QEMU_DEV_MSI_URL)
PK_PCI_QEMU_DEV_MSI_GITHUB      := $(CONFIG_PK_PCI_QEMU_DEV_MSI_GITHUB)
PK_PCI_QEMU_DEV_MSI_SUBNAME     :=
PK_PCI_QEMU_DEV_MSI_BUILDARCH   := $(CONFIG_PK_PCI_QEMU_DEV_MSI_BUILDARCH)
PK_PCI_QEMU_DEV_MSI_DIR         := $(srctree)/package/pci/BiscuitOS-PCI-QEMU-DEVICE-MSI
PK_PCI_QEMU_DEV_MSI_PATCH       := $(PK_PCI_QEMU_DEV_MSI_DIR)/patch
PK_PCI_QEMU_DEV_MSI_BSBIT       := BiscuitOS-PCI-QEMU-DEVICE-MSI-$(PK_PCI_QEMU_DEV_MSI_VERSION).bsbit
PK_PCI_QEMU_DEV_MSI_OUT         :=
PK_PCI_QEMU_DEV_MSI_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PCI_QEMU_DEV_MSI_TAR         := $(CONFIG_PK_PCI_QEMU_DEV_MSI_TAR)
PK_PCI_QEMU_DEV_MSI_PACKAGE     :=
PK_PCI_QEMU_DEV_MSI_CONFIG      := $(CONFIG_PK_PCI_QEMU_DEV_MSI_CONFIG)
SUB_TARGET                  += $(PK_PCI_QEMU_DEV_MSI_DIR)/build

PK_PCI_QEMU_DEV_MSI_sh = $(CONFIG_SHELL) $(PK_PCI_QEMU_DEV_MSI_SCRIPTS) \
                 $1X \
                 $(PK_PCI_QEMU_DEV_MSI_NAME)X \
                 $(PK_PCI_QEMU_DEV_MSI_VERSION)X \
                 $(PK_PCI_QEMU_DEV_MSI_SITE)X \
                 $(PK_PCI_QEMU_DEV_MSI_GITHUB)X \
                 $(PK_PCI_QEMU_DEV_MSI_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PCI_QEMU_DEV_MSI_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PCI_QEMU_DEV_MSI_SUBNAME)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_MSI_CONFIG)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_MSI_LIBPATH)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_MSI_CPPFLAGS)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_MSI_DPKCONFIG)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_MSI_CFLAGS)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_MSI_LDFLAGS)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_MSI_CXXFLAGS)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_MSI_ASFLAGS)X \
                 $(PK_PCI_QEMU_DEV_MSI_BSBIT)X \
                 $(PK_PCI_QEMU_DEV_MSI_BUILDARCH)X \
		 $(PK_PCI_QEMU_DEV_MSI_CSRCFILE)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_MSI_SRCFILE)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_MSI_CSRCFILE)

$(PK_PCI_QEMU_DEV_MSI_DIR)/build: FORCE
	$(Q)$(call PK_PCI_QEMU_DEV_MSI_sh,$(srctree))
