################################################
#
# BiscuitOS-crash-list-common
#
################################################
PK_CRASH_LIST_NAME        := BiscuitOS-crash-list-common
PK_CRASH_LIST_VERSION     := $(CONFIG_PK_CRASH_LIST_VERSION)
PK_CRASH_LIST_SITE        := $(CONFIG_PK_CRASH_LIST_URL)
PK_CRASH_LIST_GITHUB      := $(CONFIG_PK_CRASH_LIST_GITHUB)
PK_CRASH_LIST_SUBNAME     :=
PK_CRASH_LIST_BUILDARCH   := $(CONFIG_PK_CRASH_LIST_BUILDARCH)
PK_CRASH_LIST_DIR         := $(srctree)/package/crash/BiscuitOS-crash-list-common
PK_CRASH_LIST_PATCH       := $(PK_CRASH_LIST_DIR)/patch
PK_CRASH_LIST_BSBIT       := BiscuitOS-crash-list-common-$(PK_CRASH_LIST_VERSION).bsbit
PK_CRASH_LIST_OUT         :=
PK_CRASH_LIST_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_CRASH_LIST_TAR         := $(CONFIG_PK_CRASH_LIST_TAR)
PK_CRASH_LIST_PACKAGE     :=
PK_CRASH_LIST_CONFIG      := $(CONFIG_PK_CRASH_LIST_CONFIG)
SUB_TARGET                  += $(PK_CRASH_LIST_DIR)/build

PK_CRASH_LIST_sh = $(CONFIG_SHELL) $(PK_CRASH_LIST_SCRIPTS) \
                 $1X \
                 $(PK_CRASH_LIST_NAME)X \
                 $(PK_CRASH_LIST_VERSION)X \
                 $(PK_CRASH_LIST_SITE)X \
                 $(PK_CRASH_LIST_GITHUB)X \
                 $(PK_CRASH_LIST_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CRASH_LIST_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CRASH_LIST_SUBNAME)X \
                 $(CONFIG_PK_CRASH_LIST_CONFIG)X \
                 $(CONFIG_PK_CRASH_LIST_LIBPATH)X \
                 $(CONFIG_PK_CRASH_LIST_CPPFLAGS)X \
                 $(CONFIG_PK_CRASH_LIST_DPKCONFIG)X \
                 $(CONFIG_PK_CRASH_LIST_CFLAGS)X \
                 $(CONFIG_PK_CRASH_LIST_LDFLAGS)X \
                 $(CONFIG_PK_CRASH_LIST_CXXFLAGS)X \
                 $(CONFIG_PK_CRASH_LIST_ASFLAGS)X \
                 $(PK_CRASH_LIST_BSBIT)X \
                 $(PK_CRASH_LIST_BUILDARCH)X \
		 $(PK_CRASH_LIST_CSRCFILE)X \
                 $(CONFIG_PK_CRASH_LIST_SRCFILE)X \
                 $(CONFIG_PK_CRASH_LIST_CSRCFILE)

$(PK_CRASH_LIST_DIR)/build: FORCE
	$(Q)$(call PK_CRASH_LIST_sh,$(srctree))
