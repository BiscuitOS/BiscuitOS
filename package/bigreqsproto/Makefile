################################################
#
# bigreqsproto
#
################################################
PK_BIGREQSPROTO_NAME        := bigreqsproto
PK_BIGREQSPROTO_VERSION     := $(CONFIG_PK_BIGREQSPROTO_VERSION)
PK_BIGREQSPROTO_SITE        := $(CONFIG_PK_BIGREQSPROTO_URL)
PK_BIGREQSPROTO_GITHUB      := $(CONFIG_PK_BIGREQSPROTO_GITHUB)
PK_BIGREQSPROTO_SUBNAME     :=
PK_BIGREQSPROTO_BUILDARCH   := $(CONFIG_PK_BIGREQSPROTO_BUILDARCH)
PK_BIGREQSPROTO_DIR         := $(srctree)/package/bigreqsproto
PK_BIGREQSPROTO_PATCH       := $(PK_BIGREQSPROTO_DIR)/patch
PK_BIGREQSPROTO_BSBIT       := bigreqsproto-$(PK_BIGREQSPROTO_VERSION).bsbit
PK_BIGREQSPROTO_OUT         :=
PK_BIGREQSPROTO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_BIGREQSPROTO_TAR         := $(CONFIG_PK_BIGREQSPROTO_TAR)
PK_BIGREQSPROTO_PACKAGE     :=
PK_BIGREQSPROTO_CONFIG      := $(CONFIG_PK_BIGREQSPROTO_CONFIG)
SUB_TARGET                  += $(PK_BIGREQSPROTO_DIR)/build

PK_BIGREQSPROTO_sh = $(CONFIG_SHELL) $(PK_BIGREQSPROTO_SCRIPTS) \
                 $1X \
                 $(PK_BIGREQSPROTO_NAME)X \
                 $(PK_BIGREQSPROTO_VERSION)X \
                 $(PK_BIGREQSPROTO_SITE)X \
                 $(PK_BIGREQSPROTO_GITHUB)X \
                 $(PK_BIGREQSPROTO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BIGREQSPROTO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BIGREQSPROTO_SUBNAME)X \
                 $(CONFIG_PK_BIGREQSPROTO_CONFIG)X \
                 $(CONFIG_PK_BIGREQSPROTO_LIBPATH)X \
                 $(CONFIG_PK_BIGREQSPROTO_CPPFLAGS)X \
                 $(CONFIG_PK_BIGREQSPROTO_DPKCONFIG)X \
                 $(CONFIG_PK_BIGREQSPROTO_CFLAGS)X \
                 $(CONFIG_PK_BIGREQSPROTO_LDFLAGS)X \
                 $(CONFIG_PK_BIGREQSPROTO_CXXFLAGS)X \
                 $(CONFIG_PK_BIGREQSPROTO_ASFLAGS)X \
                 $(PK_BIGREQSPROTO_BSBIT)X \
                 $(PK_BIGREQSPROTO_BUILDARCH)X

$(PK_BIGREQSPROTO_DIR)/build: FORCE
	$(Q)$(call PK_BIGREQSPROTO_sh,$(srctree))
