################################################
#
# X86-CR0
#
################################################
PK_X86_CR0_NAME        := X86-CR0
PK_X86_CR0_VERSION     := $(CONFIG_PK_X86_CR0_VERSION)
PK_X86_CR0_SITE        := $(CONFIG_PK_X86_CR0_URL)
PK_X86_CR0_GITHUB      := $(CONFIG_PK_X86_CR0_GITHUB)
PK_X86_CR0_SUBNAME     :=
PK_X86_CR0_BUILDARCH   := $(CONFIG_PK_X86_CR0_BUILDARCH)
PK_X86_CR0_DIR         := $(srctree)/package/Register/x86/CR0
PK_X86_CR0_PATCH       := $(PK_X86_CR0_DIR)/patch
PK_X86_CR0_BSBIT       := X86-CR0-$(PK_X86_CR0_VERSION).bsbit
PK_X86_CR0_OUT         :=
PK_X86_CR0_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_X86_CR0_TAR         := $(CONFIG_PK_X86_CR0_TAR)
PK_X86_CR0_PACKAGE     :=
PK_X86_CR0_CONFIG      := $(CONFIG_PK_X86_CR0_CONFIG)
SUB_TARGET                  += $(PK_X86_CR0_DIR)/build

PK_X86_CR0_sh = $(CONFIG_SHELL) $(PK_X86_CR0_SCRIPTS) \
                 $1X \
                 $(PK_X86_CR0_NAME)X \
                 $(PK_X86_CR0_VERSION)X \
                 $(PK_X86_CR0_SITE)X \
                 $(PK_X86_CR0_GITHUB)X \
                 $(PK_X86_CR0_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_X86_CR0_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_X86_CR0_SUBNAME)X \
                 $(CONFIG_PK_X86_CR0_CONFIG)X \
                 $(CONFIG_PK_X86_CR0_LIBPATH)X \
                 $(CONFIG_PK_X86_CR0_CPPFLAGS)X \
                 $(CONFIG_PK_X86_CR0_DPKCONFIG)X \
                 $(CONFIG_PK_X86_CR0_CFLAGS)X \
                 $(CONFIG_PK_X86_CR0_LDFLAGS)X \
                 $(CONFIG_PK_X86_CR0_CXXFLAGS)X \
                 $(CONFIG_PK_X86_CR0_ASFLAGS)X \
                 $(PK_X86_CR0_BSBIT)X \
                 $(PK_X86_CR0_BUILDARCH)X \
		 $(PK_X86_CR0_CSRCFILE)X \
                 $(CONFIG_PK_X86_CR0_SRCFILE)X \
                 $(CONFIG_PK_X86_CR0_CSRCFILE)

$(PK_X86_CR0_DIR)/build: FORCE
	$(Q)$(call PK_X86_CR0_sh,$(srctree))
