################################################
#
# To build Debian-0.91 filesystem
#
################################################
DEBIAN_LEGACY_NAME       := Debian-0.91
DEBIAN_LEGACY_VERSION    := V1
DEBIAN_LEGACY_SITE       := https://raw.githubusercontent.com/BiscuitOS/PackageManage/master/rootfs
DEBIAN_LEGACY_SUBNAME    := origin
DEBIAN_LEGACY_DIR        := $(srctree)/fs/Debian-0.91
DEBIAN_LEGACY_OUT        := $(srctree)/output/fs/Debian-0.91
DEBIAN_LEGACY_SCRIPTS    := $(srctree)/scripts/fs/Debian.sh
DEBIAN_LEGACY_TAR        := tar.xz
DEBIAN_LEGACY_PACKAGE    := $(DEBIAN_LEGACY_NAME)-$(DEBIAN_LEGACY_SUBNAME)-$(DEBIAN_LEGACY_VERSION).img
SUB_TARGET       += $(DEBIAN_LEGACY_DIR)/build

run_Debian-0.91_sh = $(CONFIG_SHELL) $(DEBIAN_LEGACY_SCRIPTS) \
               $1 $(DEBIAN_LEGACY_NAME)X $(DEBIAN_LEGACY_VERSION)X \
               $(CONFIG_DEBIAN_LEGACY_VERSION)X \
               $(CONFIG_MAIN_PROJ_NAME)X $(CONFIG_BOOT_SEABIOS)X \
               $(DEBIAN_LEGACY_SITE)X $(DEBIAN_LEGACY_TAR)X

$(DEBIAN_LEGACY_DIR)/build: FORCE
	$(Q)$(call run_Debian-0.91_sh,$(srctree))
