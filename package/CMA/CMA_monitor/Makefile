################################################
#
# CMA_monitor
#
################################################
PK_CMA_MONITOR_NAME        := CMA_monitor
PK_CMA_MONITOR_VERSION     := $(CONFIG_PK_CMA_MONITOR_VERSION)
PK_CMA_MONITOR_SITE        := $(CONFIG_PK_CMA_MONITOR_URL)
PK_CMA_MONITOR_GITHUB      := $(CONFIG_PK_CMA_MONITOR_GITHUB)
PK_CMA_MONITOR_SUBNAME     :=
PK_CMA_MONITOR_BUILDARCH   := $(CONFIG_PK_CMA_MONITOR_BUILDARCH)
PK_CMA_MONITOR_DIR         := $(srctree)/package/CMA/CMA_monitor
PK_CMA_MONITOR_PATCH       := $(PK_CMA_MONITOR_DIR)/patch
PK_CMA_MONITOR_BSBIT       := CMA_monitor-$(PK_CMA_MONITOR_VERSION).bsbit
PK_CMA_MONITOR_OUT         :=
PK_CMA_MONITOR_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_CMA_MONITOR_TAR         := $(CONFIG_PK_CMA_MONITOR_TAR)
PK_CMA_MONITOR_PACKAGE     :=
PK_CMA_MONITOR_CONFIG      := $(CONFIG_PK_CMA_MONITOR_CONFIG)
SUB_TARGET                  += $(PK_CMA_MONITOR_DIR)/build

PK_CMA_MONITOR_sh = $(CONFIG_SHELL) $(PK_CMA_MONITOR_SCRIPTS) \
                 $1X \
                 $(PK_CMA_MONITOR_NAME)X \
                 $(PK_CMA_MONITOR_VERSION)X \
                 $(PK_CMA_MONITOR_SITE)X \
                 $(PK_CMA_MONITOR_GITHUB)X \
                 $(PK_CMA_MONITOR_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CMA_MONITOR_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CMA_MONITOR_SUBNAME)X \
                 $(CONFIG_PK_CMA_MONITOR_CONFIG)X \
                 $(CONFIG_PK_CMA_MONITOR_LIBPATH)X \
                 $(CONFIG_PK_CMA_MONITOR_CPPFLAGS)X \
                 $(CONFIG_PK_CMA_MONITOR_DPKCONFIG)X \
                 $(CONFIG_PK_CMA_MONITOR_CFLAGS)X \
                 $(CONFIG_PK_CMA_MONITOR_LDFLAGS)X \
                 $(CONFIG_PK_CMA_MONITOR_CXXFLAGS)X \
                 $(CONFIG_PK_CMA_MONITOR_ASFLAGS)X \
                 $(PK_CMA_MONITOR_BSBIT)X \
                 $(PK_CMA_MONITOR_BUILDARCH)X \
		 $(PK_CMA_MONITOR_CSRCFILE)X \
                 $(CONFIG_PK_CMA_MONITOR_SRCFILE)X \
                 $(CONFIG_PK_CMA_MONITOR_CSRCFILE)

$(PK_CMA_MONITOR_DIR)/build: FORCE
	$(Q)$(call PK_CMA_MONITOR_sh,$(srctree))
