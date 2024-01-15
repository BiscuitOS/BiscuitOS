################################################
#
# BiscuitOS-PAGING-EA-MM
#
################################################
PK_PAGING_EA_MM_NAME        := BiscuitOS-PAGING-EA-MM
PK_PAGING_EA_MM_VERSION     := $(CONFIG_PK_PAGING_EA_MM_VERSION)
PK_PAGING_EA_MM_SITE        := $(CONFIG_PK_PAGING_EA_MM_URL)
PK_PAGING_EA_MM_GITHUB      := $(CONFIG_PK_PAGING_EA_MM_GITHUB)
PK_PAGING_EA_MM_SUBNAME     :=
PK_PAGING_EA_MM_BUILDARCH   := $(CONFIG_PK_PAGING_EA_MM_BUILDARCH)
PK_PAGING_EA_MM_DIR         := $(srctree)/package/PAGING/BiscuitOS-PAGING-EA-MM
PK_PAGING_EA_MM_PATCH       := $(PK_PAGING_EA_MM_DIR)/patch
PK_PAGING_EA_MM_BSBIT       := BiscuitOS-PAGING-EA-MM-$(PK_PAGING_EA_MM_VERSION).bsbit
PK_PAGING_EA_MM_OUT         :=
PK_PAGING_EA_MM_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PAGING_EA_MM_TAR         := $(CONFIG_PK_PAGING_EA_MM_TAR)
PK_PAGING_EA_MM_PACKAGE     :=
PK_PAGING_EA_MM_CONFIG      := $(CONFIG_PK_PAGING_EA_MM_CONFIG)
SUB_TARGET                  += $(PK_PAGING_EA_MM_DIR)/build

PK_PAGING_EA_MM_sh = $(CONFIG_SHELL) $(PK_PAGING_EA_MM_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_EA_MM_NAME)X \
                 $(PK_PAGING_EA_MM_VERSION)X \
                 $(PK_PAGING_EA_MM_SITE)X \
                 $(PK_PAGING_EA_MM_GITHUB)X \
                 $(PK_PAGING_EA_MM_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_EA_MM_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_EA_MM_SUBNAME)X \
                 $(CONFIG_PK_PAGING_EA_MM_CONFIG)X \
                 $(CONFIG_PK_PAGING_EA_MM_LIBPATH)X \
                 $(CONFIG_PK_PAGING_EA_MM_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_EA_MM_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_EA_MM_CFLAGS)X \
                 $(CONFIG_PK_PAGING_EA_MM_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_EA_MM_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_EA_MM_ASFLAGS)X \
                 $(PK_PAGING_EA_MM_BSBIT)X \
                 $(PK_PAGING_EA_MM_BUILDARCH)X \
		 $(PK_PAGING_EA_MM_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_EA_MM_SRCFILE)X \
                 $(CONFIG_PK_PAGING_EA_MM_CSRCFILE)

$(PK_PAGING_EA_MM_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_EA_MM_sh,$(srctree))
