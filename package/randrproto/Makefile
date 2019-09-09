################################################
#
# randrproto
#
################################################
PK_RANDRPROTO_NAME        := randrproto
PK_RANDRPROTO_VERSION     := $(CONFIG_PK_RANDRPROTO_VERSION)
PK_RANDRPROTO_SITE        := $(CONFIG_PK_RANDRPROTO_URL)
PK_RANDRPROTO_GITHUB      := $(CONFIG_PK_RANDRPROTO_GITHUB)
PK_RANDRPROTO_SUBNAME     :=
PK_RANDRPROTO_BUILDARCH   := $(CONFIG_PK_RANDRPROTO_BUILDARCH)
PK_RANDRPROTO_DIR         := $(srctree)/package/randrproto
PK_RANDRPROTO_PATCH       := $(PK_RANDRPROTO_DIR)/patch
PK_RANDRPROTO_BSBIT       := randrproto-$(PK_RANDRPROTO_VERSION).bsbit
PK_RANDRPROTO_OUT         :=
PK_RANDRPROTO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_RANDRPROTO_TAR         := $(CONFIG_PK_RANDRPROTO_TAR)
PK_RANDRPROTO_PACKAGE     :=
PK_RANDRPROTO_CONFIG      := $(CONFIG_PK_RANDRPROTO_CONFIG)
SUB_TARGET                += $(PK_RANDRPROTO_DIR)/build

PK_RANDRPROTO_sh = $(CONFIG_SHELL) $(PK_RANDRPROTO_SCRIPTS) \
                 $1X \
                 $(PK_RANDRPROTO_NAME)X \
                 $(PK_RANDRPROTO_VERSION)X \
                 $(PK_RANDRPROTO_SITE)X \
                 $(PK_RANDRPROTO_GITHUB)X \
                 $(PK_RANDRPROTO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_RANDRPROTO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_RANDRPROTO_SUBNAME)X \
                 $(CONFIG_PK_RANDRPROTO_CONFIG)X \
                 $(CONFIG_PK_RANDRPROTO_LIBPATH)X \
                 $(CONFIG_PK_RANDRPROTO_CPPFLAGS)X \
                 $(CONFIG_PK_RANDRPROTO_DPKCONFIG)X \
                 $(CONFIG_PK_RANDRPROTO_CFLAGS)X \
                 $(CONFIG_PK_RANDRPROTO_LDFLAGS)X \
                 $(CONFIG_PK_RANDRPROTO_CXXFLAGS)X \
                 $(CONFIG_PK_RANDRPROTO_ASFLAGS)X \
                 $(PK_RANDRPROTO_BSBIT)X \
                 $(PK_RANDRPROTO_BUILDARCH)X

$(PK_RANDRPROTO_DIR)/build: FORCE
	$(Q)$(call PK_RANDRPROTO_sh,$(srctree))
