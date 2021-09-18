################################################
#
# BiscuitOS-PCI-Express-Configuration-IO
#
################################################
PK_PCI_CFG_IO_NAME        := BiscuitOS-PCI-Express-Configuration-IO
PK_PCI_CFG_IO_VERSION     := $(CONFIG_PK_PCI_CFG_IO_VERSION)
PK_PCI_CFG_IO_SITE        := $(CONFIG_PK_PCI_CFG_IO_URL)
PK_PCI_CFG_IO_GITHUB      := $(CONFIG_PK_PCI_CFG_IO_GITHUB)
PK_PCI_CFG_IO_SUBNAME     :=
PK_PCI_CFG_IO_BUILDARCH   := $(CONFIG_PK_PCI_CFG_IO_BUILDARCH)
PK_PCI_CFG_IO_DIR         := $(srctree)/package/pci/BiscuitOS-PCI-Express-Configuration-IO
PK_PCI_CFG_IO_PATCH       := $(PK_PCI_CFG_IO_DIR)/patch
PK_PCI_CFG_IO_BSBIT       := BiscuitOS-PCI-Express-Configuration-IO-$(PK_PCI_CFG_IO_VERSION).bsbit
PK_PCI_CFG_IO_OUT         :=
PK_PCI_CFG_IO_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PCI_CFG_IO_TAR         := $(CONFIG_PK_PCI_CFG_IO_TAR)
PK_PCI_CFG_IO_PACKAGE     :=
PK_PCI_CFG_IO_CONFIG      := $(CONFIG_PK_PCI_CFG_IO_CONFIG)
SUB_TARGET                  += $(PK_PCI_CFG_IO_DIR)/build

PK_PCI_CFG_IO_sh = $(CONFIG_SHELL) $(PK_PCI_CFG_IO_SCRIPTS) \
                 $1X \
                 $(PK_PCI_CFG_IO_NAME)X \
                 $(PK_PCI_CFG_IO_VERSION)X \
                 $(PK_PCI_CFG_IO_SITE)X \
                 $(PK_PCI_CFG_IO_GITHUB)X \
                 $(PK_PCI_CFG_IO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PCI_CFG_IO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PCI_CFG_IO_SUBNAME)X \
                 $(CONFIG_PK_PCI_CFG_IO_CONFIG)X \
                 $(CONFIG_PK_PCI_CFG_IO_LIBPATH)X \
                 $(CONFIG_PK_PCI_CFG_IO_CPPFLAGS)X \
                 $(CONFIG_PK_PCI_CFG_IO_DPKCONFIG)X \
                 $(CONFIG_PK_PCI_CFG_IO_CFLAGS)X \
                 $(CONFIG_PK_PCI_CFG_IO_LDFLAGS)X \
                 $(CONFIG_PK_PCI_CFG_IO_CXXFLAGS)X \
                 $(CONFIG_PK_PCI_CFG_IO_ASFLAGS)X \
                 $(PK_PCI_CFG_IO_BSBIT)X \
                 $(PK_PCI_CFG_IO_BUILDARCH)X \
		 $(PK_PCI_CFG_IO_CSRCFILE)X \
                 $(CONFIG_PK_PCI_CFG_IO_SRCFILE)X \
                 $(CONFIG_PK_PCI_CFG_IO_CSRCFILE)

$(PK_PCI_CFG_IO_DIR)/build: FORCE
	$(Q)$(call PK_PCI_CFG_IO_sh,$(srctree))
