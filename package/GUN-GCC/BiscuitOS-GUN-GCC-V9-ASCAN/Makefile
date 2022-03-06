################################################
#
# BiscuitOS-GUN-GCC-V9-ASCAN
#
################################################
PK_GUN_GCC_V9_ASCAN_NAME        := BiscuitOS-GUN-GCC-V9-ASCAN
PK_GUN_GCC_V9_ASCAN_VERSION     := $(CONFIG_PK_GUN_GCC_V9_ASCAN_VERSION)
PK_GUN_GCC_V9_ASCAN_SITE        := $(CONFIG_PK_GUN_GCC_V9_ASCAN_URL)
PK_GUN_GCC_V9_ASCAN_GITHUB      := $(CONFIG_PK_GUN_GCC_V9_ASCAN_GITHUB)
PK_GUN_GCC_V9_ASCAN_SUBNAME     :=
PK_GUN_GCC_V9_ASCAN_BUILDARCH   := $(CONFIG_PK_GUN_GCC_V9_ASCAN_BUILDARCH)
PK_GUN_GCC_V9_ASCAN_DIR         := $(srctree)/package/GUN-GCC/BiscuitOS-GUN-GCC-V9-ASCAN
PK_GUN_GCC_V9_ASCAN_PATCH       := $(PK_GUN_GCC_V9_ASCAN_DIR)/patch
PK_GUN_GCC_V9_ASCAN_BSBIT       := BiscuitOS-GUN-GCC-V9-ASCAN-$(PK_GUN_GCC_V9_ASCAN_VERSION).bsbit
PK_GUN_GCC_V9_ASCAN_OUT         :=
PK_GUN_GCC_V9_ASCAN_SCRIPTS     := $(srctree)/scripts/package/package-gcc-9.sh
PK_GUN_GCC_V9_ASCAN_TAR         := $(CONFIG_PK_GUN_GCC_V9_ASCAN_TAR)
PK_GUN_GCC_V9_ASCAN_PACKAGE     :=
PK_GUN_GCC_V9_ASCAN_CONFIG      := $(CONFIG_PK_GUN_GCC_V9_ASCAN_CONFIG)
SUB_TARGET                  += $(PK_GUN_GCC_V9_ASCAN_DIR)/build

PK_GUN_GCC_V9_ASCAN_sh = $(CONFIG_SHELL) $(PK_GUN_GCC_V9_ASCAN_SCRIPTS) \
                 $1X \
                 $(PK_GUN_GCC_V9_ASCAN_NAME)X \
                 $(PK_GUN_GCC_V9_ASCAN_VERSION)X \
                 $(PK_GUN_GCC_V9_ASCAN_SITE)X \
                 $(PK_GUN_GCC_V9_ASCAN_GITHUB)X \
                 $(PK_GUN_GCC_V9_ASCAN_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_GUN_GCC_V9_ASCAN_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_GUN_GCC_V9_ASCAN_SUBNAME)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASCAN_CONFIG)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASCAN_LIBPATH)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASCAN_CPPFLAGS)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASCAN_DPKCONFIG)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASCAN_CFLAGS)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASCAN_LDFLAGS)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASCAN_CXXFLAGS)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASCAN_ASFLAGS)X \
                 $(PK_GUN_GCC_V9_ASCAN_BSBIT)X \
                 $(PK_GUN_GCC_V9_ASCAN_BUILDARCH)X \
		 $(PK_GUN_GCC_V9_ASCAN_CSRCFILE)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASCAN_SRCFILE)X \
                 $(CONFIG_PK_GUN_GCC_V9_ASCAN_CSRCFILE)

$(PK_GUN_GCC_V9_ASCAN_DIR)/build: FORCE
	$(Q)$(call PK_GUN_GCC_V9_ASCAN_sh,$(srctree))
