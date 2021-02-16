################################################
#
# PTE-PAGE_USER-S
#
################################################
PK_PTE_PAGE_USER_S_NAME        := PTE-PAGE_USER-S
PK_PTE_PAGE_USER_S_VERSION     := $(CONFIG_PK_PTE_PAGE_USER_S_VERSION)
PK_PTE_PAGE_USER_S_SITE        := $(CONFIG_PK_PTE_PAGE_USER_S_URL)
PK_PTE_PAGE_USER_S_GITHUB      := $(CONFIG_PK_PTE_PAGE_USER_S_GITHUB)
PK_PTE_PAGE_USER_S_SUBNAME     :=
PK_PTE_PAGE_USER_S_BUILDARCH   := $(CONFIG_PK_PTE_PAGE_USER_S_BUILDARCH)
PK_PTE_PAGE_USER_S_DIR         := $(srctree)/package/paging/PTE-PAGE_USER-S
PK_PTE_PAGE_USER_S_PATCH       := $(PK_PTE_PAGE_USER_S_DIR)/patch
PK_PTE_PAGE_USER_S_BSBIT       := PTE-PAGE_USER-S-$(PK_PTE_PAGE_USER_S_VERSION).bsbit
PK_PTE_PAGE_USER_S_OUT         :=
PK_PTE_PAGE_USER_S_SCRIPTS     := $(srctree)/scripts/package/package-kernel.sh
PK_PTE_PAGE_USER_S_TAR         := $(CONFIG_PK_PTE_PAGE_USER_S_TAR)
PK_PTE_PAGE_USER_S_PACKAGE     :=
PK_PTE_PAGE_USER_S_CONFIG      := $(CONFIG_PK_PTE_PAGE_USER_S_CONFIG)
SUB_TARGET                  += $(PK_PTE_PAGE_USER_S_DIR)/build

PK_PTE_PAGE_USER_S_sh = $(CONFIG_SHELL) $(PK_PTE_PAGE_USER_S_SCRIPTS) \
                 $1X \
                 $(PK_PTE_PAGE_USER_S_NAME)X \
                 $(PK_PTE_PAGE_USER_S_VERSION)X \
                 $(PK_PTE_PAGE_USER_S_SITE)X \
                 $(PK_PTE_PAGE_USER_S_GITHUB)X \
                 $(PK_PTE_PAGE_USER_S_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PTE_PAGE_USER_S_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PTE_PAGE_USER_S_SUBNAME)X \
                 $(CONFIG_PK_PTE_PAGE_USER_S_CONFIG)X \
                 $(CONFIG_PK_PTE_PAGE_USER_S_LIBPATH)X \
                 $(CONFIG_PK_PTE_PAGE_USER_S_CPPFLAGS)X \
                 $(CONFIG_PK_PTE_PAGE_USER_S_DPKCONFIG)X \
                 $(CONFIG_PK_PTE_PAGE_USER_S_CFLAGS)X \
                 $(CONFIG_PK_PTE_PAGE_USER_S_LDFLAGS)X \
                 $(CONFIG_PK_PTE_PAGE_USER_S_CXXFLAGS)X \
                 $(CONFIG_PK_PTE_PAGE_USER_S_ASFLAGS)X \
                 $(PK_PTE_PAGE_USER_S_BSBIT)X \
                 $(PK_PTE_PAGE_USER_S_BUILDARCH)X \
		 $(PK_PTE_PAGE_USER_S_CSRCFILE)X \
                 $(CONFIG_PK_PTE_PAGE_USER_S_SRCFILE)X \
                 $(CONFIG_PK_PTE_PAGE_USER_S_CSRCFILE)

$(PK_PTE_PAGE_USER_S_DIR)/build: FORCE
	$(Q)$(call PK_PTE_PAGE_USER_S_sh,$(srctree))
