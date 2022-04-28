################################################
#
# pciutils
#
################################################
PK_PCIUTILS_NAME        := pciutils
PK_PCIUTILS_VERSION     := $(CONFIG_PK_PCIUTILS_VERSION)
PK_PCIUTILS_SITE        := $(CONFIG_PK_PCIUTILS_URL)
PK_PCIUTILS_GITHUB      := $(CONFIG_PK_PCIUTILS_GITHUB)
PK_PCIUTILS_SUBNAME     :=
PK_PCIUTILS_BUILDARCH   := $(CONFIG_PK_PCIUTILS_BUILDARCH)
PK_PCIUTILS_DIR         := $(srctree)/package/pci/pciutils
PK_PCIUTILS_PATCH       := $(PK_PCIUTILS_DIR)/patch
PK_PCIUTILS_BSBIT       := pciutils-$(PK_PCIUTILS_VERSION).bsbit
PK_PCIUTILS_OUT         :=
PK_PCIUTILS_SCRIPTS     := $(srctree)/scripts/package/package-pciuitls.sh
PK_PCIUTILS_TAR         := $(CONFIG_PK_PCIUTILS_TAR)
PK_PCIUTILS_PACKAGE     :=
PK_PCIUTILS_CONFIG      := $(CONFIG_PK_PCIUTILS_CONFIG)
SUB_TARGET                  += $(PK_PCIUTILS_DIR)/build

PK_PCIUTILS_sh = $(CONFIG_SHELL) $(PK_PCIUTILS_SCRIPTS) \
                 $1X \
                 $(PK_PCIUTILS_NAME)X \
                 $(PK_PCIUTILS_VERSION)X \
                 $(PK_PCIUTILS_SITE)X \
                 $(PK_PCIUTILS_GITHUB)X \
                 $(PK_PCIUTILS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PCIUTILS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PCIUTILS_SUBNAME)X \
                 $(CONFIG_PK_PCIUTILS_CONFIG)X \
                 $(CONFIG_PK_PCIUTILS_LIBPATH)X \
                 $(CONFIG_PK_PCIUTILS_CPPFLAGS)X \
                 $(CONFIG_PK_PCIUTILS_DPKCONFIG)X \
                 $(CONFIG_PK_PCIUTILS_CFLAGS)X \
                 $(CONFIG_PK_PCIUTILS_LDFLAGS)X \
                 $(CONFIG_PK_PCIUTILS_CXXFLAGS)X \
                 $(CONFIG_PK_PCIUTILS_ASFLAGS)X \
                 $(PK_PCIUTILS_BSBIT)X \
                 $(PK_PCIUTILS_BUILDARCH)X \
		 $(PK_PCIUTILS_CSRCFILE)X \
                 $(CONFIG_PK_PCIUTILS_SRCFILE)X \
                 $(CONFIG_PK_PCIUTILS_CSRCFILE)

$(PK_PCIUTILS_DIR)/build: FORCE
	$(Q)$(call PK_PCIUTILS_sh,$(srctree))
