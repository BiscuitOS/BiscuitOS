################################################
#
# kmap_atomic_pfn
#
################################################
PK_KMAP_ATOMIC_PFN_NAME        := kmap_atomic_pfn
PK_KMAP_ATOMIC_PFN_VERSION     := $(CONFIG_PK_KMAP_ATOMIC_PFN_VERSION)
PK_KMAP_ATOMIC_PFN_SITE        := $(CONFIG_PK_KMAP_ATOMIC_PFN_URL)
PK_KMAP_ATOMIC_PFN_GITHUB      := $(CONFIG_PK_KMAP_ATOMIC_PFN_GITHUB)
PK_KMAP_ATOMIC_PFN_SUBNAME     :=
PK_KMAP_ATOMIC_PFN_BUILDARCH   := $(CONFIG_PK_KMAP_ATOMIC_PFN_BUILDARCH)
PK_KMAP_ATOMIC_PFN_DIR         := $(srctree)/package/kmap/kmap_atomic_pfn
PK_KMAP_ATOMIC_PFN_PATCH       := $(PK_KMAP_ATOMIC_PFN_DIR)/patch
PK_KMAP_ATOMIC_PFN_BSBIT       := kmap_atomic_pfn-$(PK_KMAP_ATOMIC_PFN_VERSION).bsbit
PK_KMAP_ATOMIC_PFN_OUT         :=
PK_KMAP_ATOMIC_PFN_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_KMAP_ATOMIC_PFN_TAR         := $(CONFIG_PK_KMAP_ATOMIC_PFN_TAR)
PK_KMAP_ATOMIC_PFN_PACKAGE     :=
PK_KMAP_ATOMIC_PFN_CONFIG      := $(CONFIG_PK_KMAP_ATOMIC_PFN_CONFIG)
SUB_TARGET                  += $(PK_KMAP_ATOMIC_PFN_DIR)/build

PK_KMAP_ATOMIC_PFN_sh = $(CONFIG_SHELL) $(PK_KMAP_ATOMIC_PFN_SCRIPTS) \
                 $1X \
                 $(PK_KMAP_ATOMIC_PFN_NAME)X \
                 $(PK_KMAP_ATOMIC_PFN_VERSION)X \
                 $(PK_KMAP_ATOMIC_PFN_SITE)X \
                 $(PK_KMAP_ATOMIC_PFN_GITHUB)X \
                 $(PK_KMAP_ATOMIC_PFN_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KMAP_ATOMIC_PFN_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KMAP_ATOMIC_PFN_SUBNAME)X \
                 $(CONFIG_PK_KMAP_ATOMIC_PFN_CONFIG)X \
                 $(CONFIG_PK_KMAP_ATOMIC_PFN_LIBPATH)X \
                 $(CONFIG_PK_KMAP_ATOMIC_PFN_CPPFLAGS)X \
                 $(CONFIG_PK_KMAP_ATOMIC_PFN_DPKCONFIG)X \
                 $(CONFIG_PK_KMAP_ATOMIC_PFN_CFLAGS)X \
                 $(CONFIG_PK_KMAP_ATOMIC_PFN_LDFLAGS)X \
                 $(CONFIG_PK_KMAP_ATOMIC_PFN_CXXFLAGS)X \
                 $(CONFIG_PK_KMAP_ATOMIC_PFN_ASFLAGS)X \
                 $(PK_KMAP_ATOMIC_PFN_BSBIT)X \
                 $(PK_KMAP_ATOMIC_PFN_BUILDARCH)X \
		 $(PK_KMAP_ATOMIC_PFN_CSRCFILE)X \
                 $(CONFIG_PK_KMAP_ATOMIC_PFN_SRCFILE)X \
                 $(CONFIG_PK_KMAP_ATOMIC_PFN_CSRCFILE)

$(PK_KMAP_ATOMIC_PFN_DIR)/build: FORCE
	$(Q)$(call PK_KMAP_ATOMIC_PFN_sh,$(srctree))
