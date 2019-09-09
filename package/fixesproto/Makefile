################################################
#
# fixesproto
#
################################################
PK_FIXESPROTO_NAME        := fixesproto
PK_FIXESPROTO_VERSION     := $(CONFIG_PK_FIXESPROTO_VERSION)
PK_FIXESPROTO_SITE        := $(CONFIG_PK_FIXESPROTO_URL)
PK_FIXESPROTO_GITHUB      := $(CONFIG_PK_FIXESPROTO_GITHUB)
PK_FIXESPROTO_SUBNAME     :=
PK_FIXESPROTO_BUILDARCH   := $(CONFIG_PK_FIXESPROTO_BUILDARCH)
PK_FIXESPROTO_DIR         := $(srctree)/package/fixesproto
PK_FIXESPROTO_PATCH       := $(PK_FIXESPROTO_DIR)/patch
PK_FIXESPROTO_BSBIT       := fixesproto-$(PK_FIXESPROTO_VERSION).bsbit
PK_FIXESPROTO_OUT         :=
PK_FIXESPROTO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_FIXESPROTO_TAR         := $(CONFIG_PK_FIXESPROTO_TAR)
PK_FIXESPROTO_PACKAGE     :=
PK_FIXESPROTO_CONFIG      := $(CONFIG_PK_FIXESPROTO_CONFIG)
SUB_TARGET                += $(PK_FIXESPROTO_DIR)/build

PK_FIXESPROTO_sh = $(CONFIG_SHELL) $(PK_FIXESPROTO_SCRIPTS) \
                 $1X \
                 $(PK_FIXESPROTO_NAME)X \
                 $(PK_FIXESPROTO_VERSION)X \
                 $(PK_FIXESPROTO_SITE)X \
                 $(PK_FIXESPROTO_GITHUB)X \
                 $(PK_FIXESPROTO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_FIXESPROTO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_FIXESPROTO_SUBNAME)X \
                 $(CONFIG_PK_FIXESPROTO_CONFIG)X \
                 $(CONFIG_PK_FIXESPROTO_LIBPATH)X \
                 $(CONFIG_PK_FIXESPROTO_CPPFLAGS)X \
                 $(CONFIG_PK_FIXESPROTO_DPKCONFIG)X \
                 $(CONFIG_PK_FIXESPROTO_CFLAGS)X \
                 $(CONFIG_PK_FIXESPROTO_LDFLAGS)X \
                 $(CONFIG_PK_FIXESPROTO_CXXFLAGS)X \
                 $(CONFIG_PK_FIXESPROTO_ASFLAGS)X \
                 $(PK_FIXESPROTO_BSBIT)X \
                 $(PK_FIXESPROTO_BUILDARCH)X

$(PK_FIXESPROTO_DIR)/build: FORCE
	$(Q)$(call PK_FIXESPROTO_sh,$(srctree))
