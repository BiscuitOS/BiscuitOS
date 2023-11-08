################################################
#
# BiscuitOS-PAGING-PT-CPA
#
################################################
PK_PAGING_PT_CPA_NAME        := BiscuitOS-PAGING-PT-CPA
PK_PAGING_PT_CPA_VERSION     := $(CONFIG_PK_PAGING_PT_CPA_VERSION)
PK_PAGING_PT_CPA_SITE        := $(CONFIG_PK_PAGING_PT_CPA_URL)
PK_PAGING_PT_CPA_GITHUB      := $(CONFIG_PK_PAGING_PT_CPA_GITHUB)
PK_PAGING_PT_CPA_SUBNAME     :=
PK_PAGING_PT_CPA_BUILDARCH   := $(CONFIG_PK_PAGING_PT_CPA_BUILDARCH)
PK_PAGING_PT_CPA_DIR         := $(srctree)/package/PAGING/BiscuitOS-PAGING-PT-CPA
PK_PAGING_PT_CPA_PATCH       := $(PK_PAGING_PT_CPA_DIR)/patch
PK_PAGING_PT_CPA_BSBIT       := BiscuitOS-PAGING-PT-CPA-$(PK_PAGING_PT_CPA_VERSION).bsbit
PK_PAGING_PT_CPA_OUT         :=
PK_PAGING_PT_CPA_SCRIPTS     := $(srctree)/scripts/package/package-kernel.sh
PK_PAGING_PT_CPA_TAR         := $(CONFIG_PK_PAGING_PT_CPA_TAR)
PK_PAGING_PT_CPA_PACKAGE     :=
PK_PAGING_PT_CPA_CONFIG      := $(CONFIG_PK_PAGING_PT_CPA_CONFIG)
SUB_TARGET                  += $(PK_PAGING_PT_CPA_DIR)/build

PK_PAGING_PT_CPA_sh = $(CONFIG_SHELL) $(PK_PAGING_PT_CPA_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_PT_CPA_NAME)X \
                 $(PK_PAGING_PT_CPA_VERSION)X \
                 $(PK_PAGING_PT_CPA_SITE)X \
                 $(PK_PAGING_PT_CPA_GITHUB)X \
                 $(PK_PAGING_PT_CPA_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_PT_CPA_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_PT_CPA_SUBNAME)X \
                 $(CONFIG_PK_PAGING_PT_CPA_CONFIG)X \
                 $(CONFIG_PK_PAGING_PT_CPA_LIBPATH)X \
                 $(CONFIG_PK_PAGING_PT_CPA_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_PT_CPA_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_PT_CPA_CFLAGS)X \
                 $(CONFIG_PK_PAGING_PT_CPA_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_PT_CPA_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_PT_CPA_ASFLAGS)X \
                 $(PK_PAGING_PT_CPA_BSBIT)X \
                 $(PK_PAGING_PT_CPA_BUILDARCH)X \
		 $(PK_PAGING_PT_CPA_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_PT_CPA_SRCFILE)X \
                 $(CONFIG_PK_PAGING_PT_CPA_CSRCFILE)

$(PK_PAGING_PT_CPA_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_PT_CPA_sh,$(srctree))
