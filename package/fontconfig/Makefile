################################################
#
# fontconfig
#
################################################
PK_FONTCONFIG_NAME        := fontconfig
PK_FONTCONFIG_VERSION     := $(CONFIG_PK_FONTCONFIG_VERSION)
PK_FONTCONFIG_SITE        := $(CONFIG_PK_FONTCONFIG_URL)
PK_FONTCONFIG_GITHUB      := $(CONFIG_PK_FONTCONFIG_GITHUB)
PK_FONTCONFIG_SUBNAME     :=
PK_FONTCONFIG_BUILDARCH   := $(CONFIG_PK_FONTCONFIG_BUILDARCH)
PK_FONTCONFIG_DIR         := $(srctree)/package/fontconfig
PK_FONTCONFIG_PATCH       := $(PK_FONTCONFIG_DIR)/patch
PK_FONTCONFIG_BSBIT       := fontconfig-$(PK_FONTCONFIG_VERSION).bsbit
PK_FONTCONFIG_OUT         :=
PK_FONTCONFIG_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_FONTCONFIG_TAR         := $(CONFIG_PK_FONTCONFIG_TAR)
PK_FONTCONFIG_PACKAGE     :=
PK_FONTCONFIG_CONFIG      := $(CONFIG_PK_FONTCONFIG_CONFIG)
SUB_TARGET                += $(PK_FONTCONFIG_DIR)/build

PK_FONTCONFIG_sh = $(CONFIG_SHELL) $(PK_FONTCONFIG_SCRIPTS) \
                 $1X \
                 $(PK_FONTCONFIG_NAME)X \
                 $(PK_FONTCONFIG_VERSION)X \
                 $(PK_FONTCONFIG_SITE)X \
                 $(PK_FONTCONFIG_GITHUB)X \
                 $(PK_FONTCONFIG_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_FONTCONFIG_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_FONTCONFIG_SUBNAME)X \
                 $(CONFIG_PK_FONTCONFIG_CONFIG)X \
                 $(CONFIG_PK_FONTCONFIG_LIBPATH)X \
                 $(CONFIG_PK_FONTCONFIG_CPPFLAGS)X \
                 $(CONFIG_PK_FONTCONFIG_DPKCONFIG)X \
                 $(CONFIG_PK_FONTCONFIG_CFLAGS)X \
                 $(CONFIG_PK_FONTCONFIG_LDFLAGS)X \
                 $(CONFIG_PK_FONTCONFIG_CXXFLAGS)X \
                 $(CONFIG_PK_FONTCONFIG_ASFLAGS)X \
                 $(PK_FONTCONFIG_BSBIT)X \
                 $(PK_FONTCONFIG_BUILDARCH)X

$(PK_FONTCONFIG_DIR)/build: FORCE
	$(Q)$(call PK_FONTCONFIG_sh,$(srctree))
