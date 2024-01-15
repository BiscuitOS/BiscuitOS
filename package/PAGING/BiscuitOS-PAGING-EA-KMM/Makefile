################################################
#
# BiscuitOS-PAGING-EA-KMM
#
################################################
PK_PAGING_EA_KMM_NAME        := BiscuitOS-PAGING-EA-KMM
PK_PAGING_EA_KMM_VERSION     := $(CONFIG_PK_PAGING_EA_KMM_VERSION)
PK_PAGING_EA_KMM_SITE        := $(CONFIG_PK_PAGING_EA_KMM_URL)
PK_PAGING_EA_KMM_GITHUB      := $(CONFIG_PK_PAGING_EA_KMM_GITHUB)
PK_PAGING_EA_KMM_SUBNAME     :=
PK_PAGING_EA_KMM_BUILDARCH   := $(CONFIG_PK_PAGING_EA_KMM_BUILDARCH)
PK_PAGING_EA_KMM_DIR         := $(srctree)/package/PAGING/BiscuitOS-PAGING-EA-KMM
PK_PAGING_EA_KMM_PATCH       := $(PK_PAGING_EA_KMM_DIR)/patch
PK_PAGING_EA_KMM_BSBIT       := BiscuitOS-PAGING-EA-KMM-$(PK_PAGING_EA_KMM_VERSION).bsbit
PK_PAGING_EA_KMM_OUT         :=
PK_PAGING_EA_KMM_SCRIPTS     := $(srctree)/scripts/package/package-kernel.sh
PK_PAGING_EA_KMM_TAR         := $(CONFIG_PK_PAGING_EA_KMM_TAR)
PK_PAGING_EA_KMM_PACKAGE     :=
PK_PAGING_EA_KMM_CONFIG      := $(CONFIG_PK_PAGING_EA_KMM_CONFIG)
SUB_TARGET                  += $(PK_PAGING_EA_KMM_DIR)/build

PK_PAGING_EA_KMM_sh = $(CONFIG_SHELL) $(PK_PAGING_EA_KMM_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_EA_KMM_NAME)X \
                 $(PK_PAGING_EA_KMM_VERSION)X \
                 $(PK_PAGING_EA_KMM_SITE)X \
                 $(PK_PAGING_EA_KMM_GITHUB)X \
                 $(PK_PAGING_EA_KMM_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_EA_KMM_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_EA_KMM_SUBNAME)X \
                 $(CONFIG_PK_PAGING_EA_KMM_CONFIG)X \
                 $(CONFIG_PK_PAGING_EA_KMM_LIBPATH)X \
                 $(CONFIG_PK_PAGING_EA_KMM_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_EA_KMM_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_EA_KMM_CFLAGS)X \
                 $(CONFIG_PK_PAGING_EA_KMM_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_EA_KMM_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_EA_KMM_ASFLAGS)X \
                 $(PK_PAGING_EA_KMM_BSBIT)X \
                 $(PK_PAGING_EA_KMM_BUILDARCH)X \
		 $(PK_PAGING_EA_KMM_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_EA_KMM_SRCFILE)X \
                 $(CONFIG_PK_PAGING_EA_KMM_CSRCFILE)

$(PK_PAGING_EA_KMM_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_EA_KMM_sh,$(srctree))
