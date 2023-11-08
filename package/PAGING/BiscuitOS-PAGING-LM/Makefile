################################################
#
# BiscuitOS-PAGING-LM
#
################################################
PK_PAGING_LM_NAME        := BiscuitOS-PAGING-LM
PK_PAGING_LM_VERSION     := $(CONFIG_PK_PAGING_LM_VERSION)
PK_PAGING_LM_SITE        := $(CONFIG_PK_PAGING_LM_URL)
PK_PAGING_LM_GITHUB      := $(CONFIG_PK_PAGING_LM_GITHUB)
PK_PAGING_LM_SUBNAME     :=
PK_PAGING_LM_BUILDARCH   := $(CONFIG_PK_PAGING_LM_BUILDARCH)
PK_PAGING_LM_DIR         := $(srctree)/package/PAGING/BiscuitOS-PAGING-LM
PK_PAGING_LM_PATCH       := $(PK_PAGING_LM_DIR)/patch
PK_PAGING_LM_BSBIT       := BiscuitOS-PAGING-LM-$(PK_PAGING_LM_VERSION).bsbit
PK_PAGING_LM_OUT         :=
PK_PAGING_LM_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PAGING_LM_TAR         := $(CONFIG_PK_PAGING_LM_TAR)
PK_PAGING_LM_PACKAGE     :=
PK_PAGING_LM_CONFIG      := $(CONFIG_PK_PAGING_LM_CONFIG)
SUB_TARGET                  += $(PK_PAGING_LM_DIR)/build

PK_PAGING_LM_sh = $(CONFIG_SHELL) $(PK_PAGING_LM_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_LM_NAME)X \
                 $(PK_PAGING_LM_VERSION)X \
                 $(PK_PAGING_LM_SITE)X \
                 $(PK_PAGING_LM_GITHUB)X \
                 $(PK_PAGING_LM_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_LM_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_LM_SUBNAME)X \
                 $(CONFIG_PK_PAGING_LM_CONFIG)X \
                 $(CONFIG_PK_PAGING_LM_LIBPATH)X \
                 $(CONFIG_PK_PAGING_LM_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_LM_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_LM_CFLAGS)X \
                 $(CONFIG_PK_PAGING_LM_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_LM_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_LM_ASFLAGS)X \
                 $(PK_PAGING_LM_BSBIT)X \
                 $(PK_PAGING_LM_BUILDARCH)X \
		 $(PK_PAGING_LM_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_LM_SRCFILE)X \
                 $(CONFIG_PK_PAGING_LM_CSRCFILE)

$(PK_PAGING_LM_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_LM_sh,$(srctree))
