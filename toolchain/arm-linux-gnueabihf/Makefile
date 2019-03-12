################################################
#
# arm-linux-gnueabihf for ARM32/Uboot
#
################################################
ARM_GNUEABIHF_GCC_NAME       := arm-linux-gnueabihf
ARM_GNUEABIHF_GCC_VERSION    := $(CONFIG_ARM_GNUEABIHF_VERSION)
ARM_GNUEABIHF_GCC_SITE       := https://releases.linaro.org/components/toolchain/binaries/$(CONFIG_ARM_GNUEABIHF_FULL_NAME)
ARM_GNUEABIHF_GCC_SUBNAME    := $(CONFIG_TOOL_ARM_GNUEABIHF_XZ_NAME)
ARM_GNUEABIHF_GCC_DIR        := $(srctree)/toolchain/arm-linux-gnueabihf
ARM_GNUEABIHF_GCC_PATCH      := $(srctree)/toolchain/arm-linux-gnueabihf/patch
ARM_GNUEABIHF_GCC_OUT        := 
ARM_GNUEABIHF_GCC_SCRIPTS    := $(srctree)/scripts/prebuild/gnu-arm.sh
ARM_GNUEABIHF_GCC_TAR        := tar.xz
ARM_GNUEABIHF_GCC_PACKAGE    := 
SUB_TARGET             += $(ARM_GNUEABIHF_GCC_DIR)/build

ARM_GNUEABIHF_GCC_sh = $(CONFIG_SHELL) $(ARM_GNUEABIHF_GCC_SCRIPTS) \
               $1 $(ARM_GNUEABIHF_GCC_NAME)X $(ARM_GNUEABIHF_GCC_VERSION)X \
               $(ARM_GNUEABIHF_GCC_SITE)X $(ARM_GNUEABIHF_GCC_PATCH)X 5.0 \
	       $(CONFIG_MAIN_PROJ_NAME)X \
               $(ARM_GNUEABIHF_GCC_TAR)X $(CONFIG_TOOL_ARM_GNUEABIHF_SRC)X \
               $(CONFIG_TOOL_ARM_GNUEABIHF_DL_NAME)X

$(ARM_GNUEABIHF_GCC_DIR)/build: FORCE
	$(Q)$(call ARM_GNUEABIHF_GCC_sh,$(srctree))
