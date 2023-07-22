################################################
#
# BiscuitOS-TLB-CPUID
#
################################################
PK_TLB_CPUID_NAME        := BiscuitOS-TLB-CPUID
PK_TLB_CPUID_VERSION     := $(CONFIG_PK_TLB_CPUID_VERSION)
PK_TLB_CPUID_SITE        := $(CONFIG_PK_TLB_CPUID_URL)
PK_TLB_CPUID_GITHUB      := $(CONFIG_PK_TLB_CPUID_GITHUB)
PK_TLB_CPUID_SUBNAME     :=
PK_TLB_CPUID_BUILDARCH   := $(CONFIG_PK_TLB_CPUID_BUILDARCH)
PK_TLB_CPUID_DIR         := $(srctree)/package/TLB/BiscuitOS-TLB-CPUID
PK_TLB_CPUID_PATCH       := $(PK_TLB_CPUID_DIR)/patch
PK_TLB_CPUID_BSBIT       := BiscuitOS-TLB-CPUID-$(PK_TLB_CPUID_VERSION).bsbit
PK_TLB_CPUID_OUT         :=
PK_TLB_CPUID_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_TLB_CPUID_TAR         := $(CONFIG_PK_TLB_CPUID_TAR)
PK_TLB_CPUID_PACKAGE     :=
PK_TLB_CPUID_CONFIG      := $(CONFIG_PK_TLB_CPUID_CONFIG)
SUB_TARGET                  += $(PK_TLB_CPUID_DIR)/build

PK_TLB_CPUID_sh = $(CONFIG_SHELL) $(PK_TLB_CPUID_SCRIPTS) \
                 $1X \
                 $(PK_TLB_CPUID_NAME)X \
                 $(PK_TLB_CPUID_VERSION)X \
                 $(PK_TLB_CPUID_SITE)X \
                 $(PK_TLB_CPUID_GITHUB)X \
                 $(PK_TLB_CPUID_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_TLB_CPUID_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_TLB_CPUID_SUBNAME)X \
                 $(CONFIG_PK_TLB_CPUID_CONFIG)X \
                 $(CONFIG_PK_TLB_CPUID_LIBPATH)X \
                 $(CONFIG_PK_TLB_CPUID_CPPFLAGS)X \
                 $(CONFIG_PK_TLB_CPUID_DPKCONFIG)X \
                 $(CONFIG_PK_TLB_CPUID_CFLAGS)X \
                 $(CONFIG_PK_TLB_CPUID_LDFLAGS)X \
                 $(CONFIG_PK_TLB_CPUID_CXXFLAGS)X \
                 $(CONFIG_PK_TLB_CPUID_ASFLAGS)X \
                 $(PK_TLB_CPUID_BSBIT)X \
                 $(PK_TLB_CPUID_BUILDARCH)X \
		 $(PK_TLB_CPUID_CSRCFILE)X \
                 $(CONFIG_PK_TLB_CPUID_SRCFILE)X \
                 $(CONFIG_PK_TLB_CPUID_CSRCFILE)

$(PK_TLB_CPUID_DIR)/build: FORCE
	$(Q)$(call PK_TLB_CPUID_sh,$(srctree))
