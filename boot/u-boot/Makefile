################################################
#
# uboot
#
################################################
UBOOT_NAME       := u-boot
UBOOT_VERSION    := $(CONFIG_UBOOT_VERSION)
UBOOT_SITE       := $(CONFIG_UBOOT_WGET_SITE)
UBOOT_GITHUB     := $(UBOOT_GITHUB_SITE)
UBOOT_SUBNAME    := $(CONFIG_UBOOT_DL_NAME)
UBOOT_DIR        := $(srctree)/boot/uboot/
UBOOT_PATCH      := $(srctree)/boot/uboot/patch
UBOOT_OUT        := 
UBOOT_SCRIPTS    := $(srctree)/scripts/boot/uboot.sh
UBOOT_TAR        := $(CONFIG_UBOOT_TAR_TYPE)
UBOOT_PACKAGE    := 
SUB_TARGET       += $(UBOOT_DIR)/build

UBOOT_sh = $(CONFIG_SHELL) $(UBOOT_SCRIPTS) \
               ${1}X $(UBOOT_NAME)X $(UBOOT_VERSION)X \
               $(UBOOT_SITE)X $(CONFIG_UBOOT_GITHUB_SITE)X \
               $(UBOOT_PATCH)X 5.0 \
	       $(CONFIG_UBOOT_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(UBOOT_TAR)X $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_UBOOT_CROSS_COMPILE)X $(UBOOT_SUBNAME)X \
               $(CONFIG_ARCH_MAGIC)X

$(UBOOT_DIR)/build: FORCE
	$(Q)$(call UBOOT_sh,$(srctree))
