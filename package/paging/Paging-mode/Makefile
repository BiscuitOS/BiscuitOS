################################################
#
# X86-Paging-mode
#
################################################
PK_PAGING_MODE_NAME        := X86-Paging-mode
PK_PAGING_MODE_VERSION     := $(CONFIG_PK_PAGING_MODE_VERSION)
PK_PAGING_MODE_SITE        := $(CONFIG_PK_PAGING_MODE_URL)
PK_PAGING_MODE_GITHUB      := $(CONFIG_PK_PAGING_MODE_GITHUB)
PK_PAGING_MODE_SUBNAME     :=
PK_PAGING_MODE_BUILDARCH   := $(CONFIG_PK_PAGING_MODE_BUILDARCH)
PK_PAGING_MODE_DIR         := $(srctree)/package/paging/X86-Paging-mode
PK_PAGING_MODE_PATCH       := $(PK_PAGING_MODE_DIR)/patch
PK_PAGING_MODE_BSBIT       := X86-Paging-mode-$(PK_PAGING_MODE_VERSION).bsbit
PK_PAGING_MODE_OUT         :=
PK_PAGING_MODE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PAGING_MODE_TAR         := $(CONFIG_PK_PAGING_MODE_TAR)
PK_PAGING_MODE_PACKAGE     :=
PK_PAGING_MODE_CONFIG      := $(CONFIG_PK_PAGING_MODE_CONFIG)
SUB_TARGET                  += $(PK_PAGING_MODE_DIR)/build

PK_PAGING_MODE_sh = $(CONFIG_SHELL) $(PK_PAGING_MODE_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_MODE_NAME)X \
                 $(PK_PAGING_MODE_VERSION)X \
                 $(PK_PAGING_MODE_SITE)X \
                 $(PK_PAGING_MODE_GITHUB)X \
                 $(PK_PAGING_MODE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_MODE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_MODE_SUBNAME)X \
                 $(CONFIG_PK_PAGING_MODE_CONFIG)X \
                 $(CONFIG_PK_PAGING_MODE_LIBPATH)X \
                 $(CONFIG_PK_PAGING_MODE_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_MODE_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_MODE_CFLAGS)X \
                 $(CONFIG_PK_PAGING_MODE_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_MODE_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_MODE_ASFLAGS)X \
                 $(PK_PAGING_MODE_BSBIT)X \
                 $(PK_PAGING_MODE_BUILDARCH)X \
		 $(PK_PAGING_MODE_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_MODE_SRCFILE)X \
                 $(CONFIG_PK_PAGING_MODE_CSRCFILE)

$(PK_PAGING_MODE_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_MODE_sh,$(srctree))
