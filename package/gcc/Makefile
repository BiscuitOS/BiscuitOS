################################################
#
# To build TOOL_LEGGCC toolchain
#
################################################
TOOL_LEGGCC_NAME       := gcc
TOOL_LEGGCC_VERSION    := 1.4
TOOL_LEGGCC_SITE       := https://raw.githubusercontent.com/BiscuitOS/PackageManage/master/gnu-binutils
TOOL_LEGGCC_DIR        := $(srctree)/package/gcc
TOOL_LEGGCC_OUT        := $(srctree)/output/rootfs/usr/local
TOOL_LEGGCC_SCRIPTS    := $(srctree)/scripts/package/gnu-gcc.sh
TOOL_LEGGCC_TAR        := tar.bz2
SUB_TARGET             += $(TOOL_LEGGCC_DIR)/build
TOOL_LEGGCC_cmd        := download
TOOL_LEGGCC_PACKAGE_NAME := gcc1.4-biscuitos0.11

run_TOOL_LEGGCC_sh = $(CONFIG_SHELL) $(TOOL_LEGGCC_SCRIPTS) \
               $1X $(TOOL_LEGGCC_NAME)X $(TOOL_LEGGCC_VERSION)X \
               $(CONFIG_LINUX_KERNEL_VERSION)X $(TOOL_LEGGCC_SITE)X \
               $(CONFIG_MAIN_PROJ_NAME)X

$(TOOL_LEGGCC_DIR)/build: FORCE
	$(Q)$(call run_TOOL_LEGGCC_sh,$(srctree))
