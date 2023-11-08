################################################
#
# BiscuitOS-PAGING-LM-TEMP
#
################################################
PK_PAGING_LM_TEMP_NAME        := BiscuitOS-PAGING-LM-TEMP
PK_PAGING_LM_TEMP_VERSION     := $(CONFIG_PK_PAGING_LM_TEMP_VERSION)
PK_PAGING_LM_TEMP_SITE        := $(CONFIG_PK_PAGING_LM_TEMP_URL)
PK_PAGING_LM_TEMP_GITHUB      := $(CONFIG_PK_PAGING_LM_TEMP_GITHUB)
PK_PAGING_LM_TEMP_SUBNAME     :=
PK_PAGING_LM_TEMP_BUILDARCH   := $(CONFIG_PK_PAGING_LM_TEMP_BUILDARCH)
PK_PAGING_LM_TEMP_DIR         := $(srctree)/package/PAGING/BiscuitOS-PAGING-LM-TEMP
PK_PAGING_LM_TEMP_PATCH       := $(PK_PAGING_LM_TEMP_DIR)/patch
PK_PAGING_LM_TEMP_BSBIT       := BiscuitOS-PAGING-LM-TEMP-$(PK_PAGING_LM_TEMP_VERSION).bsbit
PK_PAGING_LM_TEMP_OUT         :=
PK_PAGING_LM_TEMP_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PAGING_LM_TEMP_TAR         := $(CONFIG_PK_PAGING_LM_TEMP_TAR)
PK_PAGING_LM_TEMP_PACKAGE     :=
PK_PAGING_LM_TEMP_CONFIG      := $(CONFIG_PK_PAGING_LM_TEMP_CONFIG)
SUB_TARGET                  += $(PK_PAGING_LM_TEMP_DIR)/build

PK_PAGING_LM_TEMP_sh = $(CONFIG_SHELL) $(PK_PAGING_LM_TEMP_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_LM_TEMP_NAME)X \
                 $(PK_PAGING_LM_TEMP_VERSION)X \
                 $(PK_PAGING_LM_TEMP_SITE)X \
                 $(PK_PAGING_LM_TEMP_GITHUB)X \
                 $(PK_PAGING_LM_TEMP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_LM_TEMP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_LM_TEMP_SUBNAME)X \
                 $(CONFIG_PK_PAGING_LM_TEMP_CONFIG)X \
                 $(CONFIG_PK_PAGING_LM_TEMP_LIBPATH)X \
                 $(CONFIG_PK_PAGING_LM_TEMP_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_LM_TEMP_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_LM_TEMP_CFLAGS)X \
                 $(CONFIG_PK_PAGING_LM_TEMP_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_LM_TEMP_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_LM_TEMP_ASFLAGS)X \
                 $(PK_PAGING_LM_TEMP_BSBIT)X \
                 $(PK_PAGING_LM_TEMP_BUILDARCH)X \
		 $(PK_PAGING_LM_TEMP_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_LM_TEMP_SRCFILE)X \
                 $(CONFIG_PK_PAGING_LM_TEMP_CSRCFILE)

$(PK_PAGING_LM_TEMP_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_LM_TEMP_sh,$(srctree))
