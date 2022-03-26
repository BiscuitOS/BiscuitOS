################################################
#
# BiscuitOS-ASAN-memory-leak
#
################################################
PK_ASAN_MM_LEAK_NAME        := BiscuitOS-ASAN-memory-leak
PK_ASAN_MM_LEAK_VERSION     := $(CONFIG_PK_ASAN_MM_LEAK_VERSION)
PK_ASAN_MM_LEAK_SITE        := $(CONFIG_PK_ASAN_MM_LEAK_URL)
PK_ASAN_MM_LEAK_GITHUB      := $(CONFIG_PK_ASAN_MM_LEAK_GITHUB)
PK_ASAN_MM_LEAK_SUBNAME     :=
PK_ASAN_MM_LEAK_BUILDARCH   := $(CONFIG_PK_ASAN_MM_LEAK_BUILDARCH)
PK_ASAN_MM_LEAK_DIR         := $(srctree)/package/memory-sanitizers/BiscuitOS-ASAN-memory-leak
PK_ASAN_MM_LEAK_PATCH       := $(PK_ASAN_MM_LEAK_DIR)/patch
PK_ASAN_MM_LEAK_BSBIT       := BiscuitOS-ASAN-memory-leak-$(PK_ASAN_MM_LEAK_VERSION).bsbit
PK_ASAN_MM_LEAK_OUT         :=
PK_ASAN_MM_LEAK_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_ASAN_MM_LEAK_TAR         := $(CONFIG_PK_ASAN_MM_LEAK_TAR)
PK_ASAN_MM_LEAK_PACKAGE     :=
PK_ASAN_MM_LEAK_CONFIG      := $(CONFIG_PK_ASAN_MM_LEAK_CONFIG)
SUB_TARGET                  += $(PK_ASAN_MM_LEAK_DIR)/build

PK_ASAN_MM_LEAK_sh = $(CONFIG_SHELL) $(PK_ASAN_MM_LEAK_SCRIPTS) \
                 $1X \
                 $(PK_ASAN_MM_LEAK_NAME)X \
                 $(PK_ASAN_MM_LEAK_VERSION)X \
                 $(PK_ASAN_MM_LEAK_SITE)X \
                 $(PK_ASAN_MM_LEAK_GITHUB)X \
                 $(PK_ASAN_MM_LEAK_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_ASAN_MM_LEAK_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_ASAN_MM_LEAK_SUBNAME)X \
                 $(CONFIG_PK_ASAN_MM_LEAK_CONFIG)X \
                 $(CONFIG_PK_ASAN_MM_LEAK_LIBPATH)X \
                 $(CONFIG_PK_ASAN_MM_LEAK_CPPFLAGS)X \
                 $(CONFIG_PK_ASAN_MM_LEAK_DPKCONFIG)X \
                 $(CONFIG_PK_ASAN_MM_LEAK_CFLAGS)X \
                 $(CONFIG_PK_ASAN_MM_LEAK_LDFLAGS)X \
                 $(CONFIG_PK_ASAN_MM_LEAK_CXXFLAGS)X \
                 $(CONFIG_PK_ASAN_MM_LEAK_ASFLAGS)X \
                 $(PK_ASAN_MM_LEAK_BSBIT)X \
                 $(PK_ASAN_MM_LEAK_BUILDARCH)X \
		 $(PK_ASAN_MM_LEAK_CSRCFILE)X \
                 $(CONFIG_PK_ASAN_MM_LEAK_SRCFILE)X \
                 $(CONFIG_PK_ASAN_MM_LEAK_CSRCFILE)

$(PK_ASAN_MM_LEAK_DIR)/build: FORCE
	$(Q)$(call PK_ASAN_MM_LEAK_sh,$(srctree))
