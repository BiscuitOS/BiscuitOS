################################################
#
# e2fsprogs
#
################################################
PK_E2FSPROGS_NAME	:= e2fsprogs
PK_E2FSPROGS_VERSION	:= $(CONFIG_PK_E2FSPROGS_VERSION)
PK_E2FSPROGS_SITE	:= $(CONFIG_PK_E2FSPROGS_URL)
PK_E2FSPROGS_GITHUB	:= $(CONFIG_PK_E2FSPROGS_GITHUB)
PK_E2FSPROGS_SUBNAME	:=
PK_E2FSPROGS_BUILDARCH	:= $(CONFIG_PK_E2FSPROGS_BUILDARCH)
PK_E2FSPROGS_DIR	:= $(srctree)/package/e2fsprogs
PK_E2FSPROGS_PATCH	:= $(PK_E2FSPROGS_DIR)/patch
PK_E2FSPROGS_BSBIT	:= e2fsprogs-$(PK_E2FSPROGS_VERSION).bsbit
PK_E2FSPROGS_OUT	:=
PK_E2FSPROGS_SCRIPTS	:= $(srctree)/scripts/package/package-e2fs.sh
PK_E2FSPROGS_TAR	:= $(CONFIG_PK_E2FSPROGS_TAR)
PK_E2FSPROGS_PACKAGE	:=
PK_E2FSPROGS_CONFIG	:= $(CONFIG_PK_E2FSPROGS_CONFIG)
SUB_TARGET		+= $(PK_E2FSPROGS_DIR)/build

PK_E2FSPROGS_sh = $(CONFIG_SHELL) $(PK_E2FSPROGS_SCRIPTS) \
                 $1X \
                 $(PK_E2FSPROGS_NAME)X \
                 $(PK_E2FSPROGS_VERSION)X \
                 $(PK_E2FSPROGS_SITE)X \
                 $(PK_E2FSPROGS_GITHUB)X \
                 $(PK_E2FSPROGS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_E2FSPROGS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_E2FSPROGS_SUBNAME)X \
                 $(CONFIG_PK_E2FSPROGS_CONFIG)X \
                 $(CONFIG_PK_E2FSPROGS_LIBPATH)X \
                 $(CONFIG_PK_E2FSPROGS_CPPFLAGS)X \
                 $(CONFIG_PK_E2FSPROGS_DPKCONFIG)X \
                 $(CONFIG_PK_E2FSPROGS_CFLAGS)X \
                 $(CONFIG_PK_E2FSPROGS_LDFLAGS)X \
                 $(CONFIG_PK_E2FSPROGS_CXXFLAGS)X \
                 $(CONFIG_PK_E2FSPROGS_ASFLAGS)X \
                 $(PK_E2FSPROGS_BSBIT)X \
                 $(PK_E2FSPROGS_BUILDARCH)X

$(PK_E2FSPROGS_DIR)/build: FORCE
	$(Q)$(call PK_E2FSPROGS_sh,$(srctree))
