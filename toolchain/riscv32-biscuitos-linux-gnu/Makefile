################################################
#
# riscv32-biscuitos-linux-gnu for Risc-V 32bit
#
################################################
RISCV32_GCC_NAME       := riscv32-biscuitos-linux-gnu
RISCV32_GCC_VERSION    := $(CONFIG_TOOL_RISCV32_VERSION)
RISCV32_GCC_SITE       :=
RISCV32_GCC_SUBNAME    :=
RISCV32_GCC_DIR        := $(srctree)/toolchain/riscv32-biscuitos-linux-gnu
RISCV32_GCC_PATCH      := $(srctree)/toolchain/riscv32-biscuitos-linux-gnu/patch
RISCV32_GCC_OUT        :=
RISCV32_GCC_SCRIPTS    := $(srctree)/scripts/prebuild/gnu-riscv.sh
RISCV32_GCC_TAR        := $(CONFIG_TOOL_RISCV32_TAR)
RISCV32_GCC_PACKAGE    :=
SUB_TARGET             += $(RISCV32_GCC_DIR)/build

RISCV32_GCC_sh = $(CONFIG_SHELL) $(RISCV32_GCC_SCRIPTS) \
               $1 $(RISCV32_GCC_NAME)X $(RISCV32_GCC_VERSION)X \
               $(RISCV32_GCC_SITE)X $(RISCV32_GCC_PATCH)X 5.0 \
	       $(CONFIG_MAIN_PROJ_NAME)X \
               $(RISCV32_GCC_TAR)X $(CONFIG_TOOL_RISCV_GNU_SRC)X \
               $(CONFIG_TOOL_RISCV32_WAY)X

$(RISCV32_GCC_DIR)/build: FORCE
	$(Q)$(call RISCV32_GCC_sh,$(srctree))
