################################################
#
# X86-CR4
#
################################################
PK_X86_CR4_NAME        := X86-CR4
PK_X86_CR4_VERSION     := $(CONFIG_PK_X86_CR4_VERSION)
PK_X86_CR4_SITE        := $(CONFIG_PK_X86_CR4_URL)
PK_X86_CR4_GITHUB      := $(CONFIG_PK_X86_CR4_GITHUB)
PK_X86_CR4_SUBNAME     :=
PK_X86_CR4_BUILDARCH   := $(CONFIG_PK_X86_CR4_BUILDARCH)
PK_X86_CR4_DIR         := $(srctree)/package/Register/x86/CR4
PK_X86_CR4_PATCH       := $(PK_X86_CR4_DIR)/patch
PK_X86_CR4_BSBIT       := X86-CR4-$(PK_X86_CR4_VERSION).bsbit
PK_X86_CR4_OUT         :=
PK_X86_CR4_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_X86_CR4_TAR         := $(CONFIG_PK_X86_CR4_TAR)
PK_X86_CR4_PACKAGE     :=
PK_X86_CR4_CONFIG      := $(CONFIG_PK_X86_CR4_CONFIG)
SUB_TARGET                  += $(PK_X86_CR4_DIR)/build

PK_X86_CR4_sh = $(CONFIG_SHELL) $(PK_X86_CR4_SCRIPTS) \
                 $1X \
                 $(PK_X86_CR4_NAME)X \
                 $(PK_X86_CR4_VERSION)X \
                 $(PK_X86_CR4_SITE)X \
                 $(PK_X86_CR4_GITHUB)X \
                 $(PK_X86_CR4_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_X86_CR4_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_X86_CR4_SUBNAME)X \
                 $(CONFIG_PK_X86_CR4_CONFIG)X \
                 $(CONFIG_PK_X86_CR4_LIBPATH)X \
                 $(CONFIG_PK_X86_CR4_CPPFLAGS)X \
                 $(CONFIG_PK_X86_CR4_DPKCONFIG)X \
                 $(CONFIG_PK_X86_CR4_CFLAGS)X \
                 $(CONFIG_PK_X86_CR4_LDFLAGS)X \
                 $(CONFIG_PK_X86_CR4_CXXFLAGS)X \
                 $(CONFIG_PK_X86_CR4_ASFLAGS)X \
                 $(PK_X86_CR4_BSBIT)X \
                 $(PK_X86_CR4_BUILDARCH)X \
		 $(PK_X86_CR4_CSRCFILE)X \
                 $(CONFIG_PK_X86_CR4_SRCFILE)X \
                 $(CONFIG_PK_X86_CR4_CSRCFILE)

$(PK_X86_CR4_DIR)/build: FORCE
	$(Q)$(call PK_X86_CR4_sh,$(srctree))
