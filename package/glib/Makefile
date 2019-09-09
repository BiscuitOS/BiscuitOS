################################################
#
# glib
#
################################################
PK_GLIB_NAME		:= glib
PK_GLIB_VERSION		:= $(CONFIG_PK_GLIB_VERSION)
PK_GLIB_SITE		:= $(CONFIG_PK_GLIB_URL)
PK_GLIB_GITHUB		:= $(CONFIG_PK_GLIB_GITHUB)
PK_GLIB_SUBNAME		:=
PK_GLIB_BUILDARCH	:= $(CONFIG_PK_GLIB_BUILDARCH)
PK_GLIB_DIR		:= $(srctree)/package/glib
PK_GLIB_PATCH		:= $(PK_GLIB_DIR)/patch
PK_GLIB_BSBIT		:= glib-$(PK_GLIB_VERSION).bsbit
PK_GLIB_OUT		:=
PK_GLIB_SCRIPTS		:= $(srctree)/scripts/package/package.sh
PK_GLIB_TAR		:= $(CONFIG_PK_GLIB_TAR)
PK_GLIB_PACKAGE		:=
PK_GLIB_CONFIG		:= $(CONFIG_PK_GLIB_CONFIG)
SUB_TARGET		+= $(PK_GLIB_DIR)/build

PK_GLIB_sh = $(CONFIG_SHELL) $(PK_GLIB_SCRIPTS) \
                 $1X \
                 $(PK_GLIB_NAME)X \
                 $(PK_GLIB_VERSION)X \
                 $(PK_GLIB_SITE)X \
                 $(PK_GLIB_GITHUB)X \
                 $(PK_GLIB_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_GLIB_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_GLIB_SUBNAME)X \
                 $(CONFIG_PK_GLIB_CONFIG)X \
                 $(CONFIG_PK_GLIB_LIBPATH)X \
                 $(CONFIG_PK_GLIB_CPPFLAGS)X \
                 $(CONFIG_PK_GLIB_DPKCONFIG)X \
                 $(CONFIG_PK_GLIB_CFLAGS)X \
                 $(CONFIG_PK_GLIB_LDFLAGS)X \
                 $(CONFIG_PK_GLIB_CXXFLAGS)X \
                 $(CONFIG_PK_GLIB_ASFLAGS)X \
                 $(PK_GLIB_BSBIT)X \
                 $(PK_GLIB_BUILDARCH)X

$(PK_GLIB_DIR)/build: FORCE
	$(Q)$(call PK_GLIB_sh,$(srctree))
