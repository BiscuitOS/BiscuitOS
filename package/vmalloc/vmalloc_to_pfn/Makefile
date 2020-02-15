################################################
#
# vmalloc_to_pfn
#
################################################
PK_VMALLOC_TO_PFN_NAME        := vmalloc_to_pfn
PK_VMALLOC_TO_PFN_VERSION     := $(CONFIG_PK_VMALLOC_TO_PFN_VERSION)
PK_VMALLOC_TO_PFN_SITE        := $(CONFIG_PK_VMALLOC_TO_PFN_URL)
PK_VMALLOC_TO_PFN_GITHUB      := $(CONFIG_PK_VMALLOC_TO_PFN_GITHUB)
PK_VMALLOC_TO_PFN_SUBNAME     :=
PK_VMALLOC_TO_PFN_BUILDARCH   := $(CONFIG_PK_VMALLOC_TO_PFN_BUILDARCH)
PK_VMALLOC_TO_PFN_DIR         := $(srctree)/package/vmalloc/vmalloc_to_pfn
PK_VMALLOC_TO_PFN_PATCH       := $(PK_VMALLOC_TO_PFN_DIR)/patch
PK_VMALLOC_TO_PFN_BSBIT       := vmalloc_to_pfn-$(PK_VMALLOC_TO_PFN_VERSION).bsbit
PK_VMALLOC_TO_PFN_OUT         :=
PK_VMALLOC_TO_PFN_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_VMALLOC_TO_PFN_TAR         := $(CONFIG_PK_VMALLOC_TO_PFN_TAR)
PK_VMALLOC_TO_PFN_PACKAGE     :=
PK_VMALLOC_TO_PFN_CONFIG      := $(CONFIG_PK_VMALLOC_TO_PFN_CONFIG)
SUB_TARGET                  += $(PK_VMALLOC_TO_PFN_DIR)/build

PK_VMALLOC_TO_PFN_sh = $(CONFIG_SHELL) $(PK_VMALLOC_TO_PFN_SCRIPTS) \
                 $1X \
                 $(PK_VMALLOC_TO_PFN_NAME)X \
                 $(PK_VMALLOC_TO_PFN_VERSION)X \
                 $(PK_VMALLOC_TO_PFN_SITE)X \
                 $(PK_VMALLOC_TO_PFN_GITHUB)X \
                 $(PK_VMALLOC_TO_PFN_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_VMALLOC_TO_PFN_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_VMALLOC_TO_PFN_SUBNAME)X \
                 $(CONFIG_PK_VMALLOC_TO_PFN_CONFIG)X \
                 $(CONFIG_PK_VMALLOC_TO_PFN_LIBPATH)X \
                 $(CONFIG_PK_VMALLOC_TO_PFN_CPPFLAGS)X \
                 $(CONFIG_PK_VMALLOC_TO_PFN_DPKCONFIG)X \
                 $(CONFIG_PK_VMALLOC_TO_PFN_CFLAGS)X \
                 $(CONFIG_PK_VMALLOC_TO_PFN_LDFLAGS)X \
                 $(CONFIG_PK_VMALLOC_TO_PFN_CXXFLAGS)X \
                 $(CONFIG_PK_VMALLOC_TO_PFN_ASFLAGS)X \
                 $(PK_VMALLOC_TO_PFN_BSBIT)X \
                 $(PK_VMALLOC_TO_PFN_BUILDARCH)X \
		 $(PK_VMALLOC_TO_PFN_CSRCFILE)X \
                 $(CONFIG_PK_VMALLOC_TO_PFN_SRCFILE)X \
                 $(CONFIG_PK_VMALLOC_TO_PFN_CSRCFILE)

$(PK_VMALLOC_TO_PFN_DIR)/build: FORCE
	$(Q)$(call PK_VMALLOC_TO_PFN_sh,$(srctree))
