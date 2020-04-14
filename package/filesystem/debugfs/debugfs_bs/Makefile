################################################
#
# debugfs_bs
#
################################################
PK_DEBUGFS_BS_NAME        := debugfs_bs
PK_DEBUGFS_BS_VERSION     := $(CONFIG_PK_DEBUGFS_BS_VERSION)
PK_DEBUGFS_BS_SITE        := $(CONFIG_PK_DEBUGFS_BS_URL)
PK_DEBUGFS_BS_GITHUB      := $(CONFIG_PK_DEBUGFS_BS_GITHUB)
PK_DEBUGFS_BS_SUBNAME     :=
PK_DEBUGFS_BS_BUILDARCH   := $(CONFIG_PK_DEBUGFS_BS_BUILDARCH)
PK_DEBUGFS_BS_DIR         := $(srctree)/package/filesystem/debugfs/debugfs_bs
PK_DEBUGFS_BS_PATCH       := $(PK_DEBUGFS_BS_DIR)/patch
PK_DEBUGFS_BS_BSBIT       := debugfs_bs-$(PK_DEBUGFS_BS_VERSION).bsbit
PK_DEBUGFS_BS_OUT         :=
PK_DEBUGFS_BS_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_DEBUGFS_BS_TAR         := $(CONFIG_PK_DEBUGFS_BS_TAR)
PK_DEBUGFS_BS_PACKAGE     :=
PK_DEBUGFS_BS_CONFIG      := $(CONFIG_PK_DEBUGFS_BS_CONFIG)
SUB_TARGET                  += $(PK_DEBUGFS_BS_DIR)/build

PK_DEBUGFS_BS_sh = $(CONFIG_SHELL) $(PK_DEBUGFS_BS_SCRIPTS) \
                 $1X \
                 $(PK_DEBUGFS_BS_NAME)X \
                 $(PK_DEBUGFS_BS_VERSION)X \
                 $(PK_DEBUGFS_BS_SITE)X \
                 $(PK_DEBUGFS_BS_GITHUB)X \
                 $(PK_DEBUGFS_BS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_DEBUGFS_BS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_DEBUGFS_BS_SUBNAME)X \
                 $(CONFIG_PK_DEBUGFS_BS_CONFIG)X \
                 $(CONFIG_PK_DEBUGFS_BS_LIBPATH)X \
                 $(CONFIG_PK_DEBUGFS_BS_CPPFLAGS)X \
                 $(CONFIG_PK_DEBUGFS_BS_DPKCONFIG)X \
                 $(CONFIG_PK_DEBUGFS_BS_CFLAGS)X \
                 $(CONFIG_PK_DEBUGFS_BS_LDFLAGS)X \
                 $(CONFIG_PK_DEBUGFS_BS_CXXFLAGS)X \
                 $(CONFIG_PK_DEBUGFS_BS_ASFLAGS)X \
                 $(PK_DEBUGFS_BS_BSBIT)X \
                 $(PK_DEBUGFS_BS_BUILDARCH)X \
		 $(PK_DEBUGFS_BS_CSRCFILE)X \
                 $(CONFIG_PK_DEBUGFS_BS_SRCFILE)X \
                 $(CONFIG_PK_DEBUGFS_BS_CSRCFILE)

$(PK_DEBUGFS_BS_DIR)/build: FORCE
	$(Q)$(call PK_DEBUGFS_BS_sh,$(srctree))
