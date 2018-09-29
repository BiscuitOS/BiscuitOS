################################################
#
# SeaBIOS for i386
#
################################################
SEABIOS_NAME       := SeaBIOS
SEABIOS_VERSION    := $(CONFIG_SEABIOS_VER)
SEABIOS_SITE       := https://github.com/coreboot/seabios.git 
SEABIOS_SUBNAME    := 
SEABIOS_DIR        := $(srctree)/boot/$(SEABIOS_NAME)
SEABIOS_PATCH      := $(SEABIOS_DIR)/patch 
SEABIOS_OUT        := 
SEABIOS_SCRIPTS    := $(srctree)/scripts/boot/seaBIOS.sh
SEABIOS_TAR        := 
SEABIOS_PACKAGE    := 
SUB_TARGET          += $(SEABIOS_DIR)/build

SEABIOS_sh = $(CONFIG_SHELL) $(SEABIOS_SCRIPTS) \
               $1 $(SEABIOS_NAME) $(SEABIOS_VERSION) \
               $(SEABIOS_SITE) $(SEABIOS_PATCH) $(KERNEL_VERSION) \
		$(CONFIG_COREBOOT_ON)

$(SEABIOS_DIR)/build: FORCE
	$(Q)$(call SEABIOS_sh,$(srctree))
