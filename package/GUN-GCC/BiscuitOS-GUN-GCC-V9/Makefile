################################################
#
# BiscuitOS-GUN-GCC-V9
#
################################################
PK_GUN_GCC_V9_NAME        := BiscuitOS-GUN-GCC-V9
PK_GUN_GCC_V9_VERSION     := $(CONFIG_PK_GUN_GCC_V9_VERSION)
PK_GUN_GCC_V9_SITE        := $(CONFIG_PK_GUN_GCC_V9_URL)
PK_GUN_GCC_V9_GITHUB      := $(CONFIG_PK_GUN_GCC_V9_GITHUB)
PK_GUN_GCC_V9_SUBNAME     :=
PK_GUN_GCC_V9_BUILDARCH   := $(CONFIG_PK_GUN_GCC_V9_BUILDARCH)
PK_GUN_GCC_V9_DIR         := $(srctree)/package/GUN-GCC/BiscuitOS-GUN-GCC-V9
PK_GUN_GCC_V9_PATCH       := $(PK_GUN_GCC_V9_DIR)/patch
PK_GUN_GCC_V9_BSBIT       := BiscuitOS-GUN-GCC-V9-$(PK_GUN_GCC_V9_VERSION).bsbit
PK_GUN_GCC_V9_OUT         :=
PK_GUN_GCC_V9_SCRIPTS     := $(srctree)/scripts/package/package-gcc-9.sh
PK_GUN_GCC_V9_TAR         := $(CONFIG_PK_GUN_GCC_V9_TAR)
PK_GUN_GCC_V9_PACKAGE     :=
PK_GUN_GCC_V9_CONFIG      := $(CONFIG_PK_GUN_GCC_V9_CONFIG)
SUB_TARGET                  += $(PK_GUN_GCC_V9_DIR)/build

PK_GUN_GCC_V9_sh = $(CONFIG_SHELL) $(PK_GUN_GCC_V9_SCRIPTS) \
                 $1X \
                 $(PK_GUN_GCC_V9_NAME)X \
                 $(PK_GUN_GCC_V9_VERSION)X \
                 $(PK_GUN_GCC_V9_SITE)X \
                 $(PK_GUN_GCC_V9_GITHUB)X \
                 $(PK_GUN_GCC_V9_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_GUN_GCC_V9_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_GUN_GCC_V9_SUBNAME)X \
                 $(CONFIG_PK_GUN_GCC_V9_CONFIG)X \
                 $(CONFIG_PK_GUN_GCC_V9_LIBPATH)X \
                 $(CONFIG_PK_GUN_GCC_V9_CPPFLAGS)X \
                 $(CONFIG_PK_GUN_GCC_V9_DPKCONFIG)X \
                 $(CONFIG_PK_GUN_GCC_V9_CFLAGS)X \
                 $(CONFIG_PK_GUN_GCC_V9_LDFLAGS)X \
                 $(CONFIG_PK_GUN_GCC_V9_CXXFLAGS)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASFLAGS)X \
                 $(PK_GUN_GCC_V9_BSBIT)X \
                 $(PK_GUN_GCC_V9_BUILDARCH)X \
		 $(PK_GUN_GCC_V9_CSRCFILE)X \
                 $(CONFIG_PK_GUN_GCC_V9_SRCFILE)X \
                 $(CONFIG_PK_GUN_GCC_V9_CSRCFILE)

$(PK_GUN_GCC_V9_DIR)/build: FORCE
	$(Q)$(call PK_GUN_GCC_V9_sh,$(srctree))
