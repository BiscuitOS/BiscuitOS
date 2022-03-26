################################################
#
# BiscuitOS-GUN-GCC-V9-ASAN
#
################################################
PK_GUN_GCC_V9_ASAN_NAME        := BiscuitOS-GUN-GCC-V9-ASAN
PK_GUN_GCC_V9_ASAN_VERSION     := $(CONFIG_PK_GUN_GCC_V9_ASAN_VERSION)
PK_GUN_GCC_V9_ASAN_SITE        := $(CONFIG_PK_GUN_GCC_V9_ASAN_URL)
PK_GUN_GCC_V9_ASAN_GITHUB      := $(CONFIG_PK_GUN_GCC_V9_ASAN_GITHUB)
PK_GUN_GCC_V9_ASAN_SUBNAME     :=
PK_GUN_GCC_V9_ASAN_BUILDARCH   := $(CONFIG_PK_GUN_GCC_V9_ASAN_BUILDARCH)
PK_GUN_GCC_V9_ASAN_DIR         := $(srctree)/package/GUN-GCC/BiscuitOS-GUN-GCC-V9-ASAN
PK_GUN_GCC_V9_ASAN_PATCH       := $(PK_GUN_GCC_V9_ASAN_DIR)/patch
PK_GUN_GCC_V9_ASAN_BSBIT       := BiscuitOS-GUN-GCC-V9-ASAN-$(PK_GUN_GCC_V9_ASAN_VERSION).bsbit
PK_GUN_GCC_V9_ASAN_OUT         :=
PK_GUN_GCC_V9_ASAN_SCRIPTS     := $(srctree)/scripts/package/package-gcc-9.sh
PK_GUN_GCC_V9_ASAN_TAR         := $(CONFIG_PK_GUN_GCC_V9_ASAN_TAR)
PK_GUN_GCC_V9_ASAN_PACKAGE     :=
PK_GUN_GCC_V9_ASAN_CONFIG      := $(CONFIG_PK_GUN_GCC_V9_ASAN_CONFIG)
SUB_TARGET                  += $(PK_GUN_GCC_V9_ASAN_DIR)/build

PK_GUN_GCC_V9_ASAN_sh = $(CONFIG_SHELL) $(PK_GUN_GCC_V9_ASAN_SCRIPTS) \
                 $1X \
                 $(PK_GUN_GCC_V9_ASAN_NAME)X \
                 $(PK_GUN_GCC_V9_ASAN_VERSION)X \
                 $(PK_GUN_GCC_V9_ASAN_SITE)X \
                 $(PK_GUN_GCC_V9_ASAN_GITHUB)X \
                 $(PK_GUN_GCC_V9_ASAN_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_GUN_GCC_V9_ASAN_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_GUN_GCC_V9_ASAN_SUBNAME)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASAN_CONFIG)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASAN_LIBPATH)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASAN_CPPFLAGS)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASAN_DPKCONFIG)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASAN_CFLAGS)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASAN_LDFLAGS)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASAN_CXXFLAGS)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASAN_ASFLAGS)X \
                 $(PK_GUN_GCC_V9_ASAN_BSBIT)X \
                 $(PK_GUN_GCC_V9_ASAN_BUILDARCH)X \
		 $(PK_GUN_GCC_V9_ASAN_CSRCFILE)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASAN_SRCFILE)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASAN_CSRCFILE)

$(PK_GUN_GCC_V9_ASAN_DIR)/build: FORCE
	$(Q)$(call PK_GUN_GCC_V9_ASAN_sh,$(srctree))
