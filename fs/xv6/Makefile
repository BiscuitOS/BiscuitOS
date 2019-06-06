################################################
#
# To build xv6 filesystem
#
################################################
XV6_NAME       := xv6
XV6_VERSION    := V1
XV6_SITE       := https://raw.githubusercontent.com/BiscuitOS/PackageManage/master/rootfs
XV6_SUBNAME    := origin
XV6_DIR        := $(srctree)/fs/xv6
XV6_OUT        := $(srctree)/output/fs/xv6
XV6_SCRIPTS    := $(srctree)/scripts/fs/xv6.sh
XV6_TAR        := tar.bz2
XV6_PACKAGE    := $(XV6_NAME)-$(XV6_SUBNAME)-$(XV6_VERSION).img
SUB_TARGET       += $(XV6_DIR)/build

run_xv6_sh = $(CONFIG_SHELL) $(XV6_SCRIPTS) \
               $1 $(XV6_NAME)X $(XV6_VERSION)X \
               $(CONFIG_XV6_VERSION)X \
               $(CONFIG_MAIN_PROJ_NAME)X $(CONFIG_BOOT_SEABIOS)X

$(XV6_DIR)/build: FORCE
	$(Q)$(call run_xv6_sh,$(srctree))
