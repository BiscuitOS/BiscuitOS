################################################
#
# wrmsr
#
################################################
PK_X86_ASM_WRMSR_NAME        := wrmsr-x86
PK_X86_ASM_WRMSR_VERSION     := $(CONFIG_PK_X86_ASM_WRMSR_VERSION)
PK_X86_ASM_WRMSR_SITE        := $(CONFIG_PK_X86_ASM_WRMSR_URL)
PK_X86_ASM_WRMSR_GITHUB      := $(CONFIG_PK_X86_ASM_WRMSR_GITHUB)
PK_X86_ASM_WRMSR_SUBNAME     :=
PK_X86_ASM_WRMSR_BUILDARCH   := $(CONFIG_PK_X86_ASM_WRMSR_BUILDARCH)
PK_X86_ASM_WRMSR_DIR         := $(srctree)/package/assembly/x86/wrmsr
PK_X86_ASM_WRMSR_PATCH       := $(PK_X86_ASM_WRMSR_DIR)/patch
PK_X86_ASM_WRMSR_BSBIT       := wrmsr-$(PK_X86_ASM_WRMSR_VERSION).bsbit
PK_X86_ASM_WRMSR_OUT         :=
PK_X86_ASM_WRMSR_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_X86_ASM_WRMSR_TAR         := $(CONFIG_PK_X86_ASM_WRMSR_TAR)
PK_X86_ASM_WRMSR_PACKAGE     :=
PK_X86_ASM_WRMSR_CONFIG      := $(CONFIG_PK_X86_ASM_WRMSR_CONFIG)
SUB_TARGET                  += $(PK_X86_ASM_WRMSR_DIR)/build

PK_X86_ASM_WRMSR_sh = $(CONFIG_SHELL) $(PK_X86_ASM_WRMSR_SCRIPTS) \
                 $1X \
                 $(PK_X86_ASM_WRMSR_NAME)X \
                 $(PK_X86_ASM_WRMSR_VERSION)X \
                 $(PK_X86_ASM_WRMSR_SITE)X \
                 $(PK_X86_ASM_WRMSR_GITHUB)X \
                 $(PK_X86_ASM_WRMSR_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_X86_ASM_WRMSR_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_X86_ASM_WRMSR_SUBNAME)X \
                 $(CONFIG_PK_X86_ASM_WRMSR_CONFIG)X \
                 $(CONFIG_PK_X86_ASM_WRMSR_LIBPATH)X \
                 $(CONFIG_PK_X86_ASM_WRMSR_CPPFLAGS)X \
                 $(CONFIG_PK_X86_ASM_WRMSR_DPKCONFIG)X \
                 $(CONFIG_PK_X86_ASM_WRMSR_CFLAGS)X \
                 $(CONFIG_PK_X86_ASM_WRMSR_LDFLAGS)X \
                 $(CONFIG_PK_X86_ASM_WRMSR_CXXFLAGS)X \
                 $(CONFIG_PK_X86_ASM_WRMSR_ASFLAGS)X \
                 $(PK_X86_ASM_WRMSR_BSBIT)X \
                 $(PK_X86_ASM_WRMSR_BUILDARCH)X \
		 $(PK_X86_ASM_WRMSR_CSRCFILE)X \
                 $(CONFIG_PK_X86_ASM_WRMSR_SRCFILE)X \
                 $(CONFIG_PK_X86_ASM_WRMSR_CSRCFILE)

$(PK_X86_ASM_WRMSR_DIR)/build: FORCE
	$(Q)$(call PK_X86_ASM_WRMSR_sh,$(srctree))
