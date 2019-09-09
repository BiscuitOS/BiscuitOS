################################################
#
# fontsproto
#
################################################
PK_FONTSPROTO_NAME        := fontsproto
PK_FONTSPROTO_VERSION     := $(CONFIG_PK_FONTSPROTO_VERSION)
PK_FONTSPROTO_SITE        := $(CONFIG_PK_FONTSPROTO_URL)
PK_FONTSPROTO_GITHUB      := $(CONFIG_PK_FONTSPROTO_GITHUB)
PK_FONTSPROTO_SUBNAME     :=
PK_FONTSPROTO_BUILDARCH   := $(CONFIG_PK_FONTSPROTO_BUILDARCH)
PK_FONTSPROTO_DIR         := $(srctree)/package/fontsproto
PK_FONTSPROTO_PATCH       := $(PK_FONTSPROTO_DIR)/patch
PK_FONTSPROTO_BSBIT       := fontsproto-$(PK_FONTSPROTO_VERSION).bsbit
PK_FONTSPROTO_OUT         :=
PK_FONTSPROTO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_FONTSPROTO_TAR         := $(CONFIG_PK_FONTSPROTO_TAR)
PK_FONTSPROTO_PACKAGE     :=
PK_FONTSPROTO_CONFIG      := $(CONFIG_PK_FONTSPROTO_CONFIG)
SUB_TARGET                += $(PK_FONTSPROTO_DIR)/build

PK_FONTSPROTO_sh = $(CONFIG_SHELL) $(PK_FONTSPROTO_SCRIPTS) \
                 $1X \
                 $(PK_FONTSPROTO_NAME)X \
                 $(PK_FONTSPROTO_VERSION)X \
                 $(PK_FONTSPROTO_SITE)X \
                 $(PK_FONTSPROTO_GITHUB)X \
                 $(PK_FONTSPROTO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_FONTSPROTO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_FONTSPROTO_SUBNAME)X \
                 $(CONFIG_PK_FONTSPROTO_CONFIG)X \
                 $(CONFIG_PK_FONTSPROTO_LIBPATH)X \
                 $(CONFIG_PK_FONTSPROTO_CPPFLAGS)X \
                 $(CONFIG_PK_FONTSPROTO_DPKCONFIG)X \
                 $(CONFIG_PK_FONTSPROTO_CFLAGS)X \
                 $(CONFIG_PK_FONTSPROTO_LDFLAGS)X \
                 $(CONFIG_PK_FONTSPROTO_CXXFLAGS)X \
                 $(CONFIG_PK_FONTSPROTO_ASFLAGS)X \
                 $(PK_FONTSPROTO_BSBIT)X \
                 $(PK_FONTSPROTO_BUILDARCH)X

$(PK_FONTSPROTO_DIR)/build: FORCE
	$(Q)$(call PK_FONTSPROTO_sh,$(srctree))
