################################################
#
# BiscuitOS-MMAP-PreAlloc
#
################################################
PK_MMAP_PREALLOC_NAME        := BiscuitOS-MMAP-PreAlloc
PK_MMAP_PREALLOC_VERSION     := $(CONFIG_PK_MMAP_PREALLOC_VERSION)
PK_MMAP_PREALLOC_SITE        := $(CONFIG_PK_MMAP_PREALLOC_URL)
PK_MMAP_PREALLOC_GITHUB      := $(CONFIG_PK_MMAP_PREALLOC_GITHUB)
PK_MMAP_PREALLOC_SUBNAME     :=
PK_MMAP_PREALLOC_BUILDARCH   := $(CONFIG_PK_MMAP_PREALLOC_BUILDARCH)
PK_MMAP_PREALLOC_DIR         := $(srctree)/package/memory-mapping/BiscuitOS-MMAP-PreAlloc
PK_MMAP_PREALLOC_PATCH       := $(PK_MMAP_PREALLOC_DIR)/patch
PK_MMAP_PREALLOC_BSBIT       := BiscuitOS-MMAP-PreAlloc-$(PK_MMAP_PREALLOC_VERSION).bsbit
PK_MMAP_PREALLOC_OUT         :=
PK_MMAP_PREALLOC_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_MMAP_PREALLOC_TAR         := $(CONFIG_PK_MMAP_PREALLOC_TAR)
PK_MMAP_PREALLOC_PACKAGE     :=
PK_MMAP_PREALLOC_CONFIG      := $(CONFIG_PK_MMAP_PREALLOC_CONFIG)
SUB_TARGET                  += $(PK_MMAP_PREALLOC_DIR)/build

PK_MMAP_PREALLOC_sh = $(CONFIG_SHELL) $(PK_MMAP_PREALLOC_SCRIPTS) \
                 $1X \
                 $(PK_MMAP_PREALLOC_NAME)X \
                 $(PK_MMAP_PREALLOC_VERSION)X \
                 $(PK_MMAP_PREALLOC_SITE)X \
                 $(PK_MMAP_PREALLOC_GITHUB)X \
                 $(PK_MMAP_PREALLOC_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MMAP_PREALLOC_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MMAP_PREALLOC_SUBNAME)X \
                 $(CONFIG_PK_MMAP_PREALLOC_CONFIG)X \
                 $(CONFIG_PK_MMAP_PREALLOC_LIBPATH)X \
                 $(CONFIG_PK_MMAP_PREALLOC_CPPFLAGS)X \
                 $(CONFIG_PK_MMAP_PREALLOC_DPKCONFIG)X \
                 $(CONFIG_PK_MMAP_PREALLOC_CFLAGS)X \
                 $(CONFIG_PK_MMAP_PREALLOC_LDFLAGS)X \
                 $(CONFIG_PK_MMAP_PREALLOC_CXXFLAGS)X \
                 $(CONFIG_PK_MMAP_PREALLOC_ASFLAGS)X \
                 $(PK_MMAP_PREALLOC_BSBIT)X \
                 $(PK_MMAP_PREALLOC_BUILDARCH)X \
		 $(PK_MMAP_PREALLOC_CSRCFILE)X \
                 $(CONFIG_PK_MMAP_PREALLOC_SRCFILE)X \
                 $(CONFIG_PK_MMAP_PREALLOC_CSRCFILE)

$(PK_MMAP_PREALLOC_DIR)/build: FORCE
	$(Q)$(call PK_MMAP_PREALLOC_sh,$(srctree))
