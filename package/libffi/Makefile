################################################
#
# libffi
#
################################################
PK_LIB_LIBFFI_NAME	:= libffi
PK_LIB_LIBFFI_VERSION	:= $(CONFIG_PK_LIB_LIBFFI_VERSION)
PK_LIB_LIBFFI_SITE	:= $(CONFIG_PK_LIB_LIBFFI_URL)
PK_LIB_LIBFFI_GITHUB	:= $(CONFIG_PK_LIB_LIBFFI_GITHUB)
PK_LIB_LIBFFI_SUBNAME	:=
PK_LIB_LIBFFI_BUILDARCH	:= $(CONFIG_PK_LIB_LIBFFI_BUILDARCH)
PK_LIB_LIBFFI_DIR	:= $(srctree)/package/libffi
PK_LIB_LIBFFI_PATCH	:= $(PK_LIB_LIBFFI_DIR)/patch
PK_LIB_LIBFFI_BSBIT	:= libffi-$(PK_LIB_LIBFFI_VERSION).bsbit
PK_LIB_LIBFFI_OUT	:=
PK_LIB_LIBFFI_SCRIPTS	:= $(srctree)/scripts/package/package.sh
PK_LIB_LIBFFI_TAR	:= $(CONFIG_PK_LIB_LIBFFI_TAR)
PK_LIB_LIBFFI_PACKAGE	:=
PK_LIB_LIBFFI_CONFIG	:= $(CONFIG_PK_LIB_LIBFFI_CONFIG)
SUB_TARGET		+= $(PK_LIB_LIBFFI_DIR)/build

PK_LIB_LIBFFI_sh = $(CONFIG_SHELL) $(PK_LIB_LIBFFI_SCRIPTS) \
                 $1X \
                 $(PK_LIB_LIBFFI_NAME)X \
                 $(PK_LIB_LIBFFI_VERSION)X \
                 $(PK_LIB_LIBFFI_SITE)X \
                 $(PK_LIB_LIBFFI_GITHUB)X \
                 $(PK_LIB_LIBFFI_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIB_LIBFFI_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIB_LIBFFI_SUBNAME)X \
                 $(CONFIG_PK_LIB_LIBFFI_CONFIG)X \
                 $(CONFIG_PK_LIB_LIBFFI_LIBPATH)X \
                 $(CONFIG_PK_LIB_LIBFFI_CPPFLAGS)X \
                 $(CONFIG_PK_LIB_LIBFFI_DPKCONFIG)X \
                 $(CONFIG_PK_LIB_LIBFFI_CFLAGS)X \
                 $(CONFIG_PK_LIB_LIBFFI_LDFLAGS)X \
                 $(CONFIG_PK_LIB_LIBFFI_CXXFLAGS)X \
                 $(CONFIG_PK_LIB_LIBFFI_ASFLAGS)X \
                 $(PK_LIB_LIBFFI_BSBIT)X \
                 $(PK_LIB_LIBFFI_BUILDARCH)X

$(PK_LIB_LIBFFI_DIR)/build: FORCE
	$(Q)$(call PK_LIB_LIBFFI_sh,$(srctree))
