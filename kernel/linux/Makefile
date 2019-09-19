################################################
#
# Linux kernel
#
################################################
LINUX_KERNEL_NAME       := linux
LINUX_KERNEL_VERSION    := $(CONFIG_LINUX_KERNEL_VERSION)
LINUX_KERNEL_SITE       := $(CONFIG_LINUX_KERNEL_WGET_SITE)
LINUX_KERNEL_GITHUB     := $(CONFIG_LINUX_KERNEL_GITHUB_SITE)
LINUX_KERNEL_SUBNAME    := $(CONFIG_LINUX_KERNEL_DL_NAME)
LINUX_KERNEL_DIR        := $(srctree)/kernel/linux/
LINUX_KERNEL_PATCH      := $(srctree)/kernel/linux/patch
LINUX_KERNEL_OUT        := 
LINUX_KERNEL_SCRIPTS    := $(srctree)/scripts/linux/linux.sh
LINUX_KERNEL_TAR        := $(CONFIG_LINUX_KERNEL_TAR_TYPE)
LINUX_KERNEL_PACKAGE    := 
SUB_TARGET              += $(LINUX_KERNEL_DIR)/build

LINUX_KERNEL_sh = $(CONFIG_SHELL) $(LINUX_KERNEL_SCRIPTS) \
               ${1}X $(LINUX_KERNEL_NAME)X $(LINUX_KERNEL_VERSION)X \
               $(LINUX_KERNEL_SITE)X $(LINUX_KERNEL_GITHUB)X \
               $(LINUX_KERNEL_PATCH)X 5.0 \
	       $(CONFIG_LINUX_KERNEL_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(LINUX_KERNEL_TAR)X $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(LINUX_KERNEL_SUBNAME)X \
               $(CONFIG_LINUX_BUILD_HIST)X $(LINUX_KERNEL_DIR)X \
               $(CONFIG_ARCH_MAGIC)X

$(LINUX_KERNEL_DIR)/build: FORCE
	$(Q)$(call LINUX_KERNEL_sh,$(srctree))
