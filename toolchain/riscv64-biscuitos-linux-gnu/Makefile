################################################
#
# riscv64-biscuitos-linux-gnu for Risc-V 64bit
#
################################################
RISCV64_GCC_NAME       := riscv64-biscuitos-linux-gnu
RISCV64_GCC_VERSION    := $(CONFIG_TOOL_RISCV64_VERSION)
RISCV64_GCC_SITE       :=
RISCV64_GCC_SUBNAME    :=
RISCV64_GCC_DIR        := $(srctree)/toolchain/riscv64-biscuitos-linux-gnu
RISCV64_GCC_PATCH      := $(srctree)/toolchain/riscv64-biscuitos-linux-gnu/patch
RISCV64_GCC_OUT        :=
RISCV64_GCC_SCRIPTS    := $(srctree)/scripts/prebuild/gnu-riscv.sh
RISCV64_GCC_TAR        := $(CONFIG_TOOL_RISCV64_TAR)
RISCV64_GCC_PACKAGE    :=
SUB_TARGET             += $(RISCV64_GCC_DIR)/build

RISCV64_GCC_sh = $(CONFIG_SHELL) $(RISCV64_GCC_SCRIPTS) \
               $1 $(RISCV64_GCC_NAME)X $(RISCV64_GCC_VERSION)X \
               $(RISCV64_GCC_SITE)X $(RISCV64_GCC_PATCH)X 5.0 \
	       $(CONFIG_MAIN_PROJ_NAME)X \
               $(RISCV64_GCC_TAR)X $(CONFIG_TOOL_RISCV_GNU_SRC)X \
               $(CONFIG_TOOL_RISCV64_WAY)X

$(RISCV64_GCC_DIR)/build: FORCE
	$(Q)$(call RISCV64_GCC_sh,$(srctree))
