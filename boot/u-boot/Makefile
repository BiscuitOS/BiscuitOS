################################################
#
# UBOOT for i386
#
################################################
UBOOT_NAME       := UBOOT
UBOOT_VERSION    := $(CONFIG_UBOOT_VER)
UBOOT_SITE       := https://github.com/coreboot/UBOOT.git 
UBOOT_SUBNAME    := 
UBOOT_DIR        := $(srctree)/boot/$(UBOOT_NAME)
UBOOT_PATCH      := $(UBOOT_DIR)/patch 
UBOOT_OUT        := 
UBOOT_SCRIPTS    := $(srctree)/scripts/boot/UBOOT.sh
UBOOT_TAR        := 
UBOOT_PACKAGE    := 
SUB_TARGET          += $(UBOOT_DIR)/build

UBOOT_sh = $(CONFIG_SHELL) $(UBOOT_SCRIPTS) \
               $1 $(UBOOT_NAME) $(UBOOT_VERSION) \
               $(UBOOT_SITE) $(UBOOT_PATCH) $(KERNEL_VERSION)

$(UBOOT_DIR)/build: FORCE
	$(Q)$(call UBOOT_sh,$(srctree))
