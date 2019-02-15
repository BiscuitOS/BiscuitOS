################################################
#
# aarch64-linux-gnu for ARM64
#
################################################
AARCH64_GCC_NAME       := aarch64-linux-gnu
AARCH64_GCC_VERSION    := $(CONFIG_AARCH64_VERSION)
AARCH64_GCC_SITE       := https://releases.linaro.org/components/toolchain/binaries/$(CONFIG_AARCH64_FULL_NAME)
AARCH64_GCC_SUBNAME    := $(CONFIG_TOOL_AARCH64_XZ_NAME)
AARCH64_GCC_DIR        := $(srctree)/toolchain/aarch64-linux-gnu
AARCH64_GCC_PATCH      := $(srctree)/toolchain/aarch64-linux-gnu/patch 
AARCH64_GCC_OUT        := 
AARCH64_GCC_SCRIPTS    := $(srctree)/scripts/prebuild/gnu-arm.sh
AARCH64_GCC_TAR        := tar.xz
AARCH64_GCC_PACKAGE    := 
SUB_TARGET             += $(AARCH64_GCC_DIR)/build

AARCH64_GCC_sh = $(CONFIG_SHELL) $(AARCH64_GCC_SCRIPTS) \
               $1 $(AARCH64_GCC_NAME) $(AARCH64_GCC_VERSION) \
               $(AARCH64_GCC_SITE) $(AARCH64_GCC_PATCH) 5.0 \
	       $(CONFIG_MAIN_PROJ_NAME) \
               $(AARCH64_GCC_TAR) $(CONFIG_TOOL_AARCH64_SRC) \
               $(CONFIG_TOOL_AARCH64_DL_NAME)

$(AARCH64_GCC_DIR)/build: FORCE
	$(Q)$(call AARCH64_GCC_sh,$(srctree))
