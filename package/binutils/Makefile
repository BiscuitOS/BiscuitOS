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
ifdef CONFIG_ARM64
BASEFILE_SCRIPTS    := $(srctree)/scripts/package/binutils_arm64.sh
else
BASEFILE_SCRIPTS    := $(srctree)/scripts/package/binutils.sh
endif
BASEFILE_TAR        := tar.bz2
BASEFILE_PACKAGE    := 
SUB_TARGET          += $(BASEFILE_DIR)/build

run_base_file_sh = $(CONFIG_SHELL) $(BASEFILE_SCRIPTS) \
               $1 $(BASEFILE_NAME) $(BASEFILE_VERSION) \
               $(KERNEL_VERSION) $(BASEFILE_SITE) \
               $(KERNEL_MAGIC) 

$(BASEFILE_DIR)/build: FORCE
	$(Q)$(call run_base_file_sh,$(srctree))
