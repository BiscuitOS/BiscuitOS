################################################
#
# To build Apollo filesystem
#
################################################
APOLLO_NAME       := Apollo
APOLLO_VERSION    := V1
APOLLO_SITE       := https://raw.githubusercontent.com/BiscuitOS/PackageManage/master/rootfs
APOLLO_SUBNAME    := origin
APOLLO_DIR        := $(srctree)/fs/Apollo
APOLLO_OUT        := $(srctree)/output/fs/Apollo
APOLLO_SCRIPTS    := $(srctree)/scripts/fs/Apollo.sh
APOLLO_TAR        := tar.bz2
APOLLO_PACKAGE    := $(APOLLO_NAME)-$(APOLLO_SUBNAME)-$(APOLLO_VERSION).img
SUB_TARGET       += $(APOLLO_DIR)/build

run_Apollo_sh = $(CONFIG_SHELL) $(APOLLO_SCRIPTS) \
               $1 $(APOLLO_NAME)X $(APOLLO_VERSION)X \
               $(CONFIG_APOLLO_VERSION)X \
               $(CONFIG_MAIN_PROJ_NAME)X $(CONFIG_BOOT_SEABIOS)X

$(APOLLO_DIR)/build: FORCE
	$(Q)$(call run_Apollo_sh,$(srctree))
