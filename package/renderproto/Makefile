################################################
#
# renderproto
#
################################################
PK_RENDERPROTO_NAME        := renderproto
PK_RENDERPROTO_VERSION     := $(CONFIG_PK_RENDERPROTO_VERSION)
PK_RENDERPROTO_SITE        := $(CONFIG_PK_RENDERPROTO_URL)
PK_RENDERPROTO_GITHUB      := $(CONFIG_PK_RENDERPROTO_GITHUB)
PK_RENDERPROTO_SUBNAME     :=
PK_RENDERPROTO_BUILDARCH   := $(CONFIG_PK_RENDERPROTO_BUILDARCH)
PK_RENDERPROTO_DIR         := $(srctree)/package/renderproto
PK_RENDERPROTO_PATCH       := $(PK_RENDERPROTO_DIR)/patch
PK_RENDERPROTO_BSBIT       := renderproto-$(PK_RENDERPROTO_VERSION).bsbit
PK_RENDERPROTO_OUT         :=
PK_RENDERPROTO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_RENDERPROTO_TAR         := $(CONFIG_PK_RENDERPROTO_TAR)
PK_RENDERPROTO_PACKAGE     :=
PK_RENDERPROTO_CONFIG      := $(CONFIG_PK_RENDERPROTO_CONFIG)
SUB_TARGET                 += $(PK_RENDERPROTO_DIR)/build

PK_RENDERPROTO_sh = $(CONFIG_SHELL) $(PK_RENDERPROTO_SCRIPTS) \
                 $1X \
                 $(PK_RENDERPROTO_NAME)X \
                 $(PK_RENDERPROTO_VERSION)X \
                 $(PK_RENDERPROTO_SITE)X \
                 $(PK_RENDERPROTO_GITHUB)X \
                 $(PK_RENDERPROTO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_RENDERPROTO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_RENDERPROTO_SUBNAME)X \
                 $(CONFIG_PK_RENDERPROTO_CONFIG)X \
                 $(CONFIG_PK_RENDERPROTO_LIBPATH)X \
                 $(CONFIG_PK_RENDERPROTO_CPPFLAGS)X \
                 $(CONFIG_PK_RENDERPROTO_DPKCONFIG)X \
                 $(CONFIG_PK_RENDERPROTO_CFLAGS)X \
                 $(CONFIG_PK_RENDERPROTO_LDFLAGS)X \
                 $(CONFIG_PK_RENDERPROTO_CXXFLAGS)X \
                 $(CONFIG_PK_RENDERPROTO_ASFLAGS)X \
                 $(PK_RENDERPROTO_BSBIT)X \
                 $(PK_RENDERPROTO_BUILDARCH)X

$(PK_RENDERPROTO_DIR)/build: FORCE
	$(Q)$(call PK_RENDERPROTO_sh,$(srctree))
