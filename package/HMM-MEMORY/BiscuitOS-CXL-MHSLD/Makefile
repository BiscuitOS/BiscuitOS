################################################
#
# BiscuitOS-CXL-MHSLD
#
################################################
PK_HMM_CXL_MHSLD_NAME        := BiscuitOS-CXL-MHSLD
PK_HMM_CXL_MHSLD_VERSION     := $(CONFIG_PK_HMM_CXL_MHSLD_VERSION)
PK_HMM_CXL_MHSLD_SITE        := $(CONFIG_PK_HMM_CXL_MHSLD_URL)
PK_HMM_CXL_MHSLD_GITHUB      := $(CONFIG_PK_HMM_CXL_MHSLD_GITHUB)
PK_HMM_CXL_MHSLD_SUBNAME     :=
PK_HMM_CXL_MHSLD_BUILDARCH   := $(CONFIG_PK_HMM_CXL_MHSLD_BUILDARCH)
PK_HMM_CXL_MHSLD_DIR         := $(srctree)/package/HMM-MEMORY/BiscuitOS-CXL-MHSLD
PK_HMM_CXL_MHSLD_PATCH       := $(PK_HMM_CXL_MHSLD_DIR)/patch
PK_HMM_CXL_MHSLD_BSBIT       := BiscuitOS-CXL-MHSLD-$(PK_HMM_CXL_MHSLD_VERSION).bsbit
PK_HMM_CXL_MHSLD_OUT         :=
PK_HMM_CXL_MHSLD_SCRIPTS     := $(srctree)/scripts/package/package-CXL.sh
PK_HMM_CXL_MHSLD_TAR         := $(CONFIG_PK_HMM_CXL_MHSLD_TAR)
PK_HMM_CXL_MHSLD_PACKAGE     :=
PK_HMM_CXL_MHSLD_CONFIG      := $(CONFIG_PK_HMM_CXL_MHSLD_CONFIG)
SUB_TARGET                  += $(PK_HMM_CXL_MHSLD_DIR)/build

PK_HMM_CXL_MHSLD_sh = $(CONFIG_SHELL) $(PK_HMM_CXL_MHSLD_SCRIPTS) \
                 $1X \
                 $(PK_HMM_CXL_MHSLD_NAME)X \
                 $(PK_HMM_CXL_MHSLD_VERSION)X \
                 $(PK_HMM_CXL_MHSLD_SITE)X \
                 $(PK_HMM_CXL_MHSLD_GITHUB)X \
                 $(PK_HMM_CXL_MHSLD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_HMM_CXL_MHSLD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_HMM_CXL_MHSLD_SUBNAME)X \
                 $(CONFIG_PK_HMM_CXL_MHSLD_CONFIG)X \
                 $(CONFIG_PK_HMM_CXL_MHSLD_LIBPATH)X \
                 $(CONFIG_PK_HMM_CXL_MHSLD_CPPFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_MHSLD_DPKCONFIG)X \
                 $(CONFIG_PK_HMM_CXL_MHSLD_CFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_MHSLD_LDFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_MHSLD_CXXFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_MHSLD_ASFLAGS)X \
                 $(PK_HMM_CXL_MHSLD_BSBIT)X \
                 $(PK_HMM_CXL_MHSLD_BUILDARCH)X \
		 $(PK_HMM_CXL_MHSLD_CSRCFILE)X \
                 $(CONFIG_PK_HMM_CXL_MHSLD_SRCFILE)X \
                 $(CONFIG_PK_HMM_CXL_MHSLD_CSRCFILE)

$(PK_HMM_CXL_MHSLD_DIR)/build: FORCE
	$(Q)$(call PK_HMM_CXL_MHSLD_sh,$(srctree))
