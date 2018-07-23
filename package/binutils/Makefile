################################################
#
# To build binutils
#
################################################
BASEFILE_NAME       := binutils
BASEFILE_VERSION    := 1
BASEFILE_SITE       := $(MP_DOWNLOAD)/gnu-binutils
BASEFILE_SUBNAME    := 
BASEFILE_DIR        := 
BASEFILE_OUT        := 
BASEFILE_SCRIPTS    := $(srctree)/scripts/package/binutils.sh
BASEFILE_TAR        := tar.bz2
BASEFILE_PACKAGE    := 
SUB_TARGET          += $(BASEFILE_DIR)/build

run_base_file_sh = $(CONFIG_SHELL) $(BASEFILE_SCRIPTS) \
               $1 $(BASEFILE_NAME) $(BASEFILE_VERSION) \
               $(KERNEL_VERSION) $(BASEFILE_SITE) 

$(BASEFILE_DIR)/build: FORCE
	$(Q)$(call run_base_file_sh,$(srctree))
