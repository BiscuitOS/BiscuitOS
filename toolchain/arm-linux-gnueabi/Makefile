################################################
#
# arm-linux-gnueabi for ARM32/Uboot
#
################################################
ARM_GNUEABI_GCC_NAME       := arm-linux-gnueabi
ARM_GNUEABI_GCC_VERSION    := $(CONFIG_ARM_GNUEABI_VERSION)
ARM_GNUEABI_GCC_SITE       := https://releases.linaro.org/components/toolchain/binaries/$(CONFIG_ARM_GNUEABI_FULL_NAME)
ARM_GNUEABI_GCC_SUBNAME    := $(CONFIG_TOOL_ARM_GNUEABI_XZ_NAME)
ARM_GNUEABI_GCC_DIR        := $(srctree)/toolchain/arm-linux-gnueabi
ARM_GNUEABI_GCC_PATCH      := $(srctree)/toolchain/arm-linux-gnueabi/patch
ARM_GNUEABI_GCC_OUT        := 
ARM_GNUEABI_GCC_SCRIPTS    := $(srctree)/scripts/prebuild/gnu-arm.sh
ARM_GNUEABI_GCC_TAR        := tar.xz
ARM_GNUEABI_GCC_PACKAGE    := 
SUB_TARGET             += $(ARM_GNUEABI_GCC_DIR)/build

ARM_GNUEABI_GCC_sh = $(CONFIG_SHELL) $(ARM_GNUEABI_GCC_SCRIPTS) \
               $1 $(ARM_GNUEABI_GCC_NAME)X $(ARM_GNUEABI_GCC_VERSION)X \
               $(ARM_GNUEABI_GCC_SITE)X $(ARM_GNUEABI_GCC_PATCH)X 5.0 \
	       $(CONFIG_MAIN_PROJ_NAME)X \
               $(ARM_GNUEABI_GCC_TAR)X $(CONFIG_TOOL_ARM_GNUEABI_SRC)X \
               $(CONFIG_TOOL_ARM_GNUEABI_DL_NAME)X \
               $(CONFIG_UBOOT)X

$(ARM_GNUEABI_GCC_DIR)/build: FORCE
	$(Q)$(call ARM_GNUEABI_GCC_sh,$(srctree))
