################################################
#
# BiscuitOS-crash
#
################################################
PK_CRASH_NAME        := BiscuitOS-crash
PK_CRASH_VERSION     := $(CONFIG_PK_CRASH_VERSION)
PK_CRASH_SITE        := $(CONFIG_PK_CRASH_URL)
PK_CRASH_GITHUB      := $(CONFIG_PK_CRASH_GITHUB)
PK_CRASH_SUBNAME     :=
PK_CRASH_BUILDARCH   := $(CONFIG_PK_CRASH_BUILDARCH)
PK_CRASH_DIR         := $(srctree)/package/crash
PK_CRASH_PATCH       := $(PK_CRASH_DIR)/patch
PK_CRASH_BSBIT       := BiscuitOS-crash-$(PK_CRASH_VERSION).bsbit
PK_CRASH_OUT         :=
PK_CRASH_SCRIPTS     := $(srctree)/scripts/package/package-crash.sh
PK_CRASH_TAR         := $(CONFIG_PK_CRASH_TAR)
PK_CRASH_PACKAGE     :=
PK_CRASH_CONFIG      := $(CONFIG_PK_CRASH_CONFIG)
SUB_TARGET            += $(PK_CRASH_DIR)/build

PK_CRASH_sh = $(CONFIG_SHELL) $(PK_CRASH_SCRIPTS) \
                 $1X \
                 $(PK_CRASH_NAME)X \
                 $(PK_CRASH_VERSION)X \
                 $(PK_CRASH_SITE)X \
                 $(PK_CRASH_GITHUB)X \
                 $(PK_CRASH_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CRASH_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CRASH_SUBNAME)X \
                 $(CONFIG_PK_CRASH_CONFIG)X \
                 $(CONFIG_PK_CRASH_LIBPATH)X \
                 $(CONFIG_PK_CRASH_CPPFLAGS)X \
                 $(CONFIG_PK_CRASH_DPKCONFIG)X \
                 $(CONFIG_PK_CRASH_CFLAGS)X \
                 $(CONFIG_PK_CRASH_LDFLAGS)X \
                 $(CONFIG_PK_CRASH_CXXFLAGS)X \
                 $(CONFIG_PK_CRASH_ASFLAGS)X \
                 $(PK_CRASH_BSBIT)X \
                 $(PK_CRASH_BUILDARCH)X

$(PK_CRASH_DIR)/build: FORCE
	$(Q)$(call PK_CRASH_sh,$(srctree))
