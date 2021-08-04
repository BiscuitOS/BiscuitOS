################################################
#
# BiscuitOS-crash-vtop-user-address
#
################################################
PK_CRASH_VTOP_U_NAME        := BiscuitOS-crash-vtop-user-address
PK_CRASH_VTOP_U_VERSION     := $(CONFIG_PK_CRASH_VTOP_U_VERSION)
PK_CRASH_VTOP_U_SITE        := $(CONFIG_PK_CRASH_VTOP_U_URL)
PK_CRASH_VTOP_U_GITHUB      := $(CONFIG_PK_CRASH_VTOP_U_GITHUB)
PK_CRASH_VTOP_U_SUBNAME     :=
PK_CRASH_VTOP_U_BUILDARCH   := $(CONFIG_PK_CRASH_VTOP_U_BUILDARCH)
PK_CRASH_VTOP_U_DIR         := $(srctree)/package/crash/BiscuitOS-crash-vtop-user-address
PK_CRASH_VTOP_U_PATCH       := $(PK_CRASH_VTOP_U_DIR)/patch
PK_CRASH_VTOP_U_BSBIT       := BiscuitOS-crash-vtop-user-address-$(PK_CRASH_VTOP_U_VERSION).bsbit
PK_CRASH_VTOP_U_OUT         :=
PK_CRASH_VTOP_U_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_CRASH_VTOP_U_TAR         := $(CONFIG_PK_CRASH_VTOP_U_TAR)
PK_CRASH_VTOP_U_PACKAGE     :=
PK_CRASH_VTOP_U_CONFIG      := $(CONFIG_PK_CRASH_VTOP_U_CONFIG)
SUB_TARGET                  += $(PK_CRASH_VTOP_U_DIR)/build

PK_CRASH_VTOP_U_sh = $(CONFIG_SHELL) $(PK_CRASH_VTOP_U_SCRIPTS) \
                 $1X \
                 $(PK_CRASH_VTOP_U_NAME)X \
                 $(PK_CRASH_VTOP_U_VERSION)X \
                 $(PK_CRASH_VTOP_U_SITE)X \
                 $(PK_CRASH_VTOP_U_GITHUB)X \
                 $(PK_CRASH_VTOP_U_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CRASH_VTOP_U_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CRASH_VTOP_U_SUBNAME)X \
                 $(CONFIG_PK_CRASH_VTOP_U_CONFIG)X \
                 $(CONFIG_PK_CRASH_VTOP_U_LIBPATH)X \
                 $(CONFIG_PK_CRASH_VTOP_U_CPPFLAGS)X \
                 $(CONFIG_PK_CRASH_VTOP_U_DPKCONFIG)X \
                 $(CONFIG_PK_CRASH_VTOP_U_CFLAGS)X \
                 $(CONFIG_PK_CRASH_VTOP_U_LDFLAGS)X \
                 $(CONFIG_PK_CRASH_VTOP_U_CXXFLAGS)X \
                 $(CONFIG_PK_CRASH_VTOP_U_ASFLAGS)X \
                 $(PK_CRASH_VTOP_U_BSBIT)X \
                 $(PK_CRASH_VTOP_U_BUILDARCH)X \
		 $(PK_CRASH_VTOP_U_CSRCFILE)X \
                 $(CONFIG_PK_CRASH_VTOP_U_SRCFILE)X \
                 $(CONFIG_PK_CRASH_VTOP_U_CSRCFILE)

$(PK_CRASH_VTOP_U_DIR)/build: FORCE
	$(Q)$(call PK_CRASH_VTOP_U_sh,$(srctree))
