################################################
#
# BiscuitOS-crash-register-with-func-argument
#
################################################
PK_CRASH_FUNC_ARGS_NAME        := BiscuitOS-crash-register-with-func-argument
PK_CRASH_FUNC_ARGS_VERSION     := $(CONFIG_PK_CRASH_FUNC_ARGS_VERSION)
PK_CRASH_FUNC_ARGS_SITE        := $(CONFIG_PK_CRASH_FUNC_ARGS_URL)
PK_CRASH_FUNC_ARGS_GITHUB      := $(CONFIG_PK_CRASH_FUNC_ARGS_GITHUB)
PK_CRASH_FUNC_ARGS_SUBNAME     :=
PK_CRASH_FUNC_ARGS_BUILDARCH   := $(CONFIG_PK_CRASH_FUNC_ARGS_BUILDARCH)
PK_CRASH_FUNC_ARGS_DIR         := $(srctree)/package/crash/BiscuitOS-crash-register-with-func-argument
PK_CRASH_FUNC_ARGS_PATCH       := $(PK_CRASH_FUNC_ARGS_DIR)/patch
PK_CRASH_FUNC_ARGS_BSBIT       := BiscuitOS-crash-register-with-func-argument-$(PK_CRASH_FUNC_ARGS_VERSION).bsbit
PK_CRASH_FUNC_ARGS_OUT         :=
PK_CRASH_FUNC_ARGS_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_CRASH_FUNC_ARGS_TAR         := $(CONFIG_PK_CRASH_FUNC_ARGS_TAR)
PK_CRASH_FUNC_ARGS_PACKAGE     :=
PK_CRASH_FUNC_ARGS_CONFIG      := $(CONFIG_PK_CRASH_FUNC_ARGS_CONFIG)
SUB_TARGET                  += $(PK_CRASH_FUNC_ARGS_DIR)/build

PK_CRASH_FUNC_ARGS_sh = $(CONFIG_SHELL) $(PK_CRASH_FUNC_ARGS_SCRIPTS) \
                 $1X \
                 $(PK_CRASH_FUNC_ARGS_NAME)X \
                 $(PK_CRASH_FUNC_ARGS_VERSION)X \
                 $(PK_CRASH_FUNC_ARGS_SITE)X \
                 $(PK_CRASH_FUNC_ARGS_GITHUB)X \
                 $(PK_CRASH_FUNC_ARGS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CRASH_FUNC_ARGS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CRASH_FUNC_ARGS_SUBNAME)X \
                 $(CONFIG_PK_CRASH_FUNC_ARGS_CONFIG)X \
                 $(CONFIG_PK_CRASH_FUNC_ARGS_LIBPATH)X \
                 $(CONFIG_PK_CRASH_FUNC_ARGS_CPPFLAGS)X \
                 $(CONFIG_PK_CRASH_FUNC_ARGS_DPKCONFIG)X \
                 $(CONFIG_PK_CRASH_FUNC_ARGS_CFLAGS)X \
                 $(CONFIG_PK_CRASH_FUNC_ARGS_LDFLAGS)X \
                 $(CONFIG_PK_CRASH_FUNC_ARGS_CXXFLAGS)X \
                 $(CONFIG_PK_CRASH_FUNC_ARGS_ASFLAGS)X \
                 $(PK_CRASH_FUNC_ARGS_BSBIT)X \
                 $(PK_CRASH_FUNC_ARGS_BUILDARCH)X \
		 $(PK_CRASH_FUNC_ARGS_CSRCFILE)X \
                 $(CONFIG_PK_CRASH_FUNC_ARGS_SRCFILE)X \
                 $(CONFIG_PK_CRASH_FUNC_ARGS_CSRCFILE)

$(PK_CRASH_FUNC_ARGS_DIR)/build: FORCE
	$(Q)$(call PK_CRASH_FUNC_ARGS_sh,$(srctree))
