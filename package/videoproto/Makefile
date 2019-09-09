################################################
#
# videoproto
#
################################################
PK_VIDEOPROTO_NAME        := videoproto
PK_VIDEOPROTO_VERSION     := $(CONFIG_PK_VIDEOPROTO_VERSION)
PK_VIDEOPROTO_SITE        := $(CONFIG_PK_VIDEOPROTO_URL)
PK_VIDEOPROTO_GITHUB      := $(CONFIG_PK_VIDEOPROTO_GITHUB)
PK_VIDEOPROTO_SUBNAME     :=
PK_VIDEOPROTO_BUILDARCH   := $(CONFIG_PK_VIDEOPROTO_BUILDARCH)
PK_VIDEOPROTO_DIR         := $(srctree)/package/videoproto
PK_VIDEOPROTO_PATCH       := $(PK_VIDEOPROTO_DIR)/patch
PK_VIDEOPROTO_BSBIT       := videoproto-$(PK_VIDEOPROTO_VERSION).bsbit
PK_VIDEOPROTO_OUT         :=
PK_VIDEOPROTO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_VIDEOPROTO_TAR         := $(CONFIG_PK_VIDEOPROTO_TAR)
PK_VIDEOPROTO_PACKAGE     :=
PK_VIDEOPROTO_CONFIG      := $(CONFIG_PK_VIDEOPROTO_CONFIG)
SUB_TARGET                += $(PK_VIDEOPROTO_DIR)/build

PK_VIDEOPROTO_sh = $(CONFIG_SHELL) $(PK_VIDEOPROTO_SCRIPTS) \
                 $1X \
                 $(PK_VIDEOPROTO_NAME)X \
                 $(PK_VIDEOPROTO_VERSION)X \
                 $(PK_VIDEOPROTO_SITE)X \
                 $(PK_VIDEOPROTO_GITHUB)X \
                 $(PK_VIDEOPROTO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_VIDEOPROTO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_VIDEOPROTO_SUBNAME)X \
                 $(CONFIG_PK_VIDEOPROTO_CONFIG)X \
                 $(CONFIG_PK_VIDEOPROTO_LIBPATH)X \
                 $(CONFIG_PK_VIDEOPROTO_CPPFLAGS)X \
                 $(CONFIG_PK_VIDEOPROTO_DPKCONFIG)X \
                 $(CONFIG_PK_VIDEOPROTO_CFLAGS)X \
                 $(CONFIG_PK_VIDEOPROTO_LDFLAGS)X \
                 $(CONFIG_PK_VIDEOPROTO_CXXFLAGS)X \
                 $(CONFIG_PK_VIDEOPROTO_ASFLAGS)X \
                 $(PK_VIDEOPROTO_BSBIT)X \
                 $(PK_VIDEOPROTO_BUILDARCH)X

$(PK_VIDEOPROTO_DIR)/build: FORCE
	$(Q)$(call PK_VIDEOPROTO_sh,$(srctree))
