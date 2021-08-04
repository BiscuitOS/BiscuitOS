################################################
#
# BiscuitOS-crash-ptov
#
################################################
PK_CRASH_PTOV_NAME        := BiscuitOS-crash-ptov
PK_CRASH_PTOV_VERSION     := $(CONFIG_PK_CRASH_PTOV_VERSION)
PK_CRASH_PTOV_SITE        := $(CONFIG_PK_CRASH_PTOV_URL)
PK_CRASH_PTOV_GITHUB      := $(CONFIG_PK_CRASH_PTOV_GITHUB)
PK_CRASH_PTOV_SUBNAME     :=
PK_CRASH_PTOV_BUILDARCH   := $(CONFIG_PK_CRASH_PTOV_BUILDARCH)
PK_CRASH_PTOV_DIR         := $(srctree)/package/crash/BiscuitOS-crash-ptov
PK_CRASH_PTOV_PATCH       := $(PK_CRASH_PTOV_DIR)/patch
PK_CRASH_PTOV_BSBIT       := BiscuitOS-crash-ptov-$(PK_CRASH_PTOV_VERSION).bsbit
PK_CRASH_PTOV_OUT         :=
PK_CRASH_PTOV_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_CRASH_PTOV_TAR         := $(CONFIG_PK_CRASH_PTOV_TAR)
PK_CRASH_PTOV_PACKAGE     :=
PK_CRASH_PTOV_CONFIG      := $(CONFIG_PK_CRASH_PTOV_CONFIG)
SUB_TARGET                  += $(PK_CRASH_PTOV_DIR)/build

PK_CRASH_PTOV_sh = $(CONFIG_SHELL) $(PK_CRASH_PTOV_SCRIPTS) \
                 $1X \
                 $(PK_CRASH_PTOV_NAME)X \
                 $(PK_CRASH_PTOV_VERSION)X \
                 $(PK_CRASH_PTOV_SITE)X \
                 $(PK_CRASH_PTOV_GITHUB)X \
                 $(PK_CRASH_PTOV_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CRASH_PTOV_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CRASH_PTOV_SUBNAME)X \
                 $(CONFIG_PK_CRASH_PTOV_CONFIG)X \
                 $(CONFIG_PK_CRASH_PTOV_LIBPATH)X \
                 $(CONFIG_PK_CRASH_PTOV_CPPFLAGS)X \
                 $(CONFIG_PK_CRASH_PTOV_DPKCONFIG)X \
                 $(CONFIG_PK_CRASH_PTOV_CFLAGS)X \
                 $(CONFIG_PK_CRASH_PTOV_LDFLAGS)X \
                 $(CONFIG_PK_CRASH_PTOV_CXXFLAGS)X \
                 $(CONFIG_PK_CRASH_PTOV_ASFLAGS)X \
                 $(PK_CRASH_PTOV_BSBIT)X \
                 $(PK_CRASH_PTOV_BUILDARCH)X \
		 $(PK_CRASH_PTOV_CSRCFILE)X \
                 $(CONFIG_PK_CRASH_PTOV_SRCFILE)X \
                 $(CONFIG_PK_CRASH_PTOV_CSRCFILE)

$(PK_CRASH_PTOV_DIR)/build: FORCE
	$(Q)$(call PK_CRASH_PTOV_sh,$(srctree))
