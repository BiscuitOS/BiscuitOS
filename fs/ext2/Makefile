################################################
#
# To build ext2 filesystem
#
################################################
EXT2_NAME       := ext2
EXT2_VERSION    := 0
EXT2_SITE       := https://raw.githubusercontent.com/BiscuitOS/PackageManage/master/rootfs
EXT2_SUBNAME    := Revision 0
EXT2_DIR        := $(srctree)/fs/ext2
EXT2_OUT        := $(srctree)/output/fs/ext2
EXT2_SCRIPTS    := $(srctree)/scripts/fs/mkimage.sh
EXT2_TAR        := tar.bz2
EXT2_PACKAGE    := $(EXT2_NAME)-$(EXT2_SUBNAME)-$(EXT2_VERSION).img
SUB_TARGET       += $(EXT2_DIR)/build

run_ext2_sh = $(CONFIG_SHELL) $(EXT2_SCRIPTS) \
               $1 $(EXT2_NAME)X $(EXT2_VERSION)X \
               $(CONFIG_LINUX_KERNEL_VERSION)X \
               $(CONFIG_MAIN_PROJ_NAME)X $(CONFIG_BOOT_SEABIOS)X

$(EXT2_DIR)/build: FORCE
	$(Q)$(call run_ext2_sh,$(srctree))
