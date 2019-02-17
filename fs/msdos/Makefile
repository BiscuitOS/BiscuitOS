################################################
#
# To build msdos filesystem
#
################################################
MSDOS_NAME       := msdos
MSDOS_VERSION    := 0
MSDOS_SITE       := https://raw.githubusercontent.com/BiscuitOS/PackageManage/master/rootfs
MSDOS_SUBNAME    := Revision 0
MSDOS_DIR        := $(srctree)/fs/msdos
MSDOS_OUT        := $(srctree)/output/fs/msdos
MSDOS_SCRIPTS    := $(srctree)/scripts/fs/mkimage.sh
MSDOS_TAR        := tar.bz2
MSDOS_PACKAGE    := $(MSDOS_NAME)-$(MSDOS_SUBNAME)-$(MSDOS_VERSION).img
SUB_TARGET       += $(MSDOS_DIR)/build

run_msdos_sh = $(CONFIG_SHELL) $(MSDOS_SCRIPTS) \
               $1 $(MSDOS_NAME)X $(MSDOS_VERSION)X \
               $(CONFIG_LINUX_KERNEL_VERSION)X \
               $(CONFIG_MAIN_PROJ_NAME)X $(CONFIG_BOOT_SEABIOS)X

$(MSDOS_DIR)/build: FORCE
	$(Q)$(call run_msdos_sh,$(srctree))
