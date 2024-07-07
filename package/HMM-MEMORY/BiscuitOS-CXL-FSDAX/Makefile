################################################
#
# BiscuitOS-CXL-FSDAX
#
################################################
PK_HMM_CXL_FSDAX_NAME        := BiscuitOS-CXL-FSDAX
PK_HMM_CXL_FSDAX_VERSION     := $(CONFIG_PK_HMM_CXL_FSDAX_VERSION)
PK_HMM_CXL_FSDAX_SITE        := $(CONFIG_PK_HMM_CXL_FSDAX_URL)
PK_HMM_CXL_FSDAX_GITHUB      := $(CONFIG_PK_HMM_CXL_FSDAX_GITHUB)
PK_HMM_CXL_FSDAX_SUBNAME     :=
PK_HMM_CXL_FSDAX_BUILDARCH   := $(CONFIG_PK_HMM_CXL_FSDAX_BUILDARCH)
PK_HMM_CXL_FSDAX_DIR         := $(srctree)/package/HMM-MEMORY/BiscuitOS-CXL-FSDAX
PK_HMM_CXL_FSDAX_PATCH       := $(PK_HMM_CXL_FSDAX_DIR)/patch
PK_HMM_CXL_FSDAX_BSBIT       := BiscuitOS-CXL-FSDAX-$(PK_HMM_CXL_FSDAX_VERSION).bsbit
PK_HMM_CXL_FSDAX_OUT         :=
PK_HMM_CXL_FSDAX_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_HMM_CXL_FSDAX_TAR         := $(CONFIG_PK_HMM_CXL_FSDAX_TAR)
PK_HMM_CXL_FSDAX_PACKAGE     :=
PK_HMM_CXL_FSDAX_CONFIG      := $(CONFIG_PK_HMM_CXL_FSDAX_CONFIG)
SUB_TARGET                  += $(PK_HMM_CXL_FSDAX_DIR)/build

PK_HMM_CXL_FSDAX_sh = $(CONFIG_SHELL) $(PK_HMM_CXL_FSDAX_SCRIPTS) \
                 $1X \
                 $(PK_HMM_CXL_FSDAX_NAME)X \
                 $(PK_HMM_CXL_FSDAX_VERSION)X \
                 $(PK_HMM_CXL_FSDAX_SITE)X \
                 $(PK_HMM_CXL_FSDAX_GITHUB)X \
                 $(PK_HMM_CXL_FSDAX_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_HMM_CXL_FSDAX_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_HMM_CXL_FSDAX_SUBNAME)X \
                 $(CONFIG_PK_HMM_CXL_FSDAX_CONFIG)X \
                 $(CONFIG_PK_HMM_CXL_FSDAX_LIBPATH)X \
                 $(CONFIG_PK_HMM_CXL_FSDAX_CPPFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_FSDAX_DPKCONFIG)X \
                 $(CONFIG_PK_HMM_CXL_FSDAX_CFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_FSDAX_LDFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_FSDAX_CXXFLAGS)X \
                 $(CONFIG_PK_HMM_CXL_FSDAX_ASFLAGS)X \
                 $(PK_HMM_CXL_FSDAX_BSBIT)X \
                 $(PK_HMM_CXL_FSDAX_BUILDARCH)X \
		 $(PK_HMM_CXL_FSDAX_CSRCFILE)X \
                 $(CONFIG_PK_HMM_CXL_FSDAX_SRCFILE)X \
                 $(CONFIG_PK_HMM_CXL_FSDAX_CSRCFILE)

$(PK_HMM_CXL_FSDAX_DIR)/build: FORCE
	$(Q)$(call PK_HMM_CXL_FSDAX_sh,$(srctree))
