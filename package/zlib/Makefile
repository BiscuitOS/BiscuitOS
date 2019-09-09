################################################
#
# zlib
#
################################################
PK_ZLIB_NAME		:= zlib
PK_ZLIB_VERSION		:= $(CONFIG_PK_ZLIB_VERSION)
PK_ZLIB_SITE		:= $(CONFIG_PK_ZLIB_URL)
PK_ZLIB_GITHUB		:= $(CONFIG_PK_ZLIB_GITHUB)
PK_ZLIB_SUBNAME		:=
PK_ZLIB_BUILDARCH	:= $(CONFIG_PK_ZLIB_BUILDARCH)
PK_ZLIB_DIR		:= $(srctree)/package/zlib
PK_ZLIB_PATCH		:= $(PK_ZLIB_DIR)/patch
PK_ZLIB_BSBIT		:= zlib-$(PK_ZLIB_VERSION).bsbit
PK_ZLIB_OUT		:=
PK_ZLIB_SCRIPTS		:= $(srctree)/scripts/package/package-zlib.sh
PK_ZLIB_TAR		:= $(CONFIG_PK_ZLIB_TAR)
PK_ZLIB_PACKAGE		:=
PK_ZLIB_CONFIG		:= $(CONFIG_PK_ZLIB_CONFIG)
SUB_TARGET		+= $(PK_ZLIB_DIR)/build

PK_ZLIB_sh = $(CONFIG_SHELL) $(PK_ZLIB_SCRIPTS) \
                 $1X \
                 $(PK_ZLIB_NAME)X \
                 $(PK_ZLIB_VERSION)X \
                 $(PK_ZLIB_SITE)X \
                 $(PK_ZLIB_GITHUB)X \
                 $(PK_ZLIB_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_ZLIB_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_ZLIB_SUBNAME)X \
                 $(CONFIG_PK_ZLIB_CONFIG)X \
                 $(CONFIG_PK_ZLIB_LIBPATH)X \
                 $(CONFIG_PK_ZLIB_CPPFLAGS)X \
                 $(CONFIG_PK_ZLIB_DPKCONFIG)X \
                 $(CONFIG_PK_ZLIB_CFLAGS)X \
                 $(CONFIG_PK_ZLIB_LDFLAGS)X \
                 $(CONFIG_PK_ZLIB_CXXFLAGS)X \
                 $(CONFIG_PK_ZLIB_ASFLAGS)X \
                 $(PK_ZLIB_BSBIT)X \
                 $(PK_ZLIB_BUILDARCH)X

$(PK_ZLIB_DIR)/build: FORCE
	$(Q)$(call PK_ZLIB_sh,$(srctree))
