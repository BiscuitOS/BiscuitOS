################################################
#
# riscv64-linux-gnu for Risc-V 64bit
#
################################################
RISCV_GNU_GCC_NAME       := riscv64-linux-gnu
RISCV_GNU_GCC_VERSION    :=
RISCV_GNU_GCC_SITE       :=
RISCV_GNU_GCC_SUBNAME    :=
RISCV_GNU_GCC_DIR        := $(srctree)/toolchain/riscv64-linux-gnu
RISCV_GNU_GCC_PATCH      := $(srctree)/toolchain/riscv64-linux-gnu/patch
RISCV_GNU_GCC_OUT        :=
RISCV_GNU_GCC_SCRIPTS    := $(srctree)/scripts/prebuild/gnu-riscv64.sh
RISCV_GNU_GCC_TAR        := tar.xz
RISCV_GNU_GCC_PACKAGE    :=
SUB_TARGET               += $(RISCV_GNU_GCC_DIR)/build

RISCV_GNU_GCC_sh = $(CONFIG_SHELL) $(RISCV_GNU_GCC_SCRIPTS) \
               $1 $(RISCV_GNU_GCC_NAME)X $(RISCV_GNU_GCC_VERSION)X \
               $(RISCV_GNU_GCC_SITE)X $(RISCV_GNU_GCC_PATCH)X 5.0 \
	       $(CONFIG_MAIN_PROJ_NAME)X \
               $(RISCV_GNU_GCC_TAR)X $(CONFIG_TOOL_RISCV_GNU_SRC)X \
               $(CONFIG_TOOL_RISCV64_WAY)X

$(RISCV_GNU_GCC_DIR)/build: FORCE
	$(Q)$(call RISCV_GNU_GCC_sh,$(srctree))
