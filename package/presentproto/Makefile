################################################
#
# presentproto
#
################################################
PK_PRESENTPROTO_NAME        := presentproto
PK_PRESENTPROTO_VERSION     := $(CONFIG_PK_PRESENTPROTO_VERSION)
PK_PRESENTPROTO_SITE        := $(CONFIG_PK_PRESENTPROTO_URL)
PK_PRESENTPROTO_GITHUB      := $(CONFIG_PK_PRESENTPROTO_GITHUB)
PK_PRESENTPROTO_SUBNAME     :=
PK_PRESENTPROTO_BUILDARCH   := $(CONFIG_PK_PRESENTPROTO_BUILDARCH)
PK_PRESENTPROTO_DIR         := $(srctree)/package/presentproto
PK_PRESENTPROTO_PATCH       := $(PK_PRESENTPROTO_DIR)/patch
PK_PRESENTPROTO_BSBIT       := presentproto-$(PK_PRESENTPROTO_VERSION).bsbit
PK_PRESENTPROTO_OUT         :=
PK_PRESENTPROTO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_PRESENTPROTO_TAR         := $(CONFIG_PK_PRESENTPROTO_TAR)
PK_PRESENTPROTO_PACKAGE     :=
PK_PRESENTPROTO_CONFIG      := $(CONFIG_PK_PRESENTPROTO_CONFIG)
SUB_TARGET                  += $(PK_PRESENTPROTO_DIR)/build

PK_PRESENTPROTO_sh = $(CONFIG_SHELL) $(PK_PRESENTPROTO_SCRIPTS) \
                 $1X \
                 $(PK_PRESENTPROTO_NAME)X \
                 $(PK_PRESENTPROTO_VERSION)X \
                 $(PK_PRESENTPROTO_SITE)X \
                 $(PK_PRESENTPROTO_GITHUB)X \
                 $(PK_PRESENTPROTO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PRESENTPROTO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PRESENTPROTO_SUBNAME)X \
                 $(CONFIG_PK_PRESENTPROTO_CONFIG)X \
                 $(CONFIG_PK_PRESENTPROTO_LIBPATH)X \
                 $(CONFIG_PK_PRESENTPROTO_CPPFLAGS)X \
                 $(CONFIG_PK_PRESENTPROTO_DPKCONFIG)X \
                 $(CONFIG_PK_PRESENTPROTO_CFLAGS)X \
                 $(CONFIG_PK_PRESENTPROTO_LDFLAGS)X \
                 $(CONFIG_PK_PRESENTPROTO_CXXFLAGS)X \
                 $(CONFIG_PK_PRESENTPROTO_ASFLAGS)X \
                 $(PK_PRESENTPROTO_BSBIT)X \
                 $(PK_PRESENTPROTO_BUILDARCH)X

$(PK_PRESENTPROTO_DIR)/build: FORCE
	$(Q)$(call PK_PRESENTPROTO_sh,$(srctree))
