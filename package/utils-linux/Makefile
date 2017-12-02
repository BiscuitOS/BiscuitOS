################################################
#
# To build UTILS_LINUX toolchain
#
################################################
UTILS_LINUX_NAME       := utils-linux
UTILS_LINUX_VERSION    := 0.11
UTILS_LINUX_SITE       := $(MP_DOWNLOAD)/gnu-binutils
UTILS_LINUX_DIR        := $(srctree)/package/$(UTILS_LINUX_NAME)
UTILS_LINUX_OUT        := $(srctree)/output/rootfs/
UTILS_LINUX_SCRIPTS    := $(srctree)/scripts/package/utils-linux.sh
UTILS_LINUX_TAR        := tar.bz2
SUB_TARGET         += $(UTILS_LINUX_DIR)/build
UTILS_LINUX_cmd        := download
UTILS_LINUX_PACKAGE_NAME := binutils-linux-0.11

run_UTILS_LINUX_sh = $(CONFIG_SHELL) $(UTILS_LINUX_SCRIPTS) \
               $(srctree) $(UTILS_LINUX_SITE) \
     	       $(UTILS_LINUX_PACKAGE_NAME) \
               $(UTILS_LINUX_TAR) $(UTILS_LINUX_OUT) $1

$(UTILS_LINUX_DIR)/build: FORCE
	$(Q)$(call run_UTILS_LINUX_sh,$(UTILS_LINUX_cmd))
