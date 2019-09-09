################################################
#
# damageproto
#
################################################
PK_DAMAGEPROTO_NAME        := damageproto
PK_DAMAGEPROTO_VERSION     := $(CONFIG_PK_DAMAGEPROTO_VERSION)
PK_DAMAGEPROTO_SITE        := $(CONFIG_PK_DAMAGEPROTO_URL)
PK_DAMAGEPROTO_GITHUB      := $(CONFIG_PK_DAMAGEPROTO_GITHUB)
PK_DAMAGEPROTO_SUBNAME     :=
PK_DAMAGEPROTO_BUILDARCH   := $(CONFIG_PK_DAMAGEPROTO_BUILDARCH)
PK_DAMAGEPROTO_DIR         := $(srctree)/package/damageproto
PK_DAMAGEPROTO_PATCH       := $(PK_DAMAGEPROTO_DIR)/patch
PK_DAMAGEPROTO_BSBIT       := damageproto-$(PK_DAMAGEPROTO_VERSION).bsbit
PK_DAMAGEPROTO_OUT         :=
PK_DAMAGEPROTO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_DAMAGEPROTO_TAR         := $(CONFIG_PK_DAMAGEPROTO_TAR)
PK_DAMAGEPROTO_PACKAGE     :=
PK_DAMAGEPROTO_CONFIG      := $(CONFIG_PK_DAMAGEPROTO_CONFIG)
SUB_TARGET                 += $(PK_DAMAGEPROTO_DIR)/build

PK_DAMAGEPROTO_sh = $(CONFIG_SHELL) $(PK_DAMAGEPROTO_SCRIPTS) \
                 $1X \
                 $(PK_DAMAGEPROTO_NAME)X \
                 $(PK_DAMAGEPROTO_VERSION)X \
                 $(PK_DAMAGEPROTO_SITE)X \
                 $(PK_DAMAGEPROTO_GITHUB)X \
                 $(PK_DAMAGEPROTO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_DAMAGEPROTO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_DAMAGEPROTO_SUBNAME)X \
                 $(CONFIG_PK_DAMAGEPROTO_CONFIG)X \
                 $(CONFIG_PK_DAMAGEPROTO_LIBPATH)X \
                 $(CONFIG_PK_DAMAGEPROTO_CPPFLAGS)X \
                 $(CONFIG_PK_DAMAGEPROTO_DPKCONFIG)X \
                 $(CONFIG_PK_DAMAGEPROTO_CFLAGS)X \
                 $(CONFIG_PK_DAMAGEPROTO_LDFLAGS)X \
                 $(CONFIG_PK_DAMAGEPROTO_CXXFLAGS)X \
                 $(CONFIG_PK_DAMAGEPROTO_ASFLAGS)X \
                 $(PK_DAMAGEPROTO_BSBIT)X \
                 $(PK_DAMAGEPROTO_BUILDARCH)X

$(PK_DAMAGEPROTO_DIR)/build: FORCE
	$(Q)$(call PK_DAMAGEPROTO_sh,$(srctree))
