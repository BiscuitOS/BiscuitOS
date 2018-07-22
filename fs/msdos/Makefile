################################################
#
# To build msdos filesystem
#
################################################
MSDOS_NAME       := msdos
MSDOS_VERSION    := 1.0.1
MSDOS_SITE       := $(MP_DOWNLOAD)/rootfs
MSDOS_SUBNAME    := origin
MSDOS_DIR        := $(srctree)/fs/msdos
MSDOS_OUT        := $(srctree)/output/fs/msdos
MSDOS_SCRIPTS    := $(srctree)/scripts/fs/msdos.sh
MSDOS_TAR        := tar.bz2
MSDOS_PACKAGE    := $(MSDOS_NAME)-$(MSDOS_SUBNAME)-$(MSDOS_VERSION).img
SUB_TARGET       += $(MSDOS_DIR)/build
ifdef CONFIG_FS_MSDOS_LEGACY
msdos_cmd := download
endif
ifdef CONFIG_FS_MSDOS
msdos_cmd := host_build
endif


run_msdos_sh = $(CONFIG_SHELL) $(MSDOS_SCRIPTS) \
               $(srctree) \
               $(MSDOS_PACKAGE) $(MSDOS_SITE) \
               $(KERNEL_BUILD_BISCUITOS_VERSION) \
               $(MSDOS_TAR) $1

$(MSDOS_DIR)/build: FORCE
	$(Q)$(call run_msdos_sh,$(msdos_cmd))
