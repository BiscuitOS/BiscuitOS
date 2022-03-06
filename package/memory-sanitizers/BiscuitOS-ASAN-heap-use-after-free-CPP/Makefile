################################################
#
# BiscuitOS-ASAN-heap-use-after-free-CPP
#
################################################
PK_ASAN_HEAP_UAF_CPP_NAME        := BiscuitOS-ASAN-heap-use-after-free-CPP
PK_ASAN_HEAP_UAF_CPP_VERSION     := $(CONFIG_PK_ASAN_HEAP_UAF_CPP_VERSION)
PK_ASAN_HEAP_UAF_CPP_SITE        := $(CONFIG_PK_ASAN_HEAP_UAF_CPP_URL)
PK_ASAN_HEAP_UAF_CPP_GITHUB      := $(CONFIG_PK_ASAN_HEAP_UAF_CPP_GITHUB)
PK_ASAN_HEAP_UAF_CPP_SUBNAME     :=
PK_ASAN_HEAP_UAF_CPP_BUILDARCH   := $(CONFIG_PK_ASAN_HEAP_UAF_CPP_BUILDARCH)
PK_ASAN_HEAP_UAF_CPP_DIR         := $(srctree)/package/memory-sanitizers/BiscuitOS-ASAN-heap-use-after-free-CPP
PK_ASAN_HEAP_UAF_CPP_PATCH       := $(PK_ASAN_HEAP_UAF_CPP_DIR)/patch
PK_ASAN_HEAP_UAF_CPP_BSBIT       := BiscuitOS-ASAN-heap-use-after-free-CPP-$(PK_ASAN_HEAP_UAF_CPP_VERSION).bsbit
PK_ASAN_HEAP_UAF_CPP_OUT         :=
PK_ASAN_HEAP_UAF_CPP_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_ASAN_HEAP_UAF_CPP_TAR         := $(CONFIG_PK_ASAN_HEAP_UAF_CPP_TAR)
PK_ASAN_HEAP_UAF_CPP_PACKAGE     :=
PK_ASAN_HEAP_UAF_CPP_CONFIG      := $(CONFIG_PK_ASAN_HEAP_UAF_CPP_CONFIG)
SUB_TARGET                  += $(PK_ASAN_HEAP_UAF_CPP_DIR)/build

PK_ASAN_HEAP_UAF_CPP_sh = $(CONFIG_SHELL) $(PK_ASAN_HEAP_UAF_CPP_SCRIPTS) \
                 $1X \
                 $(PK_ASAN_HEAP_UAF_CPP_NAME)X \
                 $(PK_ASAN_HEAP_UAF_CPP_VERSION)X \
                 $(PK_ASAN_HEAP_UAF_CPP_SITE)X \
                 $(PK_ASAN_HEAP_UAF_CPP_GITHUB)X \
                 $(PK_ASAN_HEAP_UAF_CPP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_ASAN_HEAP_UAF_CPP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_ASAN_HEAP_UAF_CPP_SUBNAME)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_CPP_CONFIG)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_CPP_LIBPATH)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_CPP_CPPFLAGS)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_CPP_DPKCONFIG)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_CPP_CFLAGS)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_CPP_LDFLAGS)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_CPP_CXXFLAGS)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_CPP_ASFLAGS)X \
                 $(PK_ASAN_HEAP_UAF_CPP_BSBIT)X \
                 $(PK_ASAN_HEAP_UAF_CPP_BUILDARCH)X \
		 $(PK_ASAN_HEAP_UAF_CPP_CSRCFILE)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_CPP_SRCFILE)X \
                 $(CONFIG_PK_ASAN_HEAP_UAF_CPP_CSRCFILE)

$(PK_ASAN_HEAP_UAF_CPP_DIR)/build: FORCE
	$(Q)$(call PK_ASAN_HEAP_UAF_CPP_sh,$(srctree))
