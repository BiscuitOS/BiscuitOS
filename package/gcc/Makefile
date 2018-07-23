################################################
#
# To build GNU_GCC toolchain
#
################################################
GNU_GCC_NAME       := gcc
GNU_GCC_VERSION    := 1.4
GNU_GCC_SITE       := $(MP_DOWNLOAD)/gnu-binutils
GNU_GCC_DIR        := $(srctree)/package/gcc
GNU_GCC_OUT        := $(srctree)/output/rootfs/usr/local
GNU_GCC_SCRIPTS    := $(srctree)/scripts/package/gnu-gcc.sh
GNU_GCC_TAR        := tar.bz2
SUB_TARGET         += $(GNU_GCC_DIR)/build
GNU_GCC_cmd        := download
GNU_GCC_PACKAGE_NAME := gcc1.4-biscuitos0.11

run_GNU_GCC_sh = $(CONFIG_SHELL) $(GNU_GCC_SCRIPTS) \
               $1 $(GNU_GCC_NAME) $(GNU_GCC_VERSION) \
               $(KERNEL_VERSION) $(GNU_GCC_SITE)

$(GNU_GCC_DIR)/build: FORCE
	$(Q)$(call run_GNU_GCC_sh,$(srctree))
