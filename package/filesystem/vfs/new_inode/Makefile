################################################
#
# new_inode
#
################################################
PK_FS_NEW_INODE_NAME        := new_inode
PK_FS_NEW_INODE_VERSION     := $(CONFIG_PK_FS_NEW_INODE_VERSION)
PK_FS_NEW_INODE_SITE        := $(CONFIG_PK_FS_NEW_INODE_URL)
PK_FS_NEW_INODE_GITHUB      := $(CONFIG_PK_FS_NEW_INODE_GITHUB)
PK_FS_NEW_INODE_SUBNAME     :=
PK_FS_NEW_INODE_BUILDARCH   := $(CONFIG_PK_FS_NEW_INODE_BUILDARCH)
PK_FS_NEW_INODE_DIR         := $(srctree)/package/filesystem/vfs/new_inode
PK_FS_NEW_INODE_PATCH       := $(PK_FS_NEW_INODE_DIR)/patch
PK_FS_NEW_INODE_BSBIT       := new_inode-$(PK_FS_NEW_INODE_VERSION).bsbit
PK_FS_NEW_INODE_OUT         :=
PK_FS_NEW_INODE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_FS_NEW_INODE_TAR         := $(CONFIG_PK_FS_NEW_INODE_TAR)
PK_FS_NEW_INODE_PACKAGE     :=
PK_FS_NEW_INODE_CONFIG      := $(CONFIG_PK_FS_NEW_INODE_CONFIG)
SUB_TARGET                  += $(PK_FS_NEW_INODE_DIR)/build

PK_FS_NEW_INODE_sh = $(CONFIG_SHELL) $(PK_FS_NEW_INODE_SCRIPTS) \
                 $1X \
                 $(PK_FS_NEW_INODE_NAME)X \
                 $(PK_FS_NEW_INODE_VERSION)X \
                 $(PK_FS_NEW_INODE_SITE)X \
                 $(PK_FS_NEW_INODE_GITHUB)X \
                 $(PK_FS_NEW_INODE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_FS_NEW_INODE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_FS_NEW_INODE_SUBNAME)X \
                 $(CONFIG_PK_FS_NEW_INODE_CONFIG)X \
                 $(CONFIG_PK_FS_NEW_INODE_LIBPATH)X \
                 $(CONFIG_PK_FS_NEW_INODE_CPPFLAGS)X \
                 $(CONFIG_PK_FS_NEW_INODE_DPKCONFIG)X \
                 $(CONFIG_PK_FS_NEW_INODE_CFLAGS)X \
                 $(CONFIG_PK_FS_NEW_INODE_LDFLAGS)X \
                 $(CONFIG_PK_FS_NEW_INODE_CXXFLAGS)X \
                 $(CONFIG_PK_FS_NEW_INODE_ASFLAGS)X \
                 $(PK_FS_NEW_INODE_BSBIT)X \
                 $(PK_FS_NEW_INODE_BUILDARCH)X \
		 $(PK_FS_NEW_INODE_CSRCFILE)X \
                 $(CONFIG_PK_FS_NEW_INODE_SRCFILE)X \
                 $(CONFIG_PK_FS_NEW_INODE_CSRCFILE)

$(PK_FS_NEW_INODE_DIR)/build: FORCE
	$(Q)$(call PK_FS_NEW_INODE_sh,$(srctree))
