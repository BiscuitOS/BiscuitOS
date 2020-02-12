################################################
#
# vmalloc_to_page
#
################################################
PK_VMALLOC_TO_PAGE_NAME        := vmalloc_to_page
PK_VMALLOC_TO_PAGE_VERSION     := $(CONFIG_PK_VMALLOC_TO_PAGE_VERSION)
PK_VMALLOC_TO_PAGE_SITE        := $(CONFIG_PK_VMALLOC_TO_PAGE_URL)
PK_VMALLOC_TO_PAGE_GITHUB      := $(CONFIG_PK_VMALLOC_TO_PAGE_GITHUB)
PK_VMALLOC_TO_PAGE_SUBNAME     :=
PK_VMALLOC_TO_PAGE_BUILDARCH   := $(CONFIG_PK_VMALLOC_TO_PAGE_BUILDARCH)
PK_VMALLOC_TO_PAGE_DIR         := $(srctree)/package/vmalloc/vmalloc_to_page
PK_VMALLOC_TO_PAGE_PATCH       := $(PK_VMALLOC_TO_PAGE_DIR)/patch
PK_VMALLOC_TO_PAGE_BSBIT       := vmalloc_to_page-$(PK_VMALLOC_TO_PAGE_VERSION).bsbit
PK_VMALLOC_TO_PAGE_OUT         :=
PK_VMALLOC_TO_PAGE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_VMALLOC_TO_PAGE_TAR         := $(CONFIG_PK_VMALLOC_TO_PAGE_TAR)
PK_VMALLOC_TO_PAGE_PACKAGE     :=
PK_VMALLOC_TO_PAGE_CONFIG      := $(CONFIG_PK_VMALLOC_TO_PAGE_CONFIG)
SUB_TARGET                  += $(PK_VMALLOC_TO_PAGE_DIR)/build

PK_VMALLOC_TO_PAGE_sh = $(CONFIG_SHELL) $(PK_VMALLOC_TO_PAGE_SCRIPTS) \
                 $1X \
                 $(PK_VMALLOC_TO_PAGE_NAME)X \
                 $(PK_VMALLOC_TO_PAGE_VERSION)X \
                 $(PK_VMALLOC_TO_PAGE_SITE)X \
                 $(PK_VMALLOC_TO_PAGE_GITHUB)X \
                 $(PK_VMALLOC_TO_PAGE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_VMALLOC_TO_PAGE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_VMALLOC_TO_PAGE_SUBNAME)X \
                 $(CONFIG_PK_VMALLOC_TO_PAGE_CONFIG)X \
                 $(CONFIG_PK_VMALLOC_TO_PAGE_LIBPATH)X \
                 $(CONFIG_PK_VMALLOC_TO_PAGE_CPPFLAGS)X \
                 $(CONFIG_PK_VMALLOC_TO_PAGE_DPKCONFIG)X \
                 $(CONFIG_PK_VMALLOC_TO_PAGE_CFLAGS)X \
                 $(CONFIG_PK_VMALLOC_TO_PAGE_LDFLAGS)X \
                 $(CONFIG_PK_VMALLOC_TO_PAGE_CXXFLAGS)X \
                 $(CONFIG_PK_VMALLOC_TO_PAGE_ASFLAGS)X \
                 $(PK_VMALLOC_TO_PAGE_BSBIT)X \
                 $(PK_VMALLOC_TO_PAGE_BUILDARCH)X \
		 $(PK_VMALLOC_TO_PAGE_CSRCFILE)X \
                 $(CONFIG_PK_VMALLOC_TO_PAGE_SRCFILE)X \
                 $(CONFIG_PK_VMALLOC_TO_PAGE_CSRCFILE)

$(PK_VMALLOC_TO_PAGE_DIR)/build: FORCE
	$(Q)$(call PK_VMALLOC_TO_PAGE_sh,$(srctree))
