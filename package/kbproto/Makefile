################################################
#
# kbproto
#
################################################
PK_KBPROTO_NAME        := kbproto
PK_KBPROTO_VERSION     := $(CONFIG_PK_KBPROTO_VERSION)
PK_KBPROTO_SITE        := $(CONFIG_PK_KBPROTO_URL)
PK_KBPROTO_GITHUB      := $(CONFIG_PK_KBPROTO_GITHUB)
PK_KBPROTO_SUBNAME     :=
PK_KBPROTO_BUILDARCH   := $(CONFIG_PK_KBPROTO_BUILDARCH)
PK_KBPROTO_DIR         := $(srctree)/package/kbproto
PK_KBPROTO_PATCH       := $(PK_KBPROTO_DIR)/patch
PK_KBPROTO_BSBIT       := kbproto-$(PK_KBPROTO_VERSION).bsbit
PK_KBPROTO_OUT         :=
PK_KBPROTO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_KBPROTO_TAR         := $(CONFIG_PK_KBPROTO_TAR)
PK_KBPROTO_PACKAGE     :=
PK_KBPROTO_CONFIG      := $(CONFIG_PK_KBPROTO_CONFIG)
SUB_TARGET             += $(PK_KBPROTO_DIR)/build

PK_KBPROTO_sh = $(CONFIG_SHELL) $(PK_KBPROTO_SCRIPTS) \
                 $1X \
                 $(PK_KBPROTO_NAME)X \
                 $(PK_KBPROTO_VERSION)X \
                 $(PK_KBPROTO_SITE)X \
                 $(PK_KBPROTO_GITHUB)X \
                 $(PK_KBPROTO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KBPROTO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KBPROTO_SUBNAME)X \
                 $(CONFIG_PK_KBPROTO_CONFIG)X \
                 $(CONFIG_PK_KBPROTO_LIBPATH)X \
                 $(CONFIG_PK_KBPROTO_CPPFLAGS)X \
                 $(CONFIG_PK_KBPROTO_DPKCONFIG)X \
                 $(CONFIG_PK_KBPROTO_CFLAGS)X \
                 $(CONFIG_PK_KBPROTO_LDFLAGS)X \
                 $(CONFIG_PK_KBPROTO_CXXFLAGS)X \
                 $(CONFIG_PK_KBPROTO_ASFLAGS)X \
                 $(PK_KBPROTO_BSBIT)X \
                 $(PK_KBPROTO_BUILDARCH)X

$(PK_KBPROTO_DIR)/build: FORCE
	$(Q)$(call PK_KBPROTO_sh,$(srctree))
