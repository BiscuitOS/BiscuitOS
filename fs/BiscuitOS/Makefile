################################################
#
# BiscuitOS-Desktop filesystem
#
################################################
BISCUITOS_NAME       := BiscuitOS
BISCUITOS_VERSION    := $(CONFIG_BISCUITOS_VERSION)
BISCUITOS_SITE       := $(CONFIG_BISCUITOS_WGET_SITE)
BISCUITOS_GITHUB     := $(BISCUITOS_GITHUB_SITE)
BISCUITOS_SUBNAME    := $(CONFIG_BISCUITOS_DL_NAME)
BISCUITOS_DIR        := $(srctree)/fs/
BISCUITOS_PATCH      := $(srctree)/fs/patch
BISCUITOS_OUT        := 
BISCUITOS_SCRIPTS    := $(srctree)/scripts/fs/Desktop.sh
BISCUITOS_TAR        := $(CONFIG_BISCUITOS_TAR_TYPE)
BISCUITOS_PACKAGE    := 
BISCUITOS_RUN_ONLY   := N
SUB_TARGET      += $(BISCUITOS_DIR)/build

BISCUITOS_sh = $(CONFIG_SHELL) $(BISCUITOS_SCRIPTS) \
               ${1}X $(BISCUITOS_NAME)X $(BISCUITOS_VERSION)X \
               $(BISCUITOS_SITE)X $(BISCUITOS_GITHUB)X \
               $(BISCUITOS_PATCH)X $(CONFIG_LINUX_KERNEL_VERSION)X \
	       $(CONFIG_BISCUITOS_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(BISCUITOS_TAR)X $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(BISCUITOS_SUBNAME)X \
               $(CONFIG_LINUX_BUILD_HIST)X $(CONFIG_UBOOT)X \
               $(CONFIG_UBOOT_CROSS_COMPILE)X \
               $(CONFIG_ROOTFS_SIZE)X \
               $(CONFIG_FREEZE_SIZE)X $(BISCUITOS_RUN_ONLY)X \
               DesktopX

$(BISCUITOS_DIR)/build: FORCE
	$(Q)$(call BISCUITOS_sh,$(srctree))
