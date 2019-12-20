################################################
#
# Ext4 filesystem
#
################################################
EXT4_NAME       := ext4
EXT4_VERSION    := $(CONFIG_EXT4_VERSION)
EXT4_SITE       := $(CONFIG_EXT4_WGET_SITE)
EXT4_GITHUB     := $(EXT4_GITHUB_SITE)
EXT4_SUBNAME    := $(CONFIG_EXT4_DL_NAME)
EXT4_DIR        := $(srctree)/fs/ext4
EXT4_PATCH      := $(srctree)/fs/ext4/patch
EXT4_OUT        := 
EXT4_SCRIPTS    := $(srctree)/scripts/fs/rootfs.sh
EXT4_TAR        := $(CONFIG_EXT4_TAR_TYPE)
EXT4_PACKAGE    := 
SUB_TARGET      += $(EXT4_DIR)/build

EXT4_sh = $(CONFIG_SHELL) $(EXT4_SCRIPTS) \
               ${1}X $(EXT4_NAME)X $(EXT4_VERSION)X \
               $(EXT4_SITE)X $(EXT4_GITHUB)X \
               $(EXT4_PATCH)X $(CONFIG_LINUX_KERNEL_VERSION)X \
	       $(CONFIG_EXT4_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(EXT4_TAR)X $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(EXT4_SUBNAME)X \
               $(CONFIG_LINUX_BUILD_HIST)X $(CONFIG_UBOOT)X \
               $(CONFIG_UBOOT_CROSS_COMPILE)X \
               $(CONFIG_ROOTFS_SIZE)X \
               $(CONFIG_FREEZE_SIZE)X \
               NX NX

$(EXT4_DIR)/build: FORCE
	$(Q)$(call EXT4_sh,$(srctree))
