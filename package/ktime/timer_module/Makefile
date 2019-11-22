################################################
#
# timer_module
#
################################################
PK_TIMER_MOD_NAME        := timer_module
PK_TIMER_MOD_VERSION     := $(CONFIG_PK_TIMER_MOD_VERSION)
PK_TIMER_MOD_SITE        := $(CONFIG_PK_TIMER_MOD_URL)
PK_TIMER_MOD_GITHUB      := $(CONFIG_PK_TIMER_MOD_GITHUB)
PK_TIMER_MOD_SUBNAME     :=
PK_TIMER_MOD_BUILDARCH   := $(CONFIG_PK_TIMER_MOD_BUILDARCH)
PK_TIMER_MOD_DIR         := $(srctree)/package/ktime/timer_module
PK_TIMER_MOD_PATCH       := $(PK_TIMER_MOD_DIR)/patch
PK_TIMER_MOD_BSBIT       := timer_module-$(PK_TIMER_MOD_VERSION).bsbit
PK_TIMER_MOD_OUT         :=
PK_TIMER_MOD_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_TIMER_MOD_TAR         := $(CONFIG_PK_TIMER_MOD_TAR)
PK_TIMER_MOD_PACKAGE     :=
PK_TIMER_MOD_CONFIG      := $(CONFIG_PK_TIMER_MOD_CONFIG)
SUB_TARGET                  += $(PK_TIMER_MOD_DIR)/build

PK_TIMER_MOD_sh = $(CONFIG_SHELL) $(PK_TIMER_MOD_SCRIPTS) \
                 $1X \
                 $(PK_TIMER_MOD_NAME)X \
                 $(PK_TIMER_MOD_VERSION)X \
                 $(PK_TIMER_MOD_SITE)X \
                 $(PK_TIMER_MOD_GITHUB)X \
                 $(PK_TIMER_MOD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_TIMER_MOD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_TIMER_MOD_SUBNAME)X \
                 $(CONFIG_PK_TIMER_MOD_CONFIG)X \
                 $(CONFIG_PK_TIMER_MOD_LIBPATH)X \
                 $(CONFIG_PK_TIMER_MOD_CPPFLAGS)X \
                 $(CONFIG_PK_TIMER_MOD_DPKCONFIG)X \
                 $(CONFIG_PK_TIMER_MOD_CFLAGS)X \
                 $(CONFIG_PK_TIMER_MOD_LDFLAGS)X \
                 $(CONFIG_PK_TIMER_MOD_CXXFLAGS)X \
                 $(CONFIG_PK_TIMER_MOD_ASFLAGS)X \
                 $(PK_TIMER_MOD_BSBIT)X \
                 $(PK_TIMER_MOD_BUILDARCH)X \
		 $(PK_TIMER_MOD_CSRCFILE)X \
                 $(CONFIG_PK_TIMER_MOD_SRCFILE)X \
                 $(CONFIG_PK_TIMER_MOD_CSRCFILE)

$(PK_TIMER_MOD_DIR)/build: FORCE
	$(Q)$(call PK_TIMER_MOD_sh,$(srctree))
