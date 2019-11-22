################################################
#
# ktime_get_ts64
#
################################################
PK_KTIME_GET_TS64_NAME        := ktime_get_ts64
PK_KTIME_GET_TS64_VERSION     := $(CONFIG_PK_KTIME_GET_TS64_VERSION)
PK_KTIME_GET_TS64_SITE        := $(CONFIG_PK_KTIME_GET_TS64_URL)
PK_KTIME_GET_TS64_GITHUB      := $(CONFIG_PK_KTIME_GET_TS64_GITHUB)
PK_KTIME_GET_TS64_SUBNAME     :=
PK_KTIME_GET_TS64_BUILDARCH   := $(CONFIG_PK_KTIME_GET_TS64_BUILDARCH)
PK_KTIME_GET_TS64_DIR         := $(srctree)/package/ktime/ktime_get_ts64
PK_KTIME_GET_TS64_PATCH       := $(PK_KTIME_GET_TS64_DIR)/patch
PK_KTIME_GET_TS64_BSBIT       := ktime_get_ts64-$(PK_KTIME_GET_TS64_VERSION).bsbit
PK_KTIME_GET_TS64_OUT         :=
PK_KTIME_GET_TS64_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_KTIME_GET_TS64_TAR         := $(CONFIG_PK_KTIME_GET_TS64_TAR)
PK_KTIME_GET_TS64_PACKAGE     :=
PK_KTIME_GET_TS64_CONFIG      := $(CONFIG_PK_KTIME_GET_TS64_CONFIG)
SUB_TARGET               += $(PK_KTIME_GET_TS64_DIR)/build

PK_KTIME_GET_TS64_sh = $(CONFIG_SHELL) $(PK_KTIME_GET_TS64_SCRIPTS) \
                 $1X \
                 $(PK_KTIME_GET_TS64_NAME)X \
                 $(PK_KTIME_GET_TS64_VERSION)X \
                 $(PK_KTIME_GET_TS64_SITE)X \
                 $(PK_KTIME_GET_TS64_GITHUB)X \
                 $(PK_KTIME_GET_TS64_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KTIME_GET_TS64_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KTIME_GET_TS64_SUBNAME)X \
                 $(CONFIG_PK_KTIME_GET_TS64_CONFIG)X \
                 $(CONFIG_PK_KTIME_GET_TS64_LIBPATH)X \
                 $(CONFIG_PK_KTIME_GET_TS64_CPPFLAGS)X \
                 $(CONFIG_PK_KTIME_GET_TS64_DPKCONFIG)X \
                 $(CONFIG_PK_KTIME_GET_TS64_CFLAGS)X \
                 $(CONFIG_PK_KTIME_GET_TS64_LDFLAGS)X \
                 $(CONFIG_PK_KTIME_GET_TS64_CXXFLAGS)X \
                 $(CONFIG_PK_KTIME_GET_TS64_ASFLAGS)X \
                 $(PK_KTIME_GET_TS64_BSBIT)X \
                 $(PK_KTIME_GET_TS64_BUILDARCH)X \
		 $(PK_KTIME_GET_TS64_CSRCFILE)X \
                 $(CONFIG_PK_KTIME_GET_TS64_SRCFILE)X \
                 $(CONFIG_PK_KTIME_GET_TS64_CSRCFILE)

$(PK_KTIME_GET_TS64_DIR)/build: FORCE
	$(Q)$(call PK_KTIME_GET_TS64_sh,$(srctree))
