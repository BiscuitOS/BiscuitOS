################################################
#
# rdtsc
#
################################################
PK_X86_ASM_RDTSC_NAME        := rdtsc-x86
PK_X86_ASM_RDTSC_VERSION     := $(CONFIG_PK_X86_ASM_RDTSC_VERSION)
PK_X86_ASM_RDTSC_SITE        := $(CONFIG_PK_X86_ASM_RDTSC_URL)
PK_X86_ASM_RDTSC_GITHUB      := $(CONFIG_PK_X86_ASM_RDTSC_GITHUB)
PK_X86_ASM_RDTSC_SUBNAME     :=
PK_X86_ASM_RDTSC_BUILDARCH   := $(CONFIG_PK_X86_ASM_RDTSC_BUILDARCH)
PK_X86_ASM_RDTSC_DIR         := $(srctree)/package/assembly/x86/rdtsc
PK_X86_ASM_RDTSC_PATCH       := $(PK_X86_ASM_RDTSC_DIR)/patch
PK_X86_ASM_RDTSC_BSBIT       := rdtsc-$(PK_X86_ASM_RDTSC_VERSION).bsbit
PK_X86_ASM_RDTSC_OUT         :=
PK_X86_ASM_RDTSC_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_X86_ASM_RDTSC_TAR         := $(CONFIG_PK_X86_ASM_RDTSC_TAR)
PK_X86_ASM_RDTSC_PACKAGE     :=
PK_X86_ASM_RDTSC_CONFIG      := $(CONFIG_PK_X86_ASM_RDTSC_CONFIG)
SUB_TARGET                  += $(PK_X86_ASM_RDTSC_DIR)/build

PK_X86_ASM_RDTSC_sh = $(CONFIG_SHELL) $(PK_X86_ASM_RDTSC_SCRIPTS) \
                 $1X \
                 $(PK_X86_ASM_RDTSC_NAME)X \
                 $(PK_X86_ASM_RDTSC_VERSION)X \
                 $(PK_X86_ASM_RDTSC_SITE)X \
                 $(PK_X86_ASM_RDTSC_GITHUB)X \
                 $(PK_X86_ASM_RDTSC_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_X86_ASM_RDTSC_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_X86_ASM_RDTSC_SUBNAME)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_CONFIG)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_LIBPATH)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_CPPFLAGS)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_DPKCONFIG)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_CFLAGS)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_LDFLAGS)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_CXXFLAGS)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_ASFLAGS)X \
                 $(PK_X86_ASM_RDTSC_BSBIT)X \
                 $(PK_X86_ASM_RDTSC_BUILDARCH)X \
		 $(PK_X86_ASM_RDTSC_CSRCFILE)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_SRCFILE)X \
                 $(CONFIG_PK_X86_ASM_RDTSC_CSRCFILE)

$(PK_X86_ASM_RDTSC_DIR)/build: FORCE
	$(Q)$(call PK_X86_ASM_RDTSC_sh,$(srctree))
