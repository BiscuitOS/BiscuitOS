################################################
#
# SerenityOS
#
################################################
SERENITYOS_KERNEL_NAME       := SerenityOS-on-BiscuitOS
SERENITYOS_KERNEL_VERSION    := $(CONFIG_SERENITYOS_VERSION)
SERENITYOS_KERNEL_SITE       := https://gitee.com/mirrors/Serenity.git
SERENITYOS_KERNEL_GITHUB     := $(CONFIG_SERENITYOS_GITHUB)
SERENITYOS_KERNEL_SUBNAME    := $(CONFIG_SERENITYOS_KERNEL_DL_NAME)
SERENITYOS_KERNEL_DIR        := $(srctree)/SerenityOS
SERENITYOS_KERNEL_PATCH      := $(srctree)/SerenityOS/patch
SERENITYOS_KERNEL_OUT        := 
SERENITYOS_KERNEL_SCRIPTS    := $(srctree)/scripts/linux/SerenityOS.sh
SERENITYOS_KERNEL_TAR        := $(CONFIG_SERENITYOS_KERNEL_TAR_TYPE)
SERENITYOS_KERNEL_PACKAGE    := 
SUB_TARGET              += $(SERENITYOS_KERNEL_DIR)/build

SERENITYOS_KERNEL_sh = $(CONFIG_SHELL) $(SERENITYOS_KERNEL_SCRIPTS) \
               ${1}X $(SERENITYOS_KERNEL_NAME)X $(SERENITYOS_KERNEL_VERSION)X \
               $(SERENITYOS_KERNEL_SITE)X $(SERENITYOS_KERNEL_GITHUB)X \
               $(SERENITYOS_KERNEL_PATCH)X 5.0 \
	       1X $(CONFIG_MAIN_PROJ_NAME)X \
               $(SERENITYOS_KERNEL_TAR)X $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_SERENITYOS_KERNEL_CROSS_COMPILE)X $(SERENITYOS_KERNEL_SUBNAME)X \
               $(CONFIG_SERENITYOS_BUILD_HIST)X

$(SERENITYOS_KERNEL_DIR)/build: FORCE
	$(Q)$(call SERENITYOS_KERNEL_sh,$(srctree))
