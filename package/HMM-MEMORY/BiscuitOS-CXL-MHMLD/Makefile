################################################
#
# BiscuitOS-CXL-MHMLD
#
################################################
PK_HMM_CXL_MHMLD_NAME        := BiscuitOS-CXL-MHMLD
PK_HMM_CXL_MHMLD_VERSION     := $(CONFIG_PK_HMM_CXL_MHMLD_VERSION)
PK_HMM_CXL_MHMLD_SITE        := $(CONFIG_PK_HMM_CXL_MHMLD_URL)
PK_HMM_CXL_MHMLD_GITHUB      := $(CONFIG_PK_HMM_CXL_MHMLD_GITHUB)
PK_HMM_CXL_MHMLD_SUBNAME     :=
PK_HMM_CXL_MHMLD_BUILDARCH   := $(CONFIG_PK_HMM_CXL_MHMLD_BUILDARCH)
PK_HMM_CXL_MHMLD_DIR         := $(srctree)/package/HMM-MEMORY/BiscuitOS-CXL-MHMLD
PK_HMM_CXL_MHMLD_PATCH       := $(PK_HMM_CXL_MHMLD_DIR)/patch
PK_HMM_CXL_MHMLD_BSBIT       := BiscuitOS-CXL-MHMLD-$(PK_HMM_CXL_MHMLD_VERSION).bsbit
PK_HMM_CXL_MHMLD_OUT         :=
PK_HMM_CXL_MHMLD_SCRIPTS     := $(srctree)/scripts/package/package-CXL.sh
PK_HMM_CXL_MHMLD_TAR         := $(CONFIG_PK_HMM_CXL_MHMLD_TAR)
PK_HMM_CXL_MHMLD_PACKAGE     :=
PK_HMM_CXL_MHMLD_CONFIG      := $(CONFIG_PK_HMM_CXL_MHMLD_CONFIG)
SUB_TARGET                  += $(PK_HMM_CXL_MHMLD_DIR)/build

PK_HMM_CXL_MHMLD_sh = $(CONFIG_SHELL) $(PK_HMM_CXL_MHMLD_SCRIPTS) \
                 $1X \
                 $(PK_HMM_CXL_MHMLD_NAME)X \
                 $(PK_HMM_CXL_MHMLD_VERSION)X \
                 $(PK_HMM_CXL_MHMLD_SITE)X \
                 $(PK_HMM_CXL_MHMLD_GITHUB)X \
                 $(PK_HMM_CXL_MHMLD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_HMM_CXL_MHMLD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_HMM_CXL_MHMLD_SUBNAME)X \
                 $(CONFIG_PK_HMM_CXL_MHMLD_CONFIG)X \
                 $(CONFIG_PK_HMM_CXL_MHMLD_LIBPATH)X \
                 $(CONFIG_PK_HMM_CXL_MHMLD_CPPFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_MHMLD_DPKCONFIG)X \
                 $(CONFIG_PK_HMM_CXL_MHMLD_CFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_MHMLD_LDFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_MHMLD_CXXFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_MHMLD_ASFLAGS)X \
                 $(PK_HMM_CXL_MHMLD_BSBIT)X \
                 $(PK_HMM_CXL_MHMLD_BUILDARCH)X \
		 $(PK_HMM_CXL_MHMLD_CSRCFILE)X \
                 $(CONFIG_PK_HMM_CXL_MHMLD_SRCFILE)X \
                 $(CONFIG_PK_HMM_CXL_MHMLD_CSRCFILE)

$(PK_HMM_CXL_MHMLD_DIR)/build: FORCE
	$(Q)$(call PK_HMM_CXL_MHMLD_sh,$(srctree))
