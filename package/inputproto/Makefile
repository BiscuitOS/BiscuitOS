################################################
#
# inputproto
#
################################################
PK_INPUTPROTO_NAME        := inputproto
PK_INPUTPROTO_VERSION     := $(CONFIG_PK_INPUTPROTO_VERSION)
PK_INPUTPROTO_SITE        := $(CONFIG_PK_INPUTPROTO_URL)
PK_INPUTPROTO_GITHUB      := $(CONFIG_PK_INPUTPROTO_GITHUB)
PK_INPUTPROTO_SUBNAME     :=
PK_INPUTPROTO_BUILDARCH   := $(CONFIG_PK_INPUTPROTO_BUILDARCH)
PK_INPUTPROTO_DIR         := $(srctree)/package/inputproto
PK_INPUTPROTO_PATCH       := $(PK_INPUTPROTO_DIR)/patch
PK_INPUTPROTO_BSBIT       := inputproto-$(PK_INPUTPROTO_VERSION).bsbit
PK_INPUTPROTO_OUT         :=
PK_INPUTPROTO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_INPUTPROTO_TAR         := $(CONFIG_PK_INPUTPROTO_TAR)
PK_INPUTPROTO_PACKAGE     :=
PK_INPUTPROTO_CONFIG      := $(CONFIG_PK_INPUTPROTO_CONFIG)
SUB_TARGET                += $(PK_INPUTPROTO_DIR)/build

PK_INPUTPROTO_sh = $(CONFIG_SHELL) $(PK_INPUTPROTO_SCRIPTS) \
                 $1X \
                 $(PK_INPUTPROTO_NAME)X \
                 $(PK_INPUTPROTO_VERSION)X \
                 $(PK_INPUTPROTO_SITE)X \
                 $(PK_INPUTPROTO_GITHUB)X \
                 $(PK_INPUTPROTO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_INPUTPROTO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_INPUTPROTO_SUBNAME)X \
                 $(CONFIG_PK_INPUTPROTO_CONFIG)X \
                 $(CONFIG_PK_INPUTPROTO_LIBPATH)X \
                 $(CONFIG_PK_INPUTPROTO_CPPFLAGS)X \
                 $(CONFIG_PK_INPUTPROTO_DPKCONFIG)X \
                 $(CONFIG_PK_INPUTPROTO_CFLAGS)X \
                 $(CONFIG_PK_INPUTPROTO_LDFLAGS)X \
                 $(CONFIG_PK_INPUTPROTO_CXXFLAGS)X \
                 $(CONFIG_PK_INPUTPROTO_ASFLAGS)X \
                 $(PK_INPUTPROTO_BSBIT)X \
                 $(PK_INPUTPROTO_BUILDARCH)X

$(PK_INPUTPROTO_DIR)/build: FORCE
	$(Q)$(call PK_INPUTPROTO_sh,$(srctree))
