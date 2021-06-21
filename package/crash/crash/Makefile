################################################
#
# BiscuitOS-crash
#
################################################
PK_CRASH_TOOLS_NAME        := BiscuitOS-crash
PK_CRASH_TOOLS_VERSION     := $(CONFIG_PK_CRASH_TOOLS_VERSION)
PK_CRASH_TOOLS_SITE        := $(CONFIG_PK_CRASH_TOOLS_URL)
PK_CRASH_TOOLS_GITHUB      := $(CONFIG_PK_CRASH_TOOLS_GITHUB)
PK_CRASH_TOOLS_SUBNAME     :=
PK_CRASH_TOOLS_BUILDARCH   := $(CONFIG_PK_CRASH_TOOLS_BUILDARCH)
PK_CRASH_TOOLS_DIR         := $(srctree)/package/crash/crash
PK_CRASH_TOOLS_PATCH       := $(PK_CRASH_TOOLS_DIR)/patch
PK_CRASH_TOOLS_BSBIT       := BiscuitOS-crash-$(PK_CRASH_TOOLS_VERSION).bsbit
PK_CRASH_TOOLS_OUT         :=
PK_CRASH_TOOLS_SCRIPTS     := $(srctree)/scripts/package/package-crash.sh
PK_CRASH_TOOLS_TAR         := $(CONFIG_PK_CRASH_TOOLS_TAR)
PK_CRASH_TOOLS_PACKAGE     :=
PK_CRASH_TOOLS_CONFIG      := $(CONFIG_PK_CRASH_TOOLS_CONFIG)
SUB_TARGET            += $(PK_CRASH_TOOLS_DIR)/build

PK_CRASH_TOOLS_sh = $(CONFIG_SHELL) $(PK_CRASH_TOOLS_SCRIPTS) \
                 $1X \
                 $(PK_CRASH_TOOLS_NAME)X \
                 $(PK_CRASH_TOOLS_VERSION)X \
                 $(PK_CRASH_TOOLS_SITE)X \
                 $(PK_CRASH_TOOLS_GITHUB)X \
                 $(PK_CRASH_TOOLS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CRASH_TOOLS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CRASH_TOOLS_SUBNAME)X \
                 $(CONFIG_PK_CRASH_TOOLS_CONFIG)X \
                 $(CONFIG_PK_CRASH_TOOLS_LIBPATH)X \
                 $(CONFIG_PK_CRASH_TOOLS_CPPFLAGS)X \
                 $(CONFIG_PK_CRASH_TOOLS_DPKCONFIG)X \
                 $(CONFIG_PK_CRASH_TOOLS_CFLAGS)X \
                 $(CONFIG_PK_CRASH_TOOLS_LDFLAGS)X \
                 $(CONFIG_PK_CRASH_TOOLS_CXXFLAGS)X \
                 $(CONFIG_PK_CRASH_TOOLS_ASFLAGS)X \
                 $(PK_CRASH_TOOLS_BSBIT)X \
                 $(PK_CRASH_TOOLS_BUILDARCH)X

$(PK_CRASH_TOOLS_DIR)/build: FORCE
	$(Q)$(call PK_CRASH_TOOLS_sh,$(srctree))
