################################################
#
# X86-Paging-mode-PAE
#
################################################
PK_PAGING_MODE_PAE_NAME        := X86-Paging-mode-PAE
PK_PAGING_MODE_PAE_VERSION     := $(CONFIG_PK_PAGING_MODE_PAE_VERSION)
PK_PAGING_MODE_PAE_SITE        := $(CONFIG_PK_PAGING_MODE_PAE_URL)
PK_PAGING_MODE_PAE_GITHUB      := $(CONFIG_PK_PAGING_MODE_PAE_GITHUB)
PK_PAGING_MODE_PAE_SUBNAME     :=
PK_PAGING_MODE_PAE_BUILDARCH   := $(CONFIG_PK_PAGING_MODE_PAE_BUILDARCH)
PK_PAGING_MODE_PAE_DIR         := $(srctree)/package/paging/X86-Paging-mode-PAE
PK_PAGING_MODE_PAE_PATCH       := $(PK_PAGING_MODE_PAE_DIR)/patch
PK_PAGING_MODE_PAE_BSBIT       := X86-Paging-mode-PAE-$(PK_PAGING_MODE_PAE_VERSION).bsbit
PK_PAGING_MODE_PAE_OUT         :=
PK_PAGING_MODE_PAE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PAGING_MODE_PAE_TAR         := $(CONFIG_PK_PAGING_MODE_PAE_TAR)
PK_PAGING_MODE_PAE_PACKAGE     :=
PK_PAGING_MODE_PAE_CONFIG      := $(CONFIG_PK_PAGING_MODE_PAE_CONFIG)
SUB_TARGET                  += $(PK_PAGING_MODE_PAE_DIR)/build

PK_PAGING_MODE_PAE_sh = $(CONFIG_SHELL) $(PK_PAGING_MODE_PAE_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_MODE_PAE_NAME)X \
                 $(PK_PAGING_MODE_PAE_VERSION)X \
                 $(PK_PAGING_MODE_PAE_SITE)X \
                 $(PK_PAGING_MODE_PAE_GITHUB)X \
                 $(PK_PAGING_MODE_PAE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_MODE_PAE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_MODE_PAE_SUBNAME)X \
                 $(CONFIG_PK_PAGING_MODE_PAE_CONFIG)X \
                 $(CONFIG_PK_PAGING_MODE_PAE_LIBPATH)X \
                 $(CONFIG_PK_PAGING_MODE_PAE_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_MODE_PAE_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_MODE_PAE_CFLAGS)X \
                 $(CONFIG_PK_PAGING_MODE_PAE_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_MODE_PAE_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_MODE_PAE_ASFLAGS)X \
                 $(PK_PAGING_MODE_PAE_BSBIT)X \
                 $(PK_PAGING_MODE_PAE_BUILDARCH)X \
		 $(PK_PAGING_MODE_PAE_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_MODE_PAE_SRCFILE)X \
                 $(CONFIG_PK_PAGING_MODE_PAE_CSRCFILE)

$(PK_PAGING_MODE_PAE_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_MODE_PAE_sh,$(srctree))
