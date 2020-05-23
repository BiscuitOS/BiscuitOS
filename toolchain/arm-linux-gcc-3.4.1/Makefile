################################################
#
# arm-linux-gcc for linux < 2.6.24
#
################################################
ARM_LINUX_GCC341_NAME       := arm-linux
ARM_LINUX_GCC341_VERSION    := 3.4.1
ARM_LINUX_GCC341_SITE       := https://raw.githubusercontent.com/BiscuitOS/PackageManage/master/cross-tools/arm-linux-gcc-3.4.1.tar.gz
ARM_LINUX_GCC341_SUBNAME    := arm-linux-gcc-3.4.1.tar.gz
ARM_LINUX_GCC341_DIR        := $(srctree)/toolchain/arm-linux-gcc-3.4.1
ARM_LINUX_GCC341_PATCH      := $(srctree)/toolchain/arm-linux-gcc-3.4.1/patch
ARM_LINUX_GCC341_OUT        := 
ARM_LINUX_GCC341_SCRIPTS    := $(srctree)/scripts/prebuild/gnu-arm.sh
ARM_LINUX_GCC341_TAR        := tar.gz
ARM_LINUX_GCC341_PACKAGE    := 
SUB_TARGET             += $(ARM_LINUX_GCC341_DIR)/build

ARM_LINUX_GCC341_sh = $(CONFIG_SHELL) $(ARM_LINUX_GCC341_SCRIPTS) \
               $1 $(ARM_LINUX_GCC341_NAME)X $(ARM_LINUX_GCC341_VERSION)X \
               $(ARM_LINUX_GCC341_SITE)X $(ARM_LINUX_GCC341_PATCH)X 5.0 \
	       $(CONFIG_MAIN_PROJ_NAME)X \
               $(ARM_LINUX_GCC341_TAR)X 2X \
               $(CONFIG_TOOL_ARM_GNUEABI_DL_NAME)X \
               $(CONFIG_UBOOT)X

$(ARM_LINUX_GCC341_DIR)/build: FORCE
	$(Q)$(call ARM_LINUX_GCC341_sh,$(srctree))
