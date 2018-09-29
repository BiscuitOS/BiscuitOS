################################################
#
# DTS for platform
#
################################################
DTS_NAME       := DTS
DTS_VERSION    := 
DTS_SITE       := 
DTS_SUBNAME    := 
DTS_DIR        := $(srctree)/board/dts
DTS_PATCH      := 
DTS_OUT        := 
DTS_SCRIPTS    := $(srctree)/scripts/board/dts.sh
DTS_TAR        := 
DTS_PACKAGE    := 
SUB_TARGET          += $(DTS_DIR)/build

DTS_sh = $(CONFIG_SHELL) $(DTS_SCRIPTS) \
               $1 $(CONFIG_DTS_NAME) $(KERNEL_VERSION)

$(DTS_DIR)/build: FORCE
	$(Q)$(call DTS_sh,$(srctree))
