################################################
#
# To build minix filesystem
#
################################################
MINIX_NAME       := minix
MINIX_VERSION    := 0.11
MINIX_SITE       := $(MP_DOWNLOAD)/rootfs
MINIX_SUBNAME    := origin
MINIX_DIR        := $(srctree)/fs/minix
MINIX_OUT        := $(srctree)/output/fs/minix
MINIX_SCRIPTS    := $(srctree)/scripts/fs/minix.sh
MINIX_TAR        := tar.bz2
MINIX_PACKAGE    := $(MINIX_NAME)-$(MINIX_SUBNAME)-$(MINIX_VERSION).img
SUB_TARGET       += $(MINIX_DIR)/build
ifdef CONFIG_HOST_MKFS_MINIX
minix_cmd := host_build
else
minix_cmd := download
endif


run_minix_sh = $(CONFIG_SHELL) $(MINIX_SCRIPTS) \
               $(srctree) \
               $(MINIX_PACKAGE) $(MINIX_SITE) \
               $(KERNEL_BUILD_BISCUITOS_VERSION) \
               $(MINIX_TAR) $1

$(MINIX_DIR)/build: FORCE
	$(Q)$(call run_minix_sh,$(minix_cmd))
