################################################
#
# pcre
#
################################################
PK_PCRE_NAME		:= pcre
PK_PCRE_VERSION		:= $(CONFIG_PK_PCRE_VERSION)
PK_PCRE_SITE		:= $(CONFIG_PK_PCRE_URL)
PK_PCRE_GITHUB		:= $(CONFIG_PK_PCRE_GITHUB)
PK_PCRE_SUBNAME		:=
PK_PCRE_BUILDARCH	:= $(CONFIG_PK_PCRE_BUILDARCH)
PK_PCRE_DIR		:= $(srctree)/package/pcre
PK_PCRE_PATCH		:= $(PK_PCRE_DIR)/patch
PK_PCRE_BSBIT		:= pcre-$(PK_PCRE_VERSION).bsbit
PK_PCRE_OUT		:=
PK_PCRE_SCRIPTS		:= $(srctree)/scripts/package/package.sh
PK_PCRE_TAR		:= $(CONFIG_PK_PCRE_TAR)
PK_PCRE_PACKAGE		:=
PK_PCRE_CONFIG		:= $(CONFIG_PK_PCRE_CONFIG)
SUB_TARGET		+= $(PK_PCRE_DIR)/build

PK_PCRE_sh = $(CONFIG_SHELL) $(PK_PCRE_SCRIPTS) \
                 $1X \
                 $(PK_PCRE_NAME)X \
                 $(PK_PCRE_VERSION)X \
                 $(PK_PCRE_SITE)X \
                 $(PK_PCRE_GITHUB)X \
                 $(PK_PCRE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PCRE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PCRE_SUBNAME)X \
                 $(CONFIG_PK_PCRE_CONFIG)X \
                 $(CONFIG_PK_PCRE_LIBPATH)X \
                 $(CONFIG_PK_PCRE_CPPFLAGS)X \
                 $(CONFIG_PK_PCRE_DPKCONFIG)X \
                 $(CONFIG_PK_PCRE_CFLAGS)X \
                 $(CONFIG_PK_PCRE_LDFLAGS)X \
                 $(CONFIG_PK_PCRE_CXXFLAGS)X \
                 $(CONFIG_PK_PCRE_ASFLAGS)X \
                 $(PK_PCRE_BSBIT)X \
                 $(PK_PCRE_BUILDARCH)X

$(PK_PCRE_DIR)/build: FORCE
	$(Q)$(call PK_PCRE_sh,$(srctree))
