################################################
#
# rdtsc-app
#
################################################
PK_X86_ASM_RDTSC_APP_NAME        := rdtsc-app-x86
PK_X86_ASM_RDTSC_APP_VERSION     := $(CONFIG_PK_X86_ASM_RDTSC_APP_VERSION)
PK_X86_ASM_RDTSC_APP_SITE        := $(CONFIG_PK_X86_ASM_RDTSC_APP_URL)
PK_X86_ASM_RDTSC_APP_GITHUB      := $(CONFIG_PK_X86_ASM_RDTSC_APP_GITHUB)
PK_X86_ASM_RDTSC_APP_SUBNAME     :=
PK_X86_ASM_RDTSC_APP_BUILDARCH   := $(CONFIG_PK_X86_ASM_RDTSC_APP_BUILDARCH)
PK_X86_ASM_RDTSC_APP_DIR         := $(srctree)/package/assembly/x86/rdtsc-app
PK_X86_ASM_RDTSC_APP_PATCH       := $(PK_X86_ASM_RDTSC_APP_DIR)/patch
PK_X86_ASM_RDTSC_APP_BSBIT       := rdtsc-app-$(PK_X86_ASM_RDTSC_APP_VERSION).bsbit
PK_X86_ASM_RDTSC_APP_OUT         :=
PK_X86_ASM_RDTSC_APP_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_X86_ASM_RDTSC_APP_TAR         := $(CONFIG_PK_X86_ASM_RDTSC_APP_TAR)
PK_X86_ASM_RDTSC_APP_PACKAGE     :=
PK_X86_ASM_RDTSC_APP_CONFIG      := $(CONFIG_PK_X86_ASM_RDTSC_APP_CONFIG)
SUB_TARGET                  += $(PK_X86_ASM_RDTSC_APP_DIR)/build

PK_X86_ASM_RDTSC_APP_sh = $(CONFIG_SHELL) $(PK_X86_ASM_RDTSC_APP_SCRIPTS) \
                 $1X \
                 $(PK_X86_ASM_RDTSC_APP_NAME)X \
                 $(PK_X86_ASM_RDTSC_APP_VERSION)X \
                 $(PK_X86_ASM_RDTSC_APP_SITE)X \
                 $(PK_X86_ASM_RDTSC_APP_GITHUB)X \
                 $(PK_X86_ASM_RDTSC_APP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_X86_ASM_RDTSC_APP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_X86_ASM_RDTSC_APP_SUBNAME)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_APP_CONFIG)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_APP_LIBPATH)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_APP_CPPFLAGS)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_APP_DPKCONFIG)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_APP_CFLAGS)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_APP_LDFLAGS)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_APP_CXXFLAGS)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_APP_ASFLAGS)X \
                 $(PK_X86_ASM_RDTSC_APP_BSBIT)X \
                 $(PK_X86_ASM_RDTSC_APP_BUILDARCH)X \
		 $(PK_X86_ASM_RDTSC_APP_CSRCFILE)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_APP_SRCFILE)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_APP_CSRCFILE)

$(PK_X86_ASM_RDTSC_APP_DIR)/build: FORCE
	$(Q)$(call PK_X86_ASM_RDTSC_APP_sh,$(srctree))
