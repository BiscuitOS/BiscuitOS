################################################
#
# bsvfs_basic
#
################################################
PK_BSVFS_BASE_NAME        := bsvfs_basic
PK_BSVFS_BASE_VERSION     := $(CONFIG_PK_BSVFS_BASE_VERSION)
PK_BSVFS_BASE_SITE        := $(CONFIG_PK_BSVFS_BASE_URL)
PK_BSVFS_BASE_GITHUB      := $(CONFIG_PK_BSVFS_BASE_GITHUB)
PK_BSVFS_BASE_SUBNAME     :=
PK_BSVFS_BASE_BUILDARCH   := $(CONFIG_PK_BSVFS_BASE_BUILDARCH)
PK_BSVFS_BASE_DIR         := $(srctree)/package/filesystem/vfs/bsvfs/basic
PK_BSVFS_BASE_PATCH       := $(PK_BSVFS_BASE_DIR)/patch
PK_BSVFS_BASE_BSBIT       := bsvfs_basic-$(PK_BSVFS_BASE_VERSION).bsbit
PK_BSVFS_BASE_OUT         :=
PK_BSVFS_BASE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_BSVFS_BASE_TAR         := $(CONFIG_PK_BSVFS_BASE_TAR)
PK_BSVFS_BASE_PACKAGE     :=
PK_BSVFS_BASE_CONFIG      := $(CONFIG_PK_BSVFS_BASE_CONFIG)
SUB_TARGET                  += $(PK_BSVFS_BASE_DIR)/build

PK_BSVFS_BASE_sh = $(CONFIG_SHELL) $(PK_BSVFS_BASE_SCRIPTS) \
                 $1X \
                 $(PK_BSVFS_BASE_NAME)X \
                 $(PK_BSVFS_BASE_VERSION)X \
                 $(PK_BSVFS_BASE_SITE)X \
                 $(PK_BSVFS_BASE_GITHUB)X \
                 $(PK_BSVFS_BASE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BSVFS_BASE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BSVFS_BASE_SUBNAME)X \
                 $(CONFIG_PK_BSVFS_BASE_CONFIG)X \
                 $(CONFIG_PK_BSVFS_BASE_LIBPATH)X \
                 $(CONFIG_PK_BSVFS_BASE_CPPFLAGS)X \
                 $(CONFIG_PK_BSVFS_BASE_DPKCONFIG)X \
                 $(CONFIG_PK_BSVFS_BASE_CFLAGS)X \
                 $(CONFIG_PK_BSVFS_BASE_LDFLAGS)X \
                 $(CONFIG_PK_BSVFS_BASE_CXXFLAGS)X \
                 $(CONFIG_PK_BSVFS_BASE_ASFLAGS)X \
                 $(PK_BSVFS_BASE_BSBIT)X \
                 $(PK_BSVFS_BASE_BUILDARCH)X \
		 $(PK_BSVFS_BASE_CSRCFILE)X \
                 $(CONFIG_PK_BSVFS_BASE_SRCFILE)X \
                 $(CONFIG_PK_BSVFS_BASE_CSRCFILE)

$(PK_BSVFS_BASE_DIR)/build: FORCE
	$(Q)$(call PK_BSVFS_BASE_sh,$(srctree))
