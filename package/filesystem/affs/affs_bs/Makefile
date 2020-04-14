################################################
#
# affs_bs
#
################################################
PK_AFFS_BS_NAME        := affs_bs
PK_AFFS_BS_VERSION     := $(CONFIG_PK_AFFS_BS_VERSION)
PK_AFFS_BS_SITE        := $(CONFIG_PK_AFFS_BS_URL)
PK_AFFS_BS_GITHUB      := $(CONFIG_PK_AFFS_BS_GITHUB)
PK_AFFS_BS_SUBNAME     :=
PK_AFFS_BS_BUILDARCH   := $(CONFIG_PK_AFFS_BS_BUILDARCH)
PK_AFFS_BS_DIR         := $(srctree)/package/filesystem/affs/affs_bs
PK_AFFS_BS_PATCH       := $(PK_AFFS_BS_DIR)/patch
PK_AFFS_BS_BSBIT       := affs_bs-$(PK_AFFS_BS_VERSION).bsbit
PK_AFFS_BS_OUT         :=
PK_AFFS_BS_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_AFFS_BS_TAR         := $(CONFIG_PK_AFFS_BS_TAR)
PK_AFFS_BS_PACKAGE     :=
PK_AFFS_BS_CONFIG      := $(CONFIG_PK_AFFS_BS_CONFIG)
SUB_TARGET                  += $(PK_AFFS_BS_DIR)/build

PK_AFFS_BS_sh = $(CONFIG_SHELL) $(PK_AFFS_BS_SCRIPTS) \
                 $1X \
                 $(PK_AFFS_BS_NAME)X \
                 $(PK_AFFS_BS_VERSION)X \
                 $(PK_AFFS_BS_SITE)X \
                 $(PK_AFFS_BS_GITHUB)X \
                 $(PK_AFFS_BS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_AFFS_BS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_AFFS_BS_SUBNAME)X \
                 $(CONFIG_PK_AFFS_BS_CONFIG)X \
                 $(CONFIG_PK_AFFS_BS_LIBPATH)X \
                 $(CONFIG_PK_AFFS_BS_CPPFLAGS)X \
                 $(CONFIG_PK_AFFS_BS_DPKCONFIG)X \
                 $(CONFIG_PK_AFFS_BS_CFLAGS)X \
                 $(CONFIG_PK_AFFS_BS_LDFLAGS)X \
                 $(CONFIG_PK_AFFS_BS_CXXFLAGS)X \
                 $(CONFIG_PK_AFFS_BS_ASFLAGS)X \
                 $(PK_AFFS_BS_BSBIT)X \
                 $(PK_AFFS_BS_BUILDARCH)X \
		 $(PK_AFFS_BS_CSRCFILE)X \
                 $(CONFIG_PK_AFFS_BS_SRCFILE)X \
                 $(CONFIG_PK_AFFS_BS_CSRCFILE)

$(PK_AFFS_BS_DIR)/build: FORCE
	$(Q)$(call PK_AFFS_BS_sh,$(srctree))
