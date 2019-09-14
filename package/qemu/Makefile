################################################
#
# qemu emulator
#
################################################
QEMU_SYSTEM_NAME       := qemu-system
QEMU_SYSTEM_VERSION    := $(CONFIG_QEMU_SYSTEM_VERSION)
QEMU_SYSTEM_SITE       := https://download.qemu.org
QEMU_SYSTEM_GITHUB     := https://git.qemu.org/git/qemu.git
QEMU_SYSTEM_SUBNAME    := $(CONFIG_QEMU_SYSTEM_DL_NAME)
QEMU_SYSTEM_DIR        := $(srctree)/package/qemu
QEMU_SYSTEM_PATCH      := $(srctree)/package/qemu/patch
QEMU_SYSTEM_OUT        := 
QEMU_SYSTEM_SCRIPTS    := $(srctree)/scripts/package/qemu_system.sh
QEMU_SYSTEM_TAR        := tar.xz
QEMU_SYSTEM_PACKAGE    := 
SUB_TARGET             += $(QEMU_SYSTEM_DIR)/build

QEMU_SYSTEM_sh = $(CONFIG_SHELL) $(QEMU_SYSTEM_SCRIPTS) \
               $1 $(QEMU_SYSTEM_NAME)X $(QEMU_SYSTEM_VERSION)X \
               $(QEMU_SYSTEM_SITE)X $(QEMU_SYSTEM_GITHUB)X \
               $(QEMU_SYSTEM_PATCH)X 5.0 \
	       $(CONFIG_QEMU_SYSTEM_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               ${QEMU_SYSTEM_TAR}X $(QEMU_SYSTEM_SUBNAME)X \
	       $(CONFIG_ARCH_MAGIC)X

$(QEMU_SYSTEM_DIR)/build: FORCE
	$(Q)$(call QEMU_SYSTEM_sh,$(srctree))
