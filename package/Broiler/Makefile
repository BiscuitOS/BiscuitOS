################################################
#
# Broiler emulator
#
################################################
BROILER_SYSTEM_NAME       := Broiler-system
BROILER_SYSTEM_VERSION    := $(CONFIG_BROILER_SYSTEM_VERSION)
BROILER_SYSTEM_SITE       := 
BROILER_SYSTEM_GITHUB     := https://gitee.com/BiscuitOS_team/broiler.git
BROILER_SYSTEM_SUBNAME    := $(CONFIG_BROILER_SYSTEM_DL_NAME)
BROILER_SYSTEM_DIR        := $(srctree)/package/Broiler
BROILER_SYSTEM_PATCH      := $(srctree)/package/Broiler/patch
BROILER_SYSTEM_OUT        := 
BROILER_SYSTEM_SCRIPTS    := $(srctree)/scripts/package/Broiler_system.sh
BROILER_SYSTEM_TAR        := tar.xz
BROILER_SYSTEM_PACKAGE    := 
SUB_TARGET             += $(BROILER_SYSTEM_DIR)/build

BROILER_SYSTEM_sh = $(CONFIG_SHELL) $(BROILER_SYSTEM_SCRIPTS) \
               $1 $(BROILER_SYSTEM_NAME)X $(BROILER_SYSTEM_VERSION)X \
               $(BROILER_SYSTEM_SITE)X $(BROILER_SYSTEM_GITHUB)X \
               $(BROILER_SYSTEM_PATCH)X 5.0 \
	       $(CONFIG_BROILER_SYSTEM_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               ${BROILER_SYSTEM_TAR}X $(BROILER_SYSTEM_SUBNAME)X \
	       $(CONFIG_ARCH_MAGIC)X

$(BROILER_SYSTEM_DIR)/build: FORCE
	$(Q)$(call BROILER_SYSTEM_sh,$(srctree))
