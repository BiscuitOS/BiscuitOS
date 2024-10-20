################################################
#
# BiscuitOS-CXL-GPU
#
################################################
PK_HMM_CXL_GPU_NAME        := BiscuitOS-CXL-GPU
PK_HMM_CXL_GPU_VERSION     := $(CONFIG_PK_HMM_CXL_GPU_VERSION)
PK_HMM_CXL_GPU_SITE        := $(CONFIG_PK_HMM_CXL_GPU_URL)
PK_HMM_CXL_GPU_GITHUB      := $(CONFIG_PK_HMM_CXL_GPU_GITHUB)
PK_HMM_CXL_GPU_SUBNAME     :=
PK_HMM_CXL_GPU_BUILDARCH   := $(CONFIG_PK_HMM_CXL_GPU_BUILDARCH)
PK_HMM_CXL_GPU_DIR         := $(srctree)/package/HMM-MEMORY/BiscuitOS-CXL-GPU
PK_HMM_CXL_GPU_PATCH       := $(PK_HMM_CXL_GPU_DIR)/patch
PK_HMM_CXL_GPU_BSBIT       := BiscuitOS-CXL-GPU-$(PK_HMM_CXL_GPU_VERSION).bsbit
PK_HMM_CXL_GPU_OUT         :=
PK_HMM_CXL_GPU_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_HMM_CXL_GPU_TAR         := $(CONFIG_PK_HMM_CXL_GPU_TAR)
PK_HMM_CXL_GPU_PACKAGE     :=
PK_HMM_CXL_GPU_CONFIG      := $(CONFIG_PK_HMM_CXL_GPU_CONFIG)
SUB_TARGET                  += $(PK_HMM_CXL_GPU_DIR)/build

PK_HMM_CXL_GPU_sh = $(CONFIG_SHELL) $(PK_HMM_CXL_GPU_SCRIPTS) \
                 $1X \
                 $(PK_HMM_CXL_GPU_NAME)X \
                 $(PK_HMM_CXL_GPU_VERSION)X \
                 $(PK_HMM_CXL_GPU_SITE)X \
                 $(PK_HMM_CXL_GPU_GITHUB)X \
                 $(PK_HMM_CXL_GPU_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_HMM_CXL_GPU_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_HMM_CXL_GPU_SUBNAME)X \
                 $(CONFIG_PK_HMM_CXL_GPU_CONFIG)X \
                 $(CONFIG_PK_HMM_CXL_GPU_LIBPATH)X \
                 $(CONFIG_PK_HMM_CXL_GPU_CPPFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_GPU_DPKCONFIG)X \
                 $(CONFIG_PK_HMM_CXL_GPU_CFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_GPU_LDFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_GPU_CXXFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_GPU_ASFLAGS)X \
                 $(PK_HMM_CXL_GPU_BSBIT)X \
                 $(PK_HMM_CXL_GPU_BUILDARCH)X \
		 $(PK_HMM_CXL_GPU_CSRCFILE)X \
                 $(CONFIG_PK_HMM_CXL_GPU_SRCFILE)X \
                 $(CONFIG_PK_HMM_CXL_GPU_CSRCFILE)

$(PK_HMM_CXL_GPU_DIR)/build: FORCE
	$(Q)$(call PK_HMM_CXL_GPU_sh,$(srctree))
