################################################
#
# BiscuitOS-QEMU-PCI-module
#
################################################
PK_BISCUITOS_QEMU_PCI_MOD_NAME        := BiscuitOS-QEMU-PCI-module
PK_BISCUITOS_QEMU_PCI_MOD_VERSION     := $(CONFIG_PK_BISCUITOS_QEMU_PCI_MOD_VERSION)
PK_BISCUITOS_QEMU_PCI_MOD_SITE        := $(CONFIG_PK_BISCUITOS_QEMU_PCI_MOD_URL)
PK_BISCUITOS_QEMU_PCI_MOD_GITHUB      := $(CONFIG_PK_BISCUITOS_QEMU_PCI_MOD_GITHUB)
PK_BISCUITOS_QEMU_PCI_MOD_SUBNAME     :=
PK_BISCUITOS_QEMU_PCI_MOD_BUILDARCH   := $(CONFIG_PK_BISCUITOS_QEMU_PCI_MOD_BUILDARCH)
PK_BISCUITOS_QEMU_PCI_MOD_DIR         := $(srctree)/package/kvm/BiscuitOS-QEMU-PCI-module
PK_BISCUITOS_QEMU_PCI_MOD_PATCH       := $(PK_BISCUITOS_QEMU_PCI_MOD_DIR)/patch
PK_BISCUITOS_QEMU_PCI_MOD_BSBIT       := BiscuitOS-QEMU-PCI-module-$(PK_BISCUITOS_QEMU_PCI_MOD_VERSION).bsbit
PK_BISCUITOS_QEMU_PCI_MOD_OUT         :=
PK_BISCUITOS_QEMU_PCI_MOD_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_BISCUITOS_QEMU_PCI_MOD_TAR         := $(CONFIG_PK_BISCUITOS_QEMU_PCI_MOD_TAR)
PK_BISCUITOS_QEMU_PCI_MOD_PACKAGE     :=
PK_BISCUITOS_QEMU_PCI_MOD_CONFIG      := $(CONFIG_PK_BISCUITOS_QEMU_PCI_MOD_CONFIG)
SUB_TARGET                  += $(PK_BISCUITOS_QEMU_PCI_MOD_DIR)/build

PK_BISCUITOS_QEMU_PCI_MOD_sh = $(CONFIG_SHELL) $(PK_BISCUITOS_QEMU_PCI_MOD_SCRIPTS) \
                 $1X \
                 $(PK_BISCUITOS_QEMU_PCI_MOD_NAME)X \
                 $(PK_BISCUITOS_QEMU_PCI_MOD_VERSION)X \
                 $(PK_BISCUITOS_QEMU_PCI_MOD_SITE)X \
                 $(PK_BISCUITOS_QEMU_PCI_MOD_GITHUB)X \
                 $(PK_BISCUITOS_QEMU_PCI_MOD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BISCUITOS_QEMU_PCI_MOD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BISCUITOS_QEMU_PCI_MOD_SUBNAME)X \
                 $(CONFIG_PK_BISCUITOS_QEMU_PCI_MOD_CONFIG)X \
                 $(CONFIG_PK_BISCUITOS_QEMU_PCI_MOD_LIBPATH)X \
                 $(CONFIG_PK_BISCUITOS_QEMU_PCI_MOD_CPPFLAGS)X \
                 $(CONFIG_PK_BISCUITOS_QEMU_PCI_MOD_DPKCONFIG)X \
                 $(CONFIG_PK_BISCUITOS_QEMU_PCI_MOD_CFLAGS)X \
                 $(CONFIG_PK_BISCUITOS_QEMU_PCI_MOD_LDFLAGS)X \
                 $(CONFIG_PK_BISCUITOS_QEMU_PCI_MOD_CXXFLAGS)X \
                 $(CONFIG_PK_BISCUITOS_QEMU_PCI_MOD_ASFLAGS)X \
                 $(PK_BISCUITOS_QEMU_PCI_MOD_BSBIT)X \
                 $(PK_BISCUITOS_QEMU_PCI_MOD_BUILDARCH)X \
		 $(PK_BISCUITOS_QEMU_PCI_MOD_CSRCFILE)X \
                 $(CONFIG_PK_BISCUITOS_QEMU_PCI_MOD_SRCFILE)X \
                 $(CONFIG_PK_BISCUITOS_QEMU_PCI_MOD_CSRCFILE)

$(PK_BISCUITOS_QEMU_PCI_MOD_DIR)/build: FORCE
	$(Q)$(call PK_BISCUITOS_QEMU_PCI_MOD_sh,$(srctree))
