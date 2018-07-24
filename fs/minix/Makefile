################################################
#
# To build minix filesystem
#
################################################
MINIX_NAME       := minix
MINIX_VERSION    := V1
MINIX_SITE       := $(MP_DOWNLOAD)/rootfs
MINIX_SUBNAME    := origin
MINIX_DIR        := $(srctree)/fs/minix
MINIX_OUT        := $(srctree)/output/fs/minix
MINIX_SCRIPTS    := $(srctree)/scripts/fs/mkimage.sh
MINIX_TAR        := tar.bz2
MINIX_PACKAGE    := $(MINIX_NAME)-$(MINIX_SUBNAME)-$(MINIX_VERSION).img
SUB_TARGET       += $(MINIX_DIR)/build

run_minix_sh = $(CONFIG_SHELL) $(MINIX_SCRIPTS) \
               $1 $(MINIX_NAME) $(MINIX_VERSION) \
               $(KERNEL_VERSION) $(CONFIG_DISK_SIZE) $(CONFIG_SWAP_SIZE) \
               $(KERNEL_MAGIC)

$(MINIX_DIR)/build: FORCE
	$(Q)$(call run_minix_sh,$(srctree))
