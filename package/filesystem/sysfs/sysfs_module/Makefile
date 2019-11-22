################################################
#
# sysfs_module
#
################################################
PK_FS_SYSFS_MOD_NAME        := sysfs_module
PK_FS_SYSFS_MOD_VERSION     := $(CONFIG_PK_FS_SYSFS_MOD_VERSION)
PK_FS_SYSFS_MOD_SITE        := $(CONFIG_PK_FS_SYSFS_MOD_URL)
PK_FS_SYSFS_MOD_GITHUB      := $(CONFIG_PK_FS_SYSFS_MOD_GITHUB)
PK_FS_SYSFS_MOD_SUBNAME     :=
PK_FS_SYSFS_MOD_BUILDARCH   := $(CONFIG_PK_FS_SYSFS_MOD_BUILDARCH)
PK_FS_SYSFS_MOD_DIR         := $(srctree)/package/filesystem/sysfs/sysfs_module
PK_FS_SYSFS_MOD_PATCH       := $(PK_FS_SYSFS_MOD_DIR)/patch
PK_FS_SYSFS_MOD_BSBIT       := sysfs_module-$(PK_FS_SYSFS_MOD_VERSION).bsbit
PK_FS_SYSFS_MOD_OUT         :=
PK_FS_SYSFS_MOD_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_FS_SYSFS_MOD_TAR         := $(CONFIG_PK_FS_SYSFS_MOD_TAR)
PK_FS_SYSFS_MOD_PACKAGE     :=
PK_FS_SYSFS_MOD_CONFIG      := $(CONFIG_PK_FS_SYSFS_MOD_CONFIG)
SUB_TARGET                  += $(PK_FS_SYSFS_MOD_DIR)/build

PK_FS_SYSFS_MOD_sh = $(CONFIG_SHELL) $(PK_FS_SYSFS_MOD_SCRIPTS) \
                 $1X \
                 $(PK_FS_SYSFS_MOD_NAME)X \
                 $(PK_FS_SYSFS_MOD_VERSION)X \
                 $(PK_FS_SYSFS_MOD_SITE)X \
                 $(PK_FS_SYSFS_MOD_GITHUB)X \
                 $(PK_FS_SYSFS_MOD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_FS_SYSFS_MOD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_FS_SYSFS_MOD_SUBNAME)X \
                 $(CONFIG_PK_FS_SYSFS_MOD_CONFIG)X \
                 $(CONFIG_PK_FS_SYSFS_MOD_LIBPATH)X \
                 $(CONFIG_PK_FS_SYSFS_MOD_CPPFLAGS)X \
                 $(CONFIG_PK_FS_SYSFS_MOD_DPKCONFIG)X \
                 $(CONFIG_PK_FS_SYSFS_MOD_CFLAGS)X \
                 $(CONFIG_PK_FS_SYSFS_MOD_LDFLAGS)X \
                 $(CONFIG_PK_FS_SYSFS_MOD_CXXFLAGS)X \
                 $(CONFIG_PK_FS_SYSFS_MOD_ASFLAGS)X \
                 $(PK_FS_SYSFS_MOD_BSBIT)X \
                 $(PK_FS_SYSFS_MOD_BUILDARCH)X \
		 $(PK_FS_SYSFS_MOD_CSRCFILE)X \
                 $(CONFIG_PK_FS_SYSFS_MOD_SRCFILE)X \
                 $(CONFIG_PK_FS_SYSFS_MOD_CSRCFILE)

$(PK_FS_SYSFS_MOD_DIR)/build: FORCE
	$(Q)$(call PK_FS_SYSFS_MOD_sh,$(srctree))
