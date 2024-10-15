################################################
#
# BiscuitOS-CXL-MLD
#
################################################
PK_HMM_CXL_MLD_NAME        := BiscuitOS-CXL-MLD
PK_HMM_CXL_MLD_VERSION     := $(CONFIG_PK_HMM_CXL_MLD_VERSION)
PK_HMM_CXL_MLD_SITE        := $(CONFIG_PK_HMM_CXL_MLD_URL)
PK_HMM_CXL_MLD_GITHUB      := $(CONFIG_PK_HMM_CXL_MLD_GITHUB)
PK_HMM_CXL_MLD_SUBNAME     :=
PK_HMM_CXL_MLD_BUILDARCH   := $(CONFIG_PK_HMM_CXL_MLD_BUILDARCH)
PK_HMM_CXL_MLD_DIR         := $(srctree)/package/HMM-MEMORY/BiscuitOS-CXL-MLD
PK_HMM_CXL_MLD_PATCH       := $(PK_HMM_CXL_MLD_DIR)/patch
PK_HMM_CXL_MLD_BSBIT       := BiscuitOS-CXL-MLD-$(PK_HMM_CXL_MLD_VERSION).bsbit
PK_HMM_CXL_MLD_OUT         :=
PK_HMM_CXL_MLD_SCRIPTS     := $(srctree)/scripts/package/package-CXL.sh
PK_HMM_CXL_MLD_TAR         := $(CONFIG_PK_HMM_CXL_MLD_TAR)
PK_HMM_CXL_MLD_PACKAGE     :=
PK_HMM_CXL_MLD_CONFIG      := $(CONFIG_PK_HMM_CXL_MLD_CONFIG)
SUB_TARGET                  += $(PK_HMM_CXL_MLD_DIR)/build

PK_HMM_CXL_MLD_sh = $(CONFIG_SHELL) $(PK_HMM_CXL_MLD_SCRIPTS) \
                 $1X \
                 $(PK_HMM_CXL_MLD_NAME)X \
                 $(PK_HMM_CXL_MLD_VERSION)X \
                 $(PK_HMM_CXL_MLD_SITE)X \
                 $(PK_HMM_CXL_MLD_GITHUB)X \
                 $(PK_HMM_CXL_MLD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_HMM_CXL_MLD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_HMM_CXL_MLD_SUBNAME)X \
                 $(CONFIG_PK_HMM_CXL_MLD_CONFIG)X \
                 $(CONFIG_PK_HMM_CXL_MLD_LIBPATH)X \
                 $(CONFIG_PK_HMM_CXL_MLD_CPPFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_MLD_DPKCONFIG)X \
                 $(CONFIG_PK_HMM_CXL_MLD_CFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_MLD_LDFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_MLD_CXXFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_MLD_ASFLAGS)X \
                 $(PK_HMM_CXL_MLD_BSBIT)X \
                 $(PK_HMM_CXL_MLD_BUILDARCH)X \
		 $(PK_HMM_CXL_MLD_CSRCFILE)X \
                 $(CONFIG_PK_HMM_CXL_MLD_SRCFILE)X \
                 $(CONFIG_PK_HMM_CXL_MLD_CSRCFILE)

$(PK_HMM_CXL_MLD_DIR)/build: FORCE
	$(Q)$(call PK_HMM_CXL_MLD_sh,$(srctree))
