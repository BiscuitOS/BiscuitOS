################################################
#
# BiscuitOS-ASAN-heap-use-after-free
#
################################################
PK_ASAN_HEAP_UAF_NAME        := BiscuitOS-ASAN-heap-use-after-free
PK_ASAN_HEAP_UAF_VERSION     := $(CONFIG_PK_ASAN_HEAP_UAF_VERSION)
PK_ASAN_HEAP_UAF_SITE        := $(CONFIG_PK_ASAN_HEAP_UAF_URL)
PK_ASAN_HEAP_UAF_GITHUB      := $(CONFIG_PK_ASAN_HEAP_UAF_GITHUB)
PK_ASAN_HEAP_UAF_SUBNAME     :=
PK_ASAN_HEAP_UAF_BUILDARCH   := $(CONFIG_PK_ASAN_HEAP_UAF_BUILDARCH)
PK_ASAN_HEAP_UAF_DIR         := $(srctree)/package/memory-sanitizers/BiscuitOS-ASAN-heap-use-after-free
PK_ASAN_HEAP_UAF_PATCH       := $(PK_ASAN_HEAP_UAF_DIR)/patch
PK_ASAN_HEAP_UAF_BSBIT       := BiscuitOS-ASAN-heap-use-after-free-$(PK_ASAN_HEAP_UAF_VERSION).bsbit
PK_ASAN_HEAP_UAF_OUT         :=
PK_ASAN_HEAP_UAF_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_ASAN_HEAP_UAF_TAR         := $(CONFIG_PK_ASAN_HEAP_UAF_TAR)
PK_ASAN_HEAP_UAF_PACKAGE     :=
PK_ASAN_HEAP_UAF_CONFIG      := $(CONFIG_PK_ASAN_HEAP_UAF_CONFIG)
SUB_TARGET                  += $(PK_ASAN_HEAP_UAF_DIR)/build

PK_ASAN_HEAP_UAF_sh = $(CONFIG_SHELL) $(PK_ASAN_HEAP_UAF_SCRIPTS) \
                 $1X \
                 $(PK_ASAN_HEAP_UAF_NAME)X \
                 $(PK_ASAN_HEAP_UAF_VERSION)X \
                 $(PK_ASAN_HEAP_UAF_SITE)X \
                 $(PK_ASAN_HEAP_UAF_GITHUB)X \
                 $(PK_ASAN_HEAP_UAF_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_ASAN_HEAP_UAF_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_ASAN_HEAP_UAF_SUBNAME)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_CONFIG)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_LIBPATH)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_CPPFLAGS)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_DPKCONFIG)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_CFLAGS)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_LDFLAGS)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_CXXFLAGS)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_ASFLAGS)X \
                 $(PK_ASAN_HEAP_UAF_BSBIT)X \
                 $(PK_ASAN_HEAP_UAF_BUILDARCH)X \
		 $(PK_ASAN_HEAP_UAF_CSRCFILE)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_SRCFILE)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_CSRCFILE)

$(PK_ASAN_HEAP_UAF_DIR)/build: FORCE
	$(Q)$(call PK_ASAN_HEAP_UAF_sh,$(srctree))
