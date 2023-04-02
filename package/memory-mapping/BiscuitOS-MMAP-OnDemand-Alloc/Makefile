################################################
#
# BiscuitOS-MMAP-OnDemand-Alloc
#
################################################
PK_MMAP_ODALLOC_NAME        := BiscuitOS-MMAP-OnDemand-Alloc
PK_MMAP_ODALLOC_VERSION     := $(CONFIG_PK_MMAP_ODALLOC_VERSION)
PK_MMAP_ODALLOC_SITE        := $(CONFIG_PK_MMAP_ODALLOC_URL)
PK_MMAP_ODALLOC_GITHUB      := $(CONFIG_PK_MMAP_ODALLOC_GITHUB)
PK_MMAP_ODALLOC_SUBNAME     :=
PK_MMAP_ODALLOC_BUILDARCH   := $(CONFIG_PK_MMAP_ODALLOC_BUILDARCH)
PK_MMAP_ODALLOC_DIR         := $(srctree)/package/memory-mapping/BiscuitOS-MMAP-OnDemand-Alloc
PK_MMAP_ODALLOC_PATCH       := $(PK_MMAP_ODALLOC_DIR)/patch
PK_MMAP_ODALLOC_BSBIT       := BiscuitOS-MMAP-OnDemand-Alloc-$(PK_MMAP_ODALLOC_VERSION).bsbit
PK_MMAP_ODALLOC_OUT         :=
PK_MMAP_ODALLOC_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_MMAP_ODALLOC_TAR         := $(CONFIG_PK_MMAP_ODALLOC_TAR)
PK_MMAP_ODALLOC_PACKAGE     :=
PK_MMAP_ODALLOC_CONFIG      := $(CONFIG_PK_MMAP_ODALLOC_CONFIG)
SUB_TARGET                  += $(PK_MMAP_ODALLOC_DIR)/build

PK_MMAP_ODALLOC_sh = $(CONFIG_SHELL) $(PK_MMAP_ODALLOC_SCRIPTS) \
                 $1X \
                 $(PK_MMAP_ODALLOC_NAME)X \
                 $(PK_MMAP_ODALLOC_VERSION)X \
                 $(PK_MMAP_ODALLOC_SITE)X \
                 $(PK_MMAP_ODALLOC_GITHUB)X \
                 $(PK_MMAP_ODALLOC_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MMAP_ODALLOC_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MMAP_ODALLOC_SUBNAME)X \
                 $(CONFIG_PK_MMAP_ODALLOC_CONFIG)X \
                 $(CONFIG_PK_MMAP_ODALLOC_LIBPATH)X \
                 $(CONFIG_PK_MMAP_ODALLOC_CPPFLAGS)X \
                 $(CONFIG_PK_MMAP_ODALLOC_DPKCONFIG)X \
                 $(CONFIG_PK_MMAP_ODALLOC_CFLAGS)X \
                 $(CONFIG_PK_MMAP_ODALLOC_LDFLAGS)X \
                 $(CONFIG_PK_MMAP_ODALLOC_CXXFLAGS)X \
                 $(CONFIG_PK_MMAP_ODALLOC_ASFLAGS)X \
                 $(PK_MMAP_ODALLOC_BSBIT)X \
                 $(PK_MMAP_ODALLOC_BUILDARCH)X \
		 $(PK_MMAP_ODALLOC_CSRCFILE)X \
                 $(CONFIG_PK_MMAP_ODALLOC_SRCFILE)X \
                 $(CONFIG_PK_MMAP_ODALLOC_CSRCFILE)

$(PK_MMAP_ODALLOC_DIR)/build: FORCE
	$(Q)$(call PK_MMAP_ODALLOC_sh,$(srctree))
