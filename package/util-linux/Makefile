################################################
#
# util-linux
#
################################################
PK_UTIL_LINUX_NAME	:= util-linux
PK_UTIL_LINUX_VERSION	:= $(CONFIG_PK_UTIL_LINUX_VERSION)
PK_UTIL_LINUX_SITE	:= $(CONFIG_PK_UTIL_LINUX_URL)
PK_UTIL_LINUX_GITHUB	:= $(CONFIG_PK_UTIL_LINUX_GITHUB)
PK_UTIL_LINUX_SUBNAME	:=
PK_UTIL_LINUX_BUILDARCH	:= $(CONFIG_PK_UTIL_LINUX_BUILDARCH)
PK_UTIL_LINUX_DIR	:= $(srctree)/package/util-linux
PK_UTIL_LINUX_PATCH	:= $(PK_UTIL_LINUX_DIR)/patch
PK_UTIL_LINUX_BSBIT	:= util-linux-$(PK_UTIL_LINUX_VERSION).bsbit
PK_UTIL_LINUX_OUT	:=
PK_UTIL_LINUX_SCRIPTS	:= $(srctree)/scripts/package/package.sh
PK_UTIL_LINUX_TAR	:= $(CONFIG_PK_UTIL_LINUX_TAR)
PK_UTIL_LINUX_PACKAGE	:=
PK_UTIL_LINUX_CONFIG	:= $(CONFIG_PK_UTIL_LINUX_CONFIG)
SUB_TARGET		+= $(PK_UTIL_LINUX_DIR)/build

PK_UTIL_LINUX_sh = $(CONFIG_SHELL) $(PK_UTIL_LINUX_SCRIPTS) \
                 $1X \
                 $(PK_UTIL_LINUX_NAME)X \
                 $(PK_UTIL_LINUX_VERSION)X \
                 $(PK_UTIL_LINUX_SITE)X \
                 $(PK_UTIL_LINUX_GITHUB)X \
                 $(PK_UTIL_LINUX_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_UTIL_LINUX_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_UTIL_LINUX_SUBNAME)X \
                 $(CONFIG_PK_UTIL_LINUX_CONFIG)X \
                 $(CONFIG_PK_UTIL_LINUX_LIBPATH)X \
                 $(CONFIG_PK_UTIL_LINUX_CPPFLAGS)X \
                 $(CONFIG_PK_UTIL_LINUX_DPKCONFIG)X \
                 $(CONFIG_PK_UTIL_LINUX_CFLAGS)X \
                 $(CONFIG_PK_UTIL_LINUX_LDFLAGS)X \
                 $(CONFIG_PK_UTIL_LINUX_CXXFLAGS)X \
                 $(CONFIG_PK_UTIL_LINUX_ASFLAGS)X \
                 $(PK_UTIL_LINUX_BSBIT)X \
                 $(PK_UTIL_LINUX_BUILDARCH)X

$(PK_UTIL_LINUX_DIR)/build: FORCE
	$(Q)$(call PK_UTIL_LINUX_sh,$(srctree))
