################################################
#
# rdmsr
#
################################################
PK_X86_ASM_RDMSR_NAME        := rdmsr-x86
PK_X86_ASM_RDMSR_VERSION     := $(CONFIG_PK_X86_ASM_RDMSR_VERSION)
PK_X86_ASM_RDMSR_SITE        := $(CONFIG_PK_X86_ASM_RDMSR_URL)
PK_X86_ASM_RDMSR_GITHUB      := $(CONFIG_PK_X86_ASM_RDMSR_GITHUB)
PK_X86_ASM_RDMSR_SUBNAME     :=
PK_X86_ASM_RDMSR_BUILDARCH   := $(CONFIG_PK_X86_ASM_RDMSR_BUILDARCH)
PK_X86_ASM_RDMSR_DIR         := $(srctree)/package/assembly/x86/rdmsr
PK_X86_ASM_RDMSR_PATCH       := $(PK_X86_ASM_RDMSR_DIR)/patch
PK_X86_ASM_RDMSR_BSBIT       := rdmsr-$(PK_X86_ASM_RDMSR_VERSION).bsbit
PK_X86_ASM_RDMSR_OUT         :=
PK_X86_ASM_RDMSR_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_X86_ASM_RDMSR_TAR         := $(CONFIG_PK_X86_ASM_RDMSR_TAR)
PK_X86_ASM_RDMSR_PACKAGE     :=
PK_X86_ASM_RDMSR_CONFIG      := $(CONFIG_PK_X86_ASM_RDMSR_CONFIG)
SUB_TARGET                  += $(PK_X86_ASM_RDMSR_DIR)/build

PK_X86_ASM_RDMSR_sh = $(CONFIG_SHELL) $(PK_X86_ASM_RDMSR_SCRIPTS) \
                 $1X \
                 $(PK_X86_ASM_RDMSR_NAME)X \
                 $(PK_X86_ASM_RDMSR_VERSION)X \
                 $(PK_X86_ASM_RDMSR_SITE)X \
                 $(PK_X86_ASM_RDMSR_GITHUB)X \
                 $(PK_X86_ASM_RDMSR_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_X86_ASM_RDMSR_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_X86_ASM_RDMSR_SUBNAME)X \
                 $(CONFIG_PK_X86_ASM_RDMSR_CONFIG)X \
                 $(CONFIG_PK_X86_ASM_RDMSR_LIBPATH)X \
                 $(CONFIG_PK_X86_ASM_RDMSR_CPPFLAGS)X \
                 $(CONFIG_PK_X86_ASM_RDMSR_DPKCONFIG)X \
                 $(CONFIG_PK_X86_ASM_RDMSR_CFLAGS)X \
                 $(CONFIG_PK_X86_ASM_RDMSR_LDFLAGS)X \
                 $(CONFIG_PK_X86_ASM_RDMSR_CXXFLAGS)X \
                 $(CONFIG_PK_X86_ASM_RDMSR_ASFLAGS)X \
                 $(PK_X86_ASM_RDMSR_BSBIT)X \
                 $(PK_X86_ASM_RDMSR_BUILDARCH)X \
		 $(PK_X86_ASM_RDMSR_CSRCFILE)X \
                 $(CONFIG_PK_X86_ASM_RDMSR_SRCFILE)X \
                 $(CONFIG_PK_X86_ASM_RDMSR_CSRCFILE)

$(PK_X86_ASM_RDMSR_DIR)/build: FORCE
	$(Q)$(call PK_X86_ASM_RDMSR_sh,$(srctree))
