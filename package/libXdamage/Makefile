################################################
#
# libXdamage
#
################################################
PK_LIBXDAMAGE_NAME        := libXdamage
PK_LIBXDAMAGE_VERSION     := $(CONFIG_PK_LIBXDAMAGE_VERSION)
PK_LIBXDAMAGE_SITE        := $(CONFIG_PK_LIBXDAMAGE_URL)
PK_LIBXDAMAGE_GITHUB      := $(CONFIG_PK_LIBXDAMAGE_GITHUB)
PK_LIBXDAMAGE_SUBNAME     :=
PK_LIBXDAMAGE_BUILDARCH   := $(CONFIG_PK_LIBXDAMAGE_BUILDARCH)
PK_LIBXDAMAGE_DIR         := $(srctree)/package/libXdamage
PK_LIBXDAMAGE_PATCH       := $(PK_LIBXDAMAGE_DIR)/patch
PK_LIBXDAMAGE_BSBIT       := libXdamage-$(PK_LIBXDAMAGE_VERSION).bsbit
PK_LIBXDAMAGE_OUT         :=
PK_LIBXDAMAGE_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LIBXDAMAGE_TAR         := $(CONFIG_PK_LIBXDAMAGE_TAR)
PK_LIBXDAMAGE_PACKAGE     :=
PK_LIBXDAMAGE_CONFIG      := $(CONFIG_PK_LIBXDAMAGE_CONFIG)
SUB_TARGET                += $(PK_LIBXDAMAGE_DIR)/build

PK_LIBXDAMAGE_sh = $(CONFIG_SHELL) $(PK_LIBXDAMAGE_SCRIPTS) \
                 $1X \
                 $(PK_LIBXDAMAGE_NAME)X \
                 $(PK_LIBXDAMAGE_VERSION)X \
                 $(PK_LIBXDAMAGE_SITE)X \
                 $(PK_LIBXDAMAGE_GITHUB)X \
                 $(PK_LIBXDAMAGE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBXDAMAGE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBXDAMAGE_SUBNAME)X \
                 $(CONFIG_PK_LIBXDAMAGE_CONFIG)X \
                 $(CONFIG_PK_LIBXDAMAGE_LIBPATH)X \
                 $(CONFIG_PK_LIBXDAMAGE_CPPFLAGS)X \
                 $(CONFIG_PK_LIBXDAMAGE_DPKCONFIG)X \
                 $(CONFIG_PK_LIBXDAMAGE_CFLAGS)X \
                 $(CONFIG_PK_LIBXDAMAGE_LDFLAGS)X \
                 $(CONFIG_PK_LIBXDAMAGE_CXXFLAGS)X \
                 $(CONFIG_PK_LIBXDAMAGE_ASFLAGS)X \
                 $(PK_LIBXDAMAGE_BSBIT)X \
                 $(PK_LIBXDAMAGE_BUILDARCH)X

$(PK_LIBXDAMAGE_DIR)/build: FORCE
	$(Q)$(call PK_LIBXDAMAGE_sh,$(srctree))
