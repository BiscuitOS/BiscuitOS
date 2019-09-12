################################################
#
# DX
#
################################################
PK_DX_NAME	:= DX
PK_DX_VERSION	:= $(CONFIG_PK_DX_VERSION)
PK_DX_SITE	:= $(CONFIG_PK_DX_URL)
PK_DX_GITHUB	:= $(CONFIG_PK_DX_GITHUB)
PK_DX_SUBNAME	:=
PK_DX_DIR	:= $(srctree)/package/DX
PK_DX_PATCH	:= $(srctree)/package/DX/patch
PK_DX_DEMO	:= $(srctree)/package/DX/demo.c
PK_DX_OUT	:=
PK_DX_SCRIPTS	:= $(srctree)/scripts/package/package.sh
PK_DX_TAR	:= $(CONFIG_PK_DX_TAR)
PK_DX_PACKAGE	:=
PK_DX_CONFIG	:= $(CONFIG_PK_DX_CONFIG)
SUB_TARGET	+= $(PK_DX_DIR)/build

PK_DX_sh = $(CONFIG_SHELL) $(PK_DX_SCRIPTS) \
                 $1X \
                 $(PK_DX_NAME)X \
                 $(PK_DX_VERSION)X \
                 $(PK_DX_SITE)X \
                 $(PK_DX_GITHUB)X \
                 $(PK_DX_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_DX_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_DX_SUBNAME)X \
                 $(CONFIG_PK_DX_CONFIG)X \
                 $(CONFIG_PK_DX_LIBPATH)X \
                 $(CONFIG_PK_DX_CPPFLAGS)X \
                 $(CONFIG_PK_DX_DPKCONFIG)X \
                 $(CONFIG_PK_DX_CFLAGS)X \
                 $(CONFIG_PK_DX_LDFLAGS)X \
                 $(CONFIG_PK_DX_CXXFLAGS)X \
                 $(CONFIG_PK_DX_ASFLAGS)X

$(PK_DX_DIR)/build: FORCE
	$(Q)$(call PK_DX_sh,$(srctree))
