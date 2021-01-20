################################################
#
# CPUID-Tools
#
################################################
PK_CPUID_TOOLS_NAME        := CPUID-Tools
PK_CPUID_TOOLS_VERSION     := $(CONFIG_PK_CPUID_TOOLS_VERSION)
PK_CPUID_TOOLS_SITE        := $(CONFIG_PK_CPUID_TOOLS_URL)
PK_CPUID_TOOLS_GITHUB      := $(CONFIG_PK_CPUID_TOOLS_GITHUB)
PK_CPUID_TOOLS_SUBNAME     :=
PK_CPUID_TOOLS_BUILDARCH   := $(CONFIG_PK_CPUID_TOOLS_BUILDARCH)
PK_CPUID_TOOLS_DIR         := $(srctree)/package/kvm/CPUID-Tools
PK_CPUID_TOOLS_PATCH       := $(PK_CPUID_TOOLS_DIR)/patch
PK_CPUID_TOOLS_BSBIT       := CPUID-Tools-$(PK_CPUID_TOOLS_VERSION).bsbit
PK_CPUID_TOOLS_OUT         :=
PK_CPUID_TOOLS_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_CPUID_TOOLS_TAR         := $(CONFIG_PK_CPUID_TOOLS_TAR)
PK_CPUID_TOOLS_PACKAGE     :=
PK_CPUID_TOOLS_CONFIG      := $(CONFIG_PK_CPUID_TOOLS_CONFIG)
SUB_TARGET                  += $(PK_CPUID_TOOLS_DIR)/build

PK_CPUID_TOOLS_sh = $(CONFIG_SHELL) $(PK_CPUID_TOOLS_SCRIPTS) \
                 $1X \
                 $(PK_CPUID_TOOLS_NAME)X \
                 $(PK_CPUID_TOOLS_VERSION)X \
                 $(PK_CPUID_TOOLS_SITE)X \
                 $(PK_CPUID_TOOLS_GITHUB)X \
                 $(PK_CPUID_TOOLS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CPUID_TOOLS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CPUID_TOOLS_SUBNAME)X \
                 $(CONFIG_PK_CPUID_TOOLS_CONFIG)X \
                 $(CONFIG_PK_CPUID_TOOLS_LIBPATH)X \
                 $(CONFIG_PK_CPUID_TOOLS_CPPFLAGS)X \
                 $(CONFIG_PK_CPUID_TOOLS_DPKCONFIG)X \
                 $(CONFIG_PK_CPUID_TOOLS_CFLAGS)X \
                 $(CONFIG_PK_CPUID_TOOLS_LDFLAGS)X \
                 $(CONFIG_PK_CPUID_TOOLS_CXXFLAGS)X \
                 $(CONFIG_PK_CPUID_TOOLS_ASFLAGS)X \
                 $(PK_CPUID_TOOLS_BSBIT)X \
                 $(PK_CPUID_TOOLS_BUILDARCH)X \
		 $(PK_CPUID_TOOLS_CSRCFILE)X \
                 $(CONFIG_PK_CPUID_TOOLS_SRCFILE)X \
                 $(CONFIG_PK_CPUID_TOOLS_CSRCFILE)

$(PK_CPUID_TOOLS_DIR)/build: FORCE
	$(Q)$(call PK_CPUID_TOOLS_sh,$(srctree))
