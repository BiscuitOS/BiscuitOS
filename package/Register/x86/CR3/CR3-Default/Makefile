################################################
#
# X86-CR3
#
################################################
PK_CR3_DEFAULT_NAME        := X86-CR3
PK_CR3_DEFAULT_VERSION     := $(CONFIG_PK_CR3_DEFAULT_VERSION)
PK_CR3_DEFAULT_SITE        := $(CONFIG_PK_CR3_DEFAULT_URL)
PK_CR3_DEFAULT_GITHUB      := $(CONFIG_PK_CR3_DEFAULT_GITHUB)
PK_CR3_DEFAULT_SUBNAME     :=
PK_CR3_DEFAULT_BUILDARCH   := $(CONFIG_PK_CR3_DEFAULT_BUILDARCH)
PK_CR3_DEFAULT_DIR         := $(srctree)/package/Register/x86/CR3/CR3-Default
PK_CR3_DEFAULT_PATCH       := $(PK_CR3_DEFAULT_DIR)/patch
PK_CR3_DEFAULT_BSBIT       := X86-CR3-$(PK_CR3_DEFAULT_VERSION).bsbit
PK_CR3_DEFAULT_OUT         :=
PK_CR3_DEFAULT_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_CR3_DEFAULT_TAR         := $(CONFIG_PK_CR3_DEFAULT_TAR)
PK_CR3_DEFAULT_PACKAGE     :=
PK_CR3_DEFAULT_CONFIG      := $(CONFIG_PK_CR3_DEFAULT_CONFIG)
SUB_TARGET                  += $(PK_CR3_DEFAULT_DIR)/build

PK_CR3_DEFAULT_sh = $(CONFIG_SHELL) $(PK_CR3_DEFAULT_SCRIPTS) \
                 $1X \
                 $(PK_CR3_DEFAULT_NAME)X \
                 $(PK_CR3_DEFAULT_VERSION)X \
                 $(PK_CR3_DEFAULT_SITE)X \
                 $(PK_CR3_DEFAULT_GITHUB)X \
                 $(PK_CR3_DEFAULT_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CR3_DEFAULT_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CR3_DEFAULT_SUBNAME)X \
                 $(CONFIG_PK_CR3_DEFAULT_CONFIG)X \
                 $(CONFIG_PK_CR3_DEFAULT_LIBPATH)X \
                 $(CONFIG_PK_CR3_DEFAULT_CPPFLAGS)X \
                 $(CONFIG_PK_CR3_DEFAULT_DPKCONFIG)X \
                 $(CONFIG_PK_CR3_DEFAULT_CFLAGS)X \
                 $(CONFIG_PK_CR3_DEFAULT_LDFLAGS)X \
                 $(CONFIG_PK_CR3_DEFAULT_CXXFLAGS)X \
                 $(CONFIG_PK_CR3_DEFAULT_ASFLAGS)X \
                 $(PK_CR3_DEFAULT_BSBIT)X \
                 $(PK_CR3_DEFAULT_BUILDARCH)X \
		 $(PK_CR3_DEFAULT_CSRCFILE)X \
                 $(CONFIG_PK_CR3_DEFAULT_SRCFILE)X \
                 $(CONFIG_PK_CR3_DEFAULT_CSRCFILE)

$(PK_CR3_DEFAULT_DIR)/build: FORCE
	$(Q)$(call PK_CR3_DEFAULT_sh,$(srctree))
