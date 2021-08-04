################################################
#
# BiscuitOS-crash-btop
#
################################################
PK_CRASH_BTOP_NAME        := BiscuitOS-crash-btop
PK_CRASH_BTOP_VERSION     := $(CONFIG_PK_CRASH_BTOP_VERSION)
PK_CRASH_BTOP_SITE        := $(CONFIG_PK_CRASH_BTOP_URL)
PK_CRASH_BTOP_GITHUB      := $(CONFIG_PK_CRASH_BTOP_GITHUB)
PK_CRASH_BTOP_SUBNAME     :=
PK_CRASH_BTOP_BUILDARCH   := $(CONFIG_PK_CRASH_BTOP_BUILDARCH)
PK_CRASH_BTOP_DIR         := $(srctree)/package/crash/BiscuitOS-crash-btop
PK_CRASH_BTOP_PATCH       := $(PK_CRASH_BTOP_DIR)/patch
PK_CRASH_BTOP_BSBIT       := BiscuitOS-crash-btop-$(PK_CRASH_BTOP_VERSION).bsbit
PK_CRASH_BTOP_OUT         :=
PK_CRASH_BTOP_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_CRASH_BTOP_TAR         := $(CONFIG_PK_CRASH_BTOP_TAR)
PK_CRASH_BTOP_PACKAGE     :=
PK_CRASH_BTOP_CONFIG      := $(CONFIG_PK_CRASH_BTOP_CONFIG)
SUB_TARGET                  += $(PK_CRASH_BTOP_DIR)/build

PK_CRASH_BTOP_sh = $(CONFIG_SHELL) $(PK_CRASH_BTOP_SCRIPTS) \
                 $1X \
                 $(PK_CRASH_BTOP_NAME)X \
                 $(PK_CRASH_BTOP_VERSION)X \
                 $(PK_CRASH_BTOP_SITE)X \
                 $(PK_CRASH_BTOP_GITHUB)X \
                 $(PK_CRASH_BTOP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CRASH_BTOP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CRASH_BTOP_SUBNAME)X \
                 $(CONFIG_PK_CRASH_BTOP_CONFIG)X \
                 $(CONFIG_PK_CRASH_BTOP_LIBPATH)X \
                 $(CONFIG_PK_CRASH_BTOP_CPPFLAGS)X \
                 $(CONFIG_PK_CRASH_BTOP_DPKCONFIG)X \
                 $(CONFIG_PK_CRASH_BTOP_CFLAGS)X \
                 $(CONFIG_PK_CRASH_BTOP_LDFLAGS)X \
                 $(CONFIG_PK_CRASH_BTOP_CXXFLAGS)X \
                 $(CONFIG_PK_CRASH_BTOP_ASFLAGS)X \
                 $(PK_CRASH_BTOP_BSBIT)X \
                 $(PK_CRASH_BTOP_BUILDARCH)X \
		 $(PK_CRASH_BTOP_CSRCFILE)X \
                 $(CONFIG_PK_CRASH_BTOP_SRCFILE)X \
                 $(CONFIG_PK_CRASH_BTOP_CSRCFILE)

$(PK_CRASH_BTOP_DIR)/build: FORCE
	$(Q)$(call PK_CRASH_BTOP_sh,$(srctree))
