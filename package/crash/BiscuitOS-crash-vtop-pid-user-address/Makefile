################################################
#
# BiscuitOS-crash-vtop-pid-user-address
#
################################################
PK_CRASH_VTOP_U_PID_NAME        := BiscuitOS-crash-vtop-pid-user-address
PK_CRASH_VTOP_U_PID_VERSION     := $(CONFIG_PK_CRASH_VTOP_U_PID_VERSION)
PK_CRASH_VTOP_U_PID_SITE        := $(CONFIG_PK_CRASH_VTOP_U_PID_URL)
PK_CRASH_VTOP_U_PID_GITHUB      := $(CONFIG_PK_CRASH_VTOP_U_PID_GITHUB)
PK_CRASH_VTOP_U_PID_SUBNAME     :=
PK_CRASH_VTOP_U_PID_BUILDARCH   := $(CONFIG_PK_CRASH_VTOP_U_PID_BUILDARCH)
PK_CRASH_VTOP_U_PID_DIR         := $(srctree)/package/crash/BiscuitOS-crash-vtop-pid-user-address
PK_CRASH_VTOP_U_PID_PATCH       := $(PK_CRASH_VTOP_U_PID_DIR)/patch
PK_CRASH_VTOP_U_PID_BSBIT       := BiscuitOS-crash-vtop-pid-user-address-$(PK_CRASH_VTOP_U_PID_VERSION).bsbit
PK_CRASH_VTOP_U_PID_OUT         :=
PK_CRASH_VTOP_U_PID_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_CRASH_VTOP_U_PID_TAR         := $(CONFIG_PK_CRASH_VTOP_U_PID_TAR)
PK_CRASH_VTOP_U_PID_PACKAGE     :=
PK_CRASH_VTOP_U_PID_CONFIG      := $(CONFIG_PK_CRASH_VTOP_U_PID_CONFIG)
SUB_TARGET                  += $(PK_CRASH_VTOP_U_PID_DIR)/build

PK_CRASH_VTOP_U_PID_sh = $(CONFIG_SHELL) $(PK_CRASH_VTOP_U_PID_SCRIPTS) \
                 $1X \
                 $(PK_CRASH_VTOP_U_PID_NAME)X \
                 $(PK_CRASH_VTOP_U_PID_VERSION)X \
                 $(PK_CRASH_VTOP_U_PID_SITE)X \
                 $(PK_CRASH_VTOP_U_PID_GITHUB)X \
                 $(PK_CRASH_VTOP_U_PID_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CRASH_VTOP_U_PID_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CRASH_VTOP_U_PID_SUBNAME)X \
                 $(CONFIG_PK_CRASH_VTOP_U_PID_CONFIG)X \
                 $(CONFIG_PK_CRASH_VTOP_U_PID_LIBPATH)X \
                 $(CONFIG_PK_CRASH_VTOP_U_PID_CPPFLAGS)X \
                 $(CONFIG_PK_CRASH_VTOP_U_PID_DPKCONFIG)X \
                 $(CONFIG_PK_CRASH_VTOP_U_PID_CFLAGS)X \
                 $(CONFIG_PK_CRASH_VTOP_U_PID_LDFLAGS)X \
                 $(CONFIG_PK_CRASH_VTOP_U_PID_CXXFLAGS)X \
                 $(CONFIG_PK_CRASH_VTOP_U_PID_ASFLAGS)X \
                 $(PK_CRASH_VTOP_U_PID_BSBIT)X \
                 $(PK_CRASH_VTOP_U_PID_BUILDARCH)X \
		 $(PK_CRASH_VTOP_U_PID_CSRCFILE)X \
                 $(CONFIG_PK_CRASH_VTOP_U_PID_SRCFILE)X \
                 $(CONFIG_PK_CRASH_VTOP_U_PID_CSRCFILE)

$(PK_CRASH_VTOP_U_PID_DIR)/build: FORCE
	$(Q)$(call PK_CRASH_VTOP_U_PID_sh,$(srctree))
