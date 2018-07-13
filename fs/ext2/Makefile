################################################
#
# To build ext2 filesystem
#
################################################
EXT2_NAME       := ext2
EXT2_VERSION    := 1.0.1
EXT2_SITE       := $(MP_DOWNLOAD)/rootfs
EXT2_SUBNAME    := origin
EXT2_DIR        := $(srctree)/fs/ext2
EXT2_OUT        := $(srctree)/output/fs/ext2
EXT2_SCRIPTS    := $(srctree)/scripts/fs/ext2.sh
EXT2_TAR        := tar.bz2
EXT2_PACKAGE    := $(EXT2_NAME)-$(EXT2_SUBNAME)-$(EXT2_VERSION).img
SUB_TARGET       += $(EXT2_DIR)/build
ifdef CONFIG_FS_EXT2_LEGACY
ext2_cmd := download
endif
ifdef CONFIG_FS_EXT2
ext2_cmd := host_build
endif


run_ext2_sh = $(CONFIG_SHELL) $(EXT2_SCRIPTS) \
               $(srctree) \
               $(EXT2_PACKAGE) $(EXT2_SITE) \
               $(KERNEL_BUILD_BISCUITOS_VERSION) \
               $(EXT2_TAR) $1

$(EXT2_DIR)/build: FORCE
	$(Q)$(call run_ext2_sh,$(ext2_cmd))
