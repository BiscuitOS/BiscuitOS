################################################
#
# arm-none-linux-gnueabi for ARM32/Uboot
#
################################################
ARM_NONE_GNUEABI_GCC_NAME       := arm-linux-gnueabi
ARM_NONE_GNUEABI_GCC_VERSION    := arm-2009q3-67
ARM_NONE_GNUEABI_GCC_SITE       := https://raw.githubusercontent.com/BiscuitOS/PackageManage/master/cross-tools/arm-2009q3-67-arm-none-linux-gnueabi-i686-pc-linux-gnu.tar.bz2
ARM_NONE_GNUEABI_GCC_SUBNAME    := arm-2009q3-67-arm-none-linux-gnueabi-i686-pc-linux-gnu.tar.bz2
ARM_NONE_GNUEABI_GCC_DIR        := $(srctree)/toolchain/arm-none-linux-gnueabi
ARM_NONE_GNUEABI_GCC_PATCH      := $(srctree)/toolchain/arm-none-linux-gnueabi/patch
ARM_NONE_GNUEABI_GCC_OUT        := 
ARM_NONE_GNUEABI_GCC_SCRIPTS    := $(srctree)/scripts/prebuild/gnu-arm.sh
ARM_NONE_GNUEABI_GCC_TAR        := tar.bz2
ARM_NONE_GNUEABI_GCC_PACKAGE    := 
SUB_TARGET             += $(ARM_NONE_GNUEABI_GCC_DIR)/build

ARM_NONE_GNUEABI_GCC_sh = $(CONFIG_SHELL) $(ARM_NONE_GNUEABI_GCC_SCRIPTS) \
               $1 $(ARM_NONE_GNUEABI_GCC_NAME)X $(ARM_NONE_GNUEABI_GCC_VERSION)X \
               $(ARM_NONE_GNUEABI_GCC_SITE)X $(ARM_NONE_GNUEABI_GCC_PATCH)X 5.0 \
	       $(CONFIG_MAIN_PROJ_NAME)X \
               $(ARM_NONE_GNUEABI_GCC_TAR)X 2X \
               $(CONFIG_TOOL_ARM_GNUEABI_DL_NAME)X \
               $(CONFIG_UBOOT)X

$(ARM_NONE_GNUEABI_GCC_DIR)/build: FORCE
	$(Q)$(call ARM_NONE_GNUEABI_GCC_sh,$(srctree))
