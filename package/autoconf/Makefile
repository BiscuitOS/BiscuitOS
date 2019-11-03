################################################
#
# autoconf
#
################################################
PK_AUTOCONF_NAME        := autoconf
PK_AUTOCONF_VERSION     := $(CONFIG_PK_AUTOCONF_VERSION)
PK_AUTOCONF_SITE        := $(CONFIG_PK_AUTOCONF_URL)
PK_AUTOCONF_GITHUB      := $(CONFIG_PK_AUTOCONF_GITHUB)
PK_AUTOCONF_SUBNAME     :=
PK_AUTOCONF_BUILDARCH   := $(CONFIG_PK_AUTOCONF_BUILDARCH)
PK_AUTOCONF_DIR         := $(srctree)/package/autoconf
PK_AUTOCONF_PATCH       := $(PK_AUTOCONF_DIR)/patch
PK_AUTOCONF_BSBIT       := autoconf-$(PK_AUTOCONF_VERSION).bsbit
PK_AUTOCONF_OUT         :=
PK_AUTOCONF_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_AUTOCONF_TAR         := $(CONFIG_PK_AUTOCONF_TAR)
PK_AUTOCONF_PACKAGE     :=
PK_AUTOCONF_CONFIG      := $(CONFIG_PK_AUTOCONF_CONFIG)
SUB_TARGET              += $(PK_AUTOCONF_DIR)/build

PK_AUTOCONF_sh = $(CONFIG_SHELL) $(PK_AUTOCONF_SCRIPTS) \
                 $1X \
                 $(PK_AUTOCONF_NAME)X \
                 $(PK_AUTOCONF_VERSION)X \
                 $(PK_AUTOCONF_SITE)X \
                 $(PK_AUTOCONF_GITHUB)X \
                 $(PK_AUTOCONF_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_AUTOCONF_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_AUTOCONF_SUBNAME)X \
                 $(CONFIG_PK_AUTOCONF_CONFIG)X \
                 $(CONFIG_PK_AUTOCONF_LIBPATH)X \
                 $(CONFIG_PK_AUTOCONF_CPPFLAGS)X \
                 $(CONFIG_PK_AUTOCONF_DPKCONFIG)X \
                 $(CONFIG_PK_AUTOCONF_CFLAGS)X \
                 $(CONFIG_PK_AUTOCONF_LDFLAGS)X \
                 $(CONFIG_PK_AUTOCONF_CXXFLAGS)X \
                 $(CONFIG_PK_AUTOCONF_ASFLAGS)X \
                 $(PK_AUTOCONF_BSBIT)X \
                 $(PK_AUTOCONF_BUILDARCH)X

$(PK_AUTOCONF_DIR)/build: FORCE
	$(Q)$(call PK_AUTOCONF_sh,$(srctree))
