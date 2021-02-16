################################################
#
# MSR-IA32_EFER
#
################################################
PK_MSR_IA32_EFER_NAME        := MSR-IA32_EFER
PK_MSR_IA32_EFER_VERSION     := $(CONFIG_PK_MSR_IA32_EFER_VERSION)
PK_MSR_IA32_EFER_SITE        := $(CONFIG_PK_MSR_IA32_EFER_URL)
PK_MSR_IA32_EFER_GITHUB      := $(CONFIG_PK_MSR_IA32_EFER_GITHUB)
PK_MSR_IA32_EFER_SUBNAME     :=
PK_MSR_IA32_EFER_BUILDARCH   := $(CONFIG_PK_MSR_IA32_EFER_BUILDARCH)
PK_MSR_IA32_EFER_DIR         := $(srctree)/package/Register/x86/MSR/MSR-IA32_EFER
PK_MSR_IA32_EFER_PATCH       := $(PK_MSR_IA32_EFER_DIR)/patch
PK_MSR_IA32_EFER_BSBIT       := MSR-IA32_EFER-$(PK_MSR_IA32_EFER_VERSION).bsbit
PK_MSR_IA32_EFER_OUT         :=
PK_MSR_IA32_EFER_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_MSR_IA32_EFER_TAR         := $(CONFIG_PK_MSR_IA32_EFER_TAR)
PK_MSR_IA32_EFER_PACKAGE     :=
PK_MSR_IA32_EFER_CONFIG      := $(CONFIG_PK_MSR_IA32_EFER_CONFIG)
SUB_TARGET                  += $(PK_MSR_IA32_EFER_DIR)/build

PK_MSR_IA32_EFER_sh = $(CONFIG_SHELL) $(PK_MSR_IA32_EFER_SCRIPTS) \
                 $1X \
                 $(PK_MSR_IA32_EFER_NAME)X \
                 $(PK_MSR_IA32_EFER_VERSION)X \
                 $(PK_MSR_IA32_EFER_SITE)X \
                 $(PK_MSR_IA32_EFER_GITHUB)X \
                 $(PK_MSR_IA32_EFER_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MSR_IA32_EFER_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MSR_IA32_EFER_SUBNAME)X \
                 $(CONFIG_PK_MSR_IA32_EFER_CONFIG)X \
                 $(CONFIG_PK_MSR_IA32_EFER_LIBPATH)X \
                 $(CONFIG_PK_MSR_IA32_EFER_CPPFLAGS)X \
                 $(CONFIG_PK_MSR_IA32_EFER_DPKCONFIG)X \
                 $(CONFIG_PK_MSR_IA32_EFER_CFLAGS)X \
                 $(CONFIG_PK_MSR_IA32_EFER_LDFLAGS)X \
                 $(CONFIG_PK_MSR_IA32_EFER_CXXFLAGS)X \
                 $(CONFIG_PK_MSR_IA32_EFER_ASFLAGS)X \
                 $(PK_MSR_IA32_EFER_BSBIT)X \
                 $(PK_MSR_IA32_EFER_BUILDARCH)X \
		 $(PK_MSR_IA32_EFER_CSRCFILE)X \
                 $(CONFIG_PK_MSR_IA32_EFER_SRCFILE)X \
                 $(CONFIG_PK_MSR_IA32_EFER_CSRCFILE)

$(PK_MSR_IA32_EFER_DIR)/build: FORCE
	$(Q)$(call PK_MSR_IA32_EFER_sh,$(srctree))
