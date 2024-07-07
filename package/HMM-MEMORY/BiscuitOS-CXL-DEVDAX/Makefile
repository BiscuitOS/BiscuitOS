################################################
#
# BiscuitOS-CXL-DEVDAX
#
################################################
PK_HMM_CXL_DEVDAX_NAME        := BiscuitOS-CXL-DEVDAX
PK_HMM_CXL_DEVDAX_VERSION     := $(CONFIG_PK_HMM_CXL_DEVDAX_VERSION)
PK_HMM_CXL_DEVDAX_SITE        := $(CONFIG_PK_HMM_CXL_DEVDAX_URL)
PK_HMM_CXL_DEVDAX_GITHUB      := $(CONFIG_PK_HMM_CXL_DEVDAX_GITHUB)
PK_HMM_CXL_DEVDAX_SUBNAME     :=
PK_HMM_CXL_DEVDAX_BUILDARCH   := $(CONFIG_PK_HMM_CXL_DEVDAX_BUILDARCH)
PK_HMM_CXL_DEVDAX_DIR         := $(srctree)/package/HMM-MEMORY/BiscuitOS-CXL-DEVDAX
PK_HMM_CXL_DEVDAX_PATCH       := $(PK_HMM_CXL_DEVDAX_DIR)/patch
PK_HMM_CXL_DEVDAX_BSBIT       := BiscuitOS-CXL-DEVDAX-$(PK_HMM_CXL_DEVDAX_VERSION).bsbit
PK_HMM_CXL_DEVDAX_OUT         :=
PK_HMM_CXL_DEVDAX_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_HMM_CXL_DEVDAX_TAR         := $(CONFIG_PK_HMM_CXL_DEVDAX_TAR)
PK_HMM_CXL_DEVDAX_PACKAGE     :=
PK_HMM_CXL_DEVDAX_CONFIG      := $(CONFIG_PK_HMM_CXL_DEVDAX_CONFIG)
SUB_TARGET                  += $(PK_HMM_CXL_DEVDAX_DIR)/build

PK_HMM_CXL_DEVDAX_sh = $(CONFIG_SHELL) $(PK_HMM_CXL_DEVDAX_SCRIPTS) \
                 $1X \
                 $(PK_HMM_CXL_DEVDAX_NAME)X \
                 $(PK_HMM_CXL_DEVDAX_VERSION)X \
                 $(PK_HMM_CXL_DEVDAX_SITE)X \
                 $(PK_HMM_CXL_DEVDAX_GITHUB)X \
                 $(PK_HMM_CXL_DEVDAX_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_HMM_CXL_DEVDAX_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_HMM_CXL_DEVDAX_SUBNAME)X \
                 $(CONFIG_PK_HMM_CXL_DEVDAX_CONFIG)X \
                 $(CONFIG_PK_HMM_CXL_DEVDAX_LIBPATH)X \
                 $(CONFIG_PK_HMM_CXL_DEVDAX_CPPFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_DEVDAX_DPKCONFIG)X \
                 $(CONFIG_PK_HMM_CXL_DEVDAX_CFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_DEVDAX_LDFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_DEVDAX_CXXFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_DEVDAX_ASFLAGS)X \
                 $(PK_HMM_CXL_DEVDAX_BSBIT)X \
                 $(PK_HMM_CXL_DEVDAX_BUILDARCH)X \
		 $(PK_HMM_CXL_DEVDAX_CSRCFILE)X \
                 $(CONFIG_PK_HMM_CXL_DEVDAX_SRCFILE)X \
                 $(CONFIG_PK_HMM_CXL_DEVDAX_CSRCFILE)

$(PK_HMM_CXL_DEVDAX_DIR)/build: FORCE
	$(Q)$(call PK_HMM_CXL_DEVDAX_sh,$(srctree))
