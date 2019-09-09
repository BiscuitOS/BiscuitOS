################################################
#
# xextproto
#
################################################
PK_XEXTPROTO_NAME        := xextproto
PK_XEXTPROTO_VERSION     := $(CONFIG_PK_XEXTPROTO_VERSION)
PK_XEXTPROTO_SITE        := $(CONFIG_PK_XEXTPROTO_URL)
PK_XEXTPROTO_GITHUB      := $(CONFIG_PK_XEXTPROTO_GITHUB)
PK_XEXTPROTO_SUBNAME     :=
PK_XEXTPROTO_BUILDARCH   := $(CONFIG_PK_XEXTPROTO_BUILDARCH)
PK_XEXTPROTO_DIR         := $(srctree)/package/xextproto
PK_XEXTPROTO_PATCH       := $(PK_XEXTPROTO_DIR)/patch
PK_XEXTPROTO_BSBIT       := xextproto-$(PK_XEXTPROTO_VERSION).bsbit
PK_XEXTPROTO_OUT         :=
PK_XEXTPROTO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_XEXTPROTO_TAR         := $(CONFIG_PK_XEXTPROTO_TAR)
PK_XEXTPROTO_PACKAGE     :=
PK_XEXTPROTO_CONFIG      := $(CONFIG_PK_XEXTPROTO_CONFIG)
SUB_TARGET               += $(PK_XEXTPROTO_DIR)/build

PK_XEXTPROTO_sh = $(CONFIG_SHELL) $(PK_XEXTPROTO_SCRIPTS) \
                 $1X \
                 $(PK_XEXTPROTO_NAME)X \
                 $(PK_XEXTPROTO_VERSION)X \
                 $(PK_XEXTPROTO_SITE)X \
                 $(PK_XEXTPROTO_GITHUB)X \
                 $(PK_XEXTPROTO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_XEXTPROTO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_XEXTPROTO_SUBNAME)X \
                 $(CONFIG_PK_XEXTPROTO_CONFIG)X \
                 $(CONFIG_PK_XEXTPROTO_LIBPATH)X \
                 $(CONFIG_PK_XEXTPROTO_CPPFLAGS)X \
                 $(CONFIG_PK_XEXTPROTO_DPKCONFIG)X \
                 $(CONFIG_PK_XEXTPROTO_CFLAGS)X \
                 $(CONFIG_PK_XEXTPROTO_LDFLAGS)X \
                 $(CONFIG_PK_XEXTPROTO_CXXFLAGS)X \
                 $(CONFIG_PK_XEXTPROTO_ASFLAGS)X \
                 $(PK_XEXTPROTO_BSBIT)X \
                 $(PK_XEXTPROTO_BUILDARCH)X

$(PK_XEXTPROTO_DIR)/build: FORCE
	$(Q)$(call PK_XEXTPROTO_sh,$(srctree))
