################################################
#
# BiscuitOS-crash-vtop-kernel-address
#
################################################
PK_CRASH_VTOP_K_NAME        := BiscuitOS-crash-vtop-kernel-address
PK_CRASH_VTOP_K_VERSION     := $(CONFIG_PK_CRASH_VTOP_K_VERSION)
PK_CRASH_VTOP_K_SITE        := $(CONFIG_PK_CRASH_VTOP_K_URL)
PK_CRASH_VTOP_K_GITHUB      := $(CONFIG_PK_CRASH_VTOP_K_GITHUB)
PK_CRASH_VTOP_K_SUBNAME     :=
PK_CRASH_VTOP_K_BUILDARCH   := $(CONFIG_PK_CRASH_VTOP_K_BUILDARCH)
PK_CRASH_VTOP_K_DIR         := $(srctree)/package/crash/BiscuitOS-crash-vtop-kernel-address
PK_CRASH_VTOP_K_PATCH       := $(PK_CRASH_VTOP_K_DIR)/patch
PK_CRASH_VTOP_K_BSBIT       := BiscuitOS-crash-vtop-kernel-address-$(PK_CRASH_VTOP_K_VERSION).bsbit
PK_CRASH_VTOP_K_OUT         :=
PK_CRASH_VTOP_K_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_CRASH_VTOP_K_TAR         := $(CONFIG_PK_CRASH_VTOP_K_TAR)
PK_CRASH_VTOP_K_PACKAGE     :=
PK_CRASH_VTOP_K_CONFIG      := $(CONFIG_PK_CRASH_VTOP_K_CONFIG)
SUB_TARGET                  += $(PK_CRASH_VTOP_K_DIR)/build

PK_CRASH_VTOP_K_sh = $(CONFIG_SHELL) $(PK_CRASH_VTOP_K_SCRIPTS) \
                 $1X \
                 $(PK_CRASH_VTOP_K_NAME)X \
                 $(PK_CRASH_VTOP_K_VERSION)X \
                 $(PK_CRASH_VTOP_K_SITE)X \
                 $(PK_CRASH_VTOP_K_GITHUB)X \
                 $(PK_CRASH_VTOP_K_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CRASH_VTOP_K_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CRASH_VTOP_K_SUBNAME)X \
                 $(CONFIG_PK_CRASH_VTOP_K_CONFIG)X \
                 $(CONFIG_PK_CRASH_VTOP_K_LIBPATH)X \
                 $(CONFIG_PK_CRASH_VTOP_K_CPPFLAGS)X \
                 $(CONFIG_PK_CRASH_VTOP_K_DPKCONFIG)X \
                 $(CONFIG_PK_CRASH_VTOP_K_CFLAGS)X \
                 $(CONFIG_PK_CRASH_VTOP_K_LDFLAGS)X \
                 $(CONFIG_PK_CRASH_VTOP_K_CXXFLAGS)X \
                 $(CONFIG_PK_CRASH_VTOP_K_ASFLAGS)X \
                 $(PK_CRASH_VTOP_K_BSBIT)X \
                 $(PK_CRASH_VTOP_K_BUILDARCH)X \
		 $(PK_CRASH_VTOP_K_CSRCFILE)X \
                 $(CONFIG_PK_CRASH_VTOP_K_SRCFILE)X \
                 $(CONFIG_PK_CRASH_VTOP_K_CSRCFILE)

$(PK_CRASH_VTOP_K_DIR)/build: FORCE
	$(Q)$(call PK_CRASH_VTOP_K_sh,$(srctree))
