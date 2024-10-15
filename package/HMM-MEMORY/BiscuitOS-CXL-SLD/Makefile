################################################
#
# BiscuitOS-CXL-SLD
#
################################################
PK_HMM_CXL_SLD_NAME        := BiscuitOS-CXL-SLD
PK_HMM_CXL_SLD_VERSION     := $(CONFIG_PK_HMM_CXL_SLD_VERSION)
PK_HMM_CXL_SLD_SITE        := $(CONFIG_PK_HMM_CXL_SLD_URL)
PK_HMM_CXL_SLD_GITHUB      := $(CONFIG_PK_HMM_CXL_SLD_GITHUB)
PK_HMM_CXL_SLD_SUBNAME     :=
PK_HMM_CXL_SLD_BUILDARCH   := $(CONFIG_PK_HMM_CXL_SLD_BUILDARCH)
PK_HMM_CXL_SLD_DIR         := $(srctree)/package/HMM-MEMORY/BiscuitOS-CXL-SLD
PK_HMM_CXL_SLD_PATCH       := $(PK_HMM_CXL_SLD_DIR)/patch
PK_HMM_CXL_SLD_BSBIT       := BiscuitOS-CXL-SLD-$(PK_HMM_CXL_SLD_VERSION).bsbit
PK_HMM_CXL_SLD_OUT         :=
PK_HMM_CXL_SLD_SCRIPTS     := $(srctree)/scripts/package/package-CXL.sh
PK_HMM_CXL_SLD_TAR         := $(CONFIG_PK_HMM_CXL_SLD_TAR)
PK_HMM_CXL_SLD_PACKAGE     :=
PK_HMM_CXL_SLD_CONFIG      := $(CONFIG_PK_HMM_CXL_SLD_CONFIG)
SUB_TARGET                  += $(PK_HMM_CXL_SLD_DIR)/build

PK_HMM_CXL_SLD_sh = $(CONFIG_SHELL) $(PK_HMM_CXL_SLD_SCRIPTS) \
                 $1X \
                 $(PK_HMM_CXL_SLD_NAME)X \
                 $(PK_HMM_CXL_SLD_VERSION)X \
                 $(PK_HMM_CXL_SLD_SITE)X \
                 $(PK_HMM_CXL_SLD_GITHUB)X \
                 $(PK_HMM_CXL_SLD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_HMM_CXL_SLD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_HMM_CXL_SLD_SUBNAME)X \
                 $(CONFIG_PK_HMM_CXL_SLD_CONFIG)X \
                 $(CONFIG_PK_HMM_CXL_SLD_LIBPATH)X \
                 $(CONFIG_PK_HMM_CXL_SLD_CPPFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_SLD_DPKCONFIG)X \
                 $(CONFIG_PK_HMM_CXL_SLD_CFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_SLD_LDFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_SLD_CXXFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_SLD_ASFLAGS)X \
                 $(PK_HMM_CXL_SLD_BSBIT)X \
                 $(PK_HMM_CXL_SLD_BUILDARCH)X \
		 $(PK_HMM_CXL_SLD_CSRCFILE)X \
                 $(CONFIG_PK_HMM_CXL_SLD_SRCFILE)X \
                 $(CONFIG_PK_HMM_CXL_SLD_CSRCFILE)

$(PK_HMM_CXL_SLD_DIR)/build: FORCE
	$(Q)$(call PK_HMM_CXL_SLD_sh,$(srctree))
