################################################
#
# nettle
#
################################################
PK_NETTLE_NAME        := nettle
PK_NETTLE_VERSION     := $(CONFIG_PK_NETTLE_VERSION)
PK_NETTLE_SITE        := $(CONFIG_PK_NETTLE_URL)
PK_NETTLE_GITHUB      := $(CONFIG_PK_NETTLE_GITHUB)
PK_NETTLE_SUBNAME     :=
PK_NETTLE_BUILDARCH   := $(CONFIG_PK_NETTLE_BUILDARCH)
PK_NETTLE_DIR         := $(srctree)/package/nettle
PK_NETTLE_PATCH       := $(PK_NETTLE_DIR)/patch
PK_NETTLE_BSBIT       := nettle-$(PK_NETTLE_VERSION).bsbit
PK_NETTLE_OUT         :=
PK_NETTLE_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_NETTLE_TAR         := $(CONFIG_PK_NETTLE_TAR)
PK_NETTLE_PACKAGE     :=
PK_NETTLE_CONFIG      := $(CONFIG_PK_NETTLE_CONFIG)
SUB_TARGET            += $(PK_NETTLE_DIR)/build

PK_NETTLE_sh = $(CONFIG_SHELL) $(PK_NETTLE_SCRIPTS) \
                 $1X \
                 $(PK_NETTLE_NAME)X \
                 $(PK_NETTLE_VERSION)X \
                 $(PK_NETTLE_SITE)X \
                 $(PK_NETTLE_GITHUB)X \
                 $(PK_NETTLE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NETTLE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NETTLE_SUBNAME)X \
                 $(CONFIG_PK_NETTLE_CONFIG)X \
                 $(CONFIG_PK_NETTLE_LIBPATH)X \
                 $(CONFIG_PK_NETTLE_CPPFLAGS)X \
                 $(CONFIG_PK_NETTLE_DPKCONFIG)X \
                 $(CONFIG_PK_NETTLE_CFLAGS)X \
                 $(CONFIG_PK_NETTLE_LDFLAGS)X \
                 $(CONFIG_PK_NETTLE_CXXFLAGS)X \
                 $(CONFIG_PK_NETTLE_ASFLAGS)X \
                 $(PK_NETTLE_BSBIT)X \
                 $(PK_NETTLE_BUILDARCH)X

$(PK_NETTLE_DIR)/build: FORCE
	$(Q)$(call PK_NETTLE_sh,$(srctree))
