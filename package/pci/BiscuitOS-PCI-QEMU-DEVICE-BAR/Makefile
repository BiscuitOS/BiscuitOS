################################################
#
# BiscuitOS-PCI-QEMU-DEVICE-BAR
#
################################################
PK_PCI_QEMU_DEV_BAR_NAME        := BiscuitOS-PCI-QEMU-DEVICE-BAR
PK_PCI_QEMU_DEV_BAR_VERSION     := $(CONFIG_PK_PCI_QEMU_DEV_BAR_VERSION)
PK_PCI_QEMU_DEV_BAR_SITE        := $(CONFIG_PK_PCI_QEMU_DEV_BAR_URL)
PK_PCI_QEMU_DEV_BAR_GITHUB      := $(CONFIG_PK_PCI_QEMU_DEV_BAR_GITHUB)
PK_PCI_QEMU_DEV_BAR_SUBNAME     :=
PK_PCI_QEMU_DEV_BAR_BUILDARCH   := $(CONFIG_PK_PCI_QEMU_DEV_BAR_BUILDARCH)
PK_PCI_QEMU_DEV_BAR_DIR         := $(srctree)/package/pci/BiscuitOS-PCI-QEMU-DEVICE-BAR
PK_PCI_QEMU_DEV_BAR_PATCH       := $(PK_PCI_QEMU_DEV_BAR_DIR)/patch
PK_PCI_QEMU_DEV_BAR_BSBIT       := BiscuitOS-PCI-QEMU-DEVICE-BAR-$(PK_PCI_QEMU_DEV_BAR_VERSION).bsbit
PK_PCI_QEMU_DEV_BAR_OUT         :=
PK_PCI_QEMU_DEV_BAR_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PCI_QEMU_DEV_BAR_TAR         := $(CONFIG_PK_PCI_QEMU_DEV_BAR_TAR)
PK_PCI_QEMU_DEV_BAR_PACKAGE     :=
PK_PCI_QEMU_DEV_BAR_CONFIG      := $(CONFIG_PK_PCI_QEMU_DEV_BAR_CONFIG)
SUB_TARGET                  += $(PK_PCI_QEMU_DEV_BAR_DIR)/build

PK_PCI_QEMU_DEV_BAR_sh = $(CONFIG_SHELL) $(PK_PCI_QEMU_DEV_BAR_SCRIPTS) \
                 $1X \
                 $(PK_PCI_QEMU_DEV_BAR_NAME)X \
                 $(PK_PCI_QEMU_DEV_BAR_VERSION)X \
                 $(PK_PCI_QEMU_DEV_BAR_SITE)X \
                 $(PK_PCI_QEMU_DEV_BAR_GITHUB)X \
                 $(PK_PCI_QEMU_DEV_BAR_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PCI_QEMU_DEV_BAR_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PCI_QEMU_DEV_BAR_SUBNAME)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_BAR_CONFIG)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_BAR_LIBPATH)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_BAR_CPPFLAGS)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_BAR_DPKCONFIG)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_BAR_CFLAGS)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_BAR_LDFLAGS)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_BAR_CXXFLAGS)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_BAR_ASFLAGS)X \
                 $(PK_PCI_QEMU_DEV_BAR_BSBIT)X \
                 $(PK_PCI_QEMU_DEV_BAR_BUILDARCH)X \
		 $(PK_PCI_QEMU_DEV_BAR_CSRCFILE)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_BAR_SRCFILE)X \
                 $(CONFIG_PK_PCI_QEMU_DEV_BAR_CSRCFILE)

$(PK_PCI_QEMU_DEV_BAR_DIR)/build: FORCE
	$(Q)$(call PK_PCI_QEMU_DEV_BAR_sh,$(srctree))
