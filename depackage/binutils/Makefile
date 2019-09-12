################################################
#
# To build binutils
#
################################################
BASEFILE_NAME       := binutils
BASEFILE_VERSION    := 1
BASEFILE_SITE       := https://raw.githubusercontent.com/BiscuitOS/PackageManage/master/gnu-binutils
BASEFILE_SUBNAME    := 
BASEFILE_DIR        := $(srctree)/package/binutils
BASEFILE_OUT        := 
BASEFILE_SCRIPTS    := $(srctree)/scripts/package/binutils.sh
BASEFILE_TAR        := tar.bz2
BASEFILE_PACKAGE    := 
SUB_TARGET          += $(BASEFILE_DIR)/build

run_base_file_sh = $(CONFIG_SHELL) $(BASEFILE_SCRIPTS) \
               $1X $(BASEFILE_NAME)X $(BASEFILE_VERSION)X \
               $(CONFIG_LINUX_KERNEL_VERSION)X $(BASEFILE_SITE)X \
               $(CONFIG_MAIN_PROJ_NAME)X 

$(BASEFILE_DIR)/build: FORCE
	$(Q)$(call run_base_file_sh,$(srctree))
