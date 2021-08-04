################################################
#
# BiscuitOS-crash-ptob
#
################################################
PK_CRASH_PTOB_NAME        := BiscuitOS-crash-ptob
PK_CRASH_PTOB_VERSION     := $(CONFIG_PK_CRASH_PTOB_VERSION)
PK_CRASH_PTOB_SITE        := $(CONFIG_PK_CRASH_PTOB_URL)
PK_CRASH_PTOB_GITHUB      := $(CONFIG_PK_CRASH_PTOB_GITHUB)
PK_CRASH_PTOB_SUBNAME     :=
PK_CRASH_PTOB_BUILDARCH   := $(CONFIG_PK_CRASH_PTOB_BUILDARCH)
PK_CRASH_PTOB_DIR         := $(srctree)/package/crash/BiscuitOS-crash-ptob
PK_CRASH_PTOB_PATCH       := $(PK_CRASH_PTOB_DIR)/patch
PK_CRASH_PTOB_BSBIT       := BiscuitOS-crash-ptob-$(PK_CRASH_PTOB_VERSION).bsbit
PK_CRASH_PTOB_OUT         :=
PK_CRASH_PTOB_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_CRASH_PTOB_TAR         := $(CONFIG_PK_CRASH_PTOB_TAR)
PK_CRASH_PTOB_PACKAGE     :=
PK_CRASH_PTOB_CONFIG      := $(CONFIG_PK_CRASH_PTOB_CONFIG)
SUB_TARGET                  += $(PK_CRASH_PTOB_DIR)/build

PK_CRASH_PTOB_sh = $(CONFIG_SHELL) $(PK_CRASH_PTOB_SCRIPTS) \
                 $1X \
                 $(PK_CRASH_PTOB_NAME)X \
                 $(PK_CRASH_PTOB_VERSION)X \
                 $(PK_CRASH_PTOB_SITE)X \
                 $(PK_CRASH_PTOB_GITHUB)X \
                 $(PK_CRASH_PTOB_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CRASH_PTOB_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CRASH_PTOB_SUBNAME)X \
                 $(CONFIG_PK_CRASH_PTOB_CONFIG)X \
                 $(CONFIG_PK_CRASH_PTOB_LIBPATH)X \
                 $(CONFIG_PK_CRASH_PTOB_CPPFLAGS)X \
                 $(CONFIG_PK_CRASH_PTOB_DPKCONFIG)X \
                 $(CONFIG_PK_CRASH_PTOB_CFLAGS)X \
                 $(CONFIG_PK_CRASH_PTOB_LDFLAGS)X \
                 $(CONFIG_PK_CRASH_PTOB_CXXFLAGS)X \
                 $(CONFIG_PK_CRASH_PTOB_ASFLAGS)X \
                 $(PK_CRASH_PTOB_BSBIT)X \
                 $(PK_CRASH_PTOB_BUILDARCH)X \
		 $(PK_CRASH_PTOB_CSRCFILE)X \
                 $(CONFIG_PK_CRASH_PTOB_SRCFILE)X \
                 $(CONFIG_PK_CRASH_PTOB_CSRCFILE)

$(PK_CRASH_PTOB_DIR)/build: FORCE
	$(Q)$(call PK_CRASH_PTOB_sh,$(srctree))
