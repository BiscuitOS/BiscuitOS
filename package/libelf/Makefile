################################################
#
# libelf
#
################################################
PK_LIBELF_NAME		:= libelf
PK_LIBELF_VERSION	:= $(CONFIG_PK_LIBELF_VERSION)
PK_LIBELF_SITE		:= $(CONFIG_PK_LIBELF_URL)
PK_LIBELF_GITHUB	:= $(CONFIG_PK_LIBELF_GITHUB)
PK_LIBELF_SUBNAME	:=
PK_LIBELF_BUILDARCH	:= $(CONFIG_PK_LIBELF_BUILDARCH)
PK_LIBELF_DIR		:= $(srctree)/package/libelf
PK_LIBELF_PATCH		:= $(PK_LIBELF_DIR)/patch
PK_LIBELF_BSBIT		:= libelf-$(PK_LIBELF_VERSION).bsbit
PK_LIBELF_OUT		:=
PK_LIBELF_SCRIPTS	:= $(srctree)/scripts/package/package-zlib.sh
PK_LIBELF_TAR		:= $(CONFIG_PK_LIBELF_TAR)
PK_LIBELF_PACKAGE	:=
PK_LIBELF_CONFIG	:= $(CONFIG_PK_LIBELF_CONFIG)
SUB_TARGET		+= $(PK_LIBELF_DIR)/build

PK_LIBELF_sh = $(CONFIG_SHELL) $(PK_LIBELF_SCRIPTS) \
                 $1X \
                 $(PK_LIBELF_NAME)X \
                 $(PK_LIBELF_VERSION)X \
                 $(PK_LIBELF_SITE)X \
                 $(PK_LIBELF_GITHUB)X \
                 $(PK_LIBELF_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBELF_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBELF_SUBNAME)X \
                 $(CONFIG_PK_LIBELF_CONFIG)X \
                 $(CONFIG_PK_LIBELF_LIBPATH)X \
                 $(CONFIG_PK_LIBELF_CPPFLAGS)X \
                 $(CONFIG_PK_LIBELF_DPKCONFIG)X \
                 $(CONFIG_PK_LIBELF_CFLAGS)X \
                 $(CONFIG_PK_LIBELF_LDFLAGS)X \
                 $(CONFIG_PK_LIBELF_CXXFLAGS)X \
                 $(CONFIG_PK_LIBELF_ASFLAGS)X \
                 $(PK_LIBELF_BSBIT)X \
                 $(PK_LIBELF_BUILDARCH)X

$(PK_LIBELF_DIR)/build: FORCE
	$(Q)$(call PK_LIBELF_sh,$(srctree))
