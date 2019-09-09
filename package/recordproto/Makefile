################################################
#
# recordproto
#
################################################
PK_RECORDPROTO_NAME        := recordproto
PK_RECORDPROTO_VERSION     := $(CONFIG_PK_RECORDPROTO_VERSION)
PK_RECORDPROTO_SITE        := $(CONFIG_PK_RECORDPROTO_URL)
PK_RECORDPROTO_GITHUB      := $(CONFIG_PK_RECORDPROTO_GITHUB)
PK_RECORDPROTO_SUBNAME     :=
PK_RECORDPROTO_BUILDARCH   := $(CONFIG_PK_RECORDPROTO_BUILDARCH)
PK_RECORDPROTO_DIR         := $(srctree)/package/recordproto
PK_RECORDPROTO_PATCH       := $(PK_RECORDPROTO_DIR)/patch
PK_RECORDPROTO_BSBIT       := recordproto-$(PK_RECORDPROTO_VERSION).bsbit
PK_RECORDPROTO_OUT         :=
PK_RECORDPROTO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_RECORDPROTO_TAR         := $(CONFIG_PK_RECORDPROTO_TAR)
PK_RECORDPROTO_PACKAGE     :=
PK_RECORDPROTO_CONFIG      := $(CONFIG_PK_RECORDPROTO_CONFIG)
SUB_TARGET                 += $(PK_RECORDPROTO_DIR)/build

PK_RECORDPROTO_sh = $(CONFIG_SHELL) $(PK_RECORDPROTO_SCRIPTS) \
                 $1X \
                 $(PK_RECORDPROTO_NAME)X \
                 $(PK_RECORDPROTO_VERSION)X \
                 $(PK_RECORDPROTO_SITE)X \
                 $(PK_RECORDPROTO_GITHUB)X \
                 $(PK_RECORDPROTO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_RECORDPROTO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_RECORDPROTO_SUBNAME)X \
                 $(CONFIG_PK_RECORDPROTO_CONFIG)X \
                 $(CONFIG_PK_RECORDPROTO_LIBPATH)X \
                 $(CONFIG_PK_RECORDPROTO_CPPFLAGS)X \
                 $(CONFIG_PK_RECORDPROTO_DPKCONFIG)X \
                 $(CONFIG_PK_RECORDPROTO_CFLAGS)X \
                 $(CONFIG_PK_RECORDPROTO_LDFLAGS)X \
                 $(CONFIG_PK_RECORDPROTO_CXXFLAGS)X \
                 $(CONFIG_PK_RECORDPROTO_ASFLAGS)X \
                 $(PK_RECORDPROTO_BSBIT)X \
                 $(PK_RECORDPROTO_BUILDARCH)X

$(PK_RECORDPROTO_DIR)/build: FORCE
	$(Q)$(call PK_RECORDPROTO_sh,$(srctree))
