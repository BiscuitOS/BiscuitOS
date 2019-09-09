################################################
#
# libX11
#
################################################
PK_LIBX11_NAME		:= libX11
PK_LIBX11_VERSION	:= $(CONFIG_PK_LIBX11_VERSION)
PK_LIBX11_SITE		:= $(CONFIG_PK_LIBX11_URL)
PK_LIBX11_GITHUB	:= $(CONFIG_PK_LIBX11_GITHUB)
PK_LIBX11_SUBNAME	:=
PK_LIBX11_BUILDARCH	:= $(CONFIG_PK_LIBX11_BUILDARCH)
PK_LIBX11_DIR		:= $(srctree)/package/libX11
PK_LIBX11_PATCH		:= $(PK_LIBX11_DIR)/patch
PK_LIBX11_BSBIT		:= libX11-$(PK_LIBX11_VERSION).bsbit
PK_LIBX11_OUT		:=
PK_LIBX11_SCRIPTS	:= $(srctree)/scripts/package/package.sh
PK_LIBX11_TAR		:= $(CONFIG_PK_LIBX11_TAR)
PK_LIBX11_PACKAGE	:=
PK_LIBX11_CONFIG	:= $(CONFIG_PK_LIBX11_CONFIG)
SUB_TARGET		+= $(PK_LIBX11_DIR)/build

PK_LIBX11_sh = $(CONFIG_SHELL) $(PK_LIBX11_SCRIPTS) \
                 $1X \
                 $(PK_LIBX11_NAME)X \
                 $(PK_LIBX11_VERSION)X \
                 $(PK_LIBX11_SITE)X \
                 $(PK_LIBX11_GITHUB)X \
                 $(PK_LIBX11_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBX11_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBX11_SUBNAME)X \
                 $(CONFIG_PK_LIBX11_CONFIG)X \
                 $(CONFIG_PK_LIBX11_LIBPATH)X \
                 $(CONFIG_PK_LIBX11_CPPFLAGS)X \
                 $(CONFIG_PK_LIBX11_DPKCONFIG)X \
                 $(CONFIG_PK_LIBX11_CFLAGS)X \
                 $(CONFIG_PK_LIBX11_LDFLAGS)X \
                 $(CONFIG_PK_LIBX11_CXXFLAGS)X \
                 $(CONFIG_PK_LIBX11_ASFLAGS)X \
                 $(PK_LIBX11_BSBIT)X \
                 $(PK_LIBX11_BUILDARCH)X

$(PK_LIBX11_DIR)/build: FORCE
	$(Q)$(call PK_LIBX11_sh,$(srctree))
