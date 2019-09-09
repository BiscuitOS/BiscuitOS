################################################
#
# xproto
#
################################################
PK_XPROTO_NAME		:= xproto
PK_XPROTO_VERSION	:= $(CONFIG_PK_XPROTO_VERSION)
PK_XPROTO_SITE		:= $(CONFIG_PK_XPROTO_URL)
PK_XPROTO_GITHUB	:= $(CONFIG_PK_XPROTO_GITHUB)
PK_XPROTO_SUBNAME	:=
PK_XPROTO_BUILDARCH	:= $(CONFIG_PK_XPROTO_BUILDARCH)
PK_XPROTO_DIR		:= $(srctree)/package/xproto
PK_XPROTO_PATCH		:= $(PK_XPROTO_DIR)/patch
PK_XPROTO_BSBIT		:= xproto-$(PK_XPROTO_VERSION).bsbit
PK_XPROTO_OUT		:=
PK_XPROTO_SCRIPTS	:= $(srctree)/scripts/package/package.sh
PK_XPROTO_TAR		:= $(CONFIG_PK_XPROTO_TAR)
PK_XPROTO_PACKAGE	:=
PK_XPROTO_CONFIG	:= $(CONFIG_PK_XPROTO_CONFIG)
SUB_TARGET		+= $(PK_XPROTO_DIR)/build

PK_XPROTO_sh = $(CONFIG_SHELL) $(PK_XPROTO_SCRIPTS) \
                 $1X \
                 $(PK_XPROTO_NAME)X \
                 $(PK_XPROTO_VERSION)X \
                 $(PK_XPROTO_SITE)X \
                 $(PK_XPROTO_GITHUB)X \
                 $(PK_XPROTO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_XPROTO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_XPROTO_SUBNAME)X \
                 $(CONFIG_PK_XPROTO_CONFIG)X \
                 $(CONFIG_PK_XPROTO_LIBPATH)X \
                 $(CONFIG_PK_XPROTO_CPPFLAGS)X \
                 $(CONFIG_PK_XPROTO_DPKCONFIG)X \
                 $(CONFIG_PK_XPROTO_CFLAGS)X \
                 $(CONFIG_PK_XPROTO_LDFLAGS)X \
                 $(CONFIG_PK_XPROTO_CXXFLAGS)X \
                 $(CONFIG_PK_XPROTO_ASFLAGS)X \
                 $(PK_XPROTO_BSBIT)X \
                 $(PK_XPROTO_BUILDARCH)X

$(PK_XPROTO_DIR)/build: FORCE
	$(Q)$(call PK_XPROTO_sh,$(srctree))
