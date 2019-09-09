################################################
#
# xorg-server
#
################################################
PK_XORG_SERVER_NAME        := xorg-server
PK_XORG_SERVER_VERSION     := $(CONFIG_PK_XORG_SERVER_VERSION)
PK_XORG_SERVER_SITE        := $(CONFIG_PK_XORG_SERVER_URL)
PK_XORG_SERVER_GITHUB      := $(CONFIG_PK_XORG_SERVER_GITHUB)
PK_XORG_SERVER_SUBNAME     :=
PK_XORG_SERVER_BUILDARCH   := $(CONFIG_PK_XORG_SERVER_BUILDARCH)
PK_XORG_SERVER_DIR         := $(srctree)/package/xorg-server
PK_XORG_SERVER_PATCH       := $(PK_XORG_SERVER_DIR)/patch
PK_XORG_SERVER_BSBIT       := xorg-server-$(PK_XORG_SERVER_VERSION).bsbit
PK_XORG_SERVER_OUT         :=
PK_XORG_SERVER_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_XORG_SERVER_TAR         := $(CONFIG_PK_XORG_SERVER_TAR)
PK_XORG_SERVER_PACKAGE     :=
PK_XORG_SERVER_CONFIG      := $(CONFIG_PK_XORG_SERVER_CONFIG)
SUB_TARGET                 += $(PK_XORG_SERVER_DIR)/build

PK_XORG_SERVER_sh = $(CONFIG_SHELL) $(PK_XORG_SERVER_SCRIPTS) \
                 $1X \
                 $(PK_XORG_SERVER_NAME)X \
                 $(PK_XORG_SERVER_VERSION)X \
                 $(PK_XORG_SERVER_SITE)X \
                 $(PK_XORG_SERVER_GITHUB)X \
                 $(PK_XORG_SERVER_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_XORG_SERVER_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_XORG_SERVER_SUBNAME)X \
                 $(CONFIG_PK_XORG_SERVER_CONFIG)X \
                 $(CONFIG_PK_XORG_SERVER_LIBPATH)X \
                 $(CONFIG_PK_XORG_SERVER_CPPFLAGS)X \
                 $(CONFIG_PK_XORG_SERVER_DPKCONFIG)X \
                 $(CONFIG_PK_XORG_SERVER_CFLAGS)X \
                 $(CONFIG_PK_XORG_SERVER_LDFLAGS)X \
                 $(CONFIG_PK_XORG_SERVER_CXXFLAGS)X \
                 $(CONFIG_PK_XORG_SERVER_ASFLAGS)X \
                 $(PK_XORG_SERVER_BSBIT)X \
                 $(PK_XORG_SERVER_BUILDARCH)X

$(PK_XORG_SERVER_DIR)/build: FORCE
	$(Q)$(call PK_XORG_SERVER_sh,$(srctree))
