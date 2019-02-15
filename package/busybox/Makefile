################################################
#
# busybox emulator
#
################################################
BUSYBOX_NAME       := busybox
BUSYBOX_VERSION    := $(CONFIG_BUSYBOX_VERSION)
BUSYBOX_SITE       := https://busybox.net/downloads/
BUSYBOX_GITHUB     := https://github.com/mirror/busybox.git
BUSYBOX_SUBNAME    := $(CONFIG_BUSYBOX_DL_NAME)
BUSYBOX_DIR        := $(srctree)/package/busybox
BUSYBOX_PATCH      := $(srctree)/package/busybox/patch 
BUSYBOX_OUT        := 
BUSYBOX_SCRIPTS    := $(srctree)/scripts/package/Busybox.sh
BUSYBOX_TAR        := tar.bz2
BUSYBOX_PACKAGE    := 
SUB_TARGET         += $(BUSYBOX_DIR)/build

BUSYBOX_sh = $(CONFIG_SHELL) $(BUSYBOX_SCRIPTS) \
               $1 $(BUSYBOX_NAME) $(BUSYBOX_VERSION) \
               $(BUSYBOX_SITE) $(BUSYBOX_GITHUB) \
               $(BUSYBOX_PATCH) 5.0 \
	       $(CONFIG_BUSYBOX_SRC) $(CONFIG_MAIN_PROJ_NAME) \
               $(BUSYBOX_TAR) $(CONFIG_ARCH_MAGIC) \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(BUSYBOX_SUBNAME)X

$(BUSYBOX_DIR)/build: FORCE
	$(Q)$(call BUSYBOX_sh,$(srctree))
