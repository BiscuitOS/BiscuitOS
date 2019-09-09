################################################
#
# libxshmfence
#
################################################
PK_LIBXSHMFENCE_NAME        := libxshmfence
PK_LIBXSHMFENCE_VERSION     := $(CONFIG_PK_LIBXSHMFENCE_VERSION)
PK_LIBXSHMFENCE_SITE        := $(CONFIG_PK_LIBXSHMFENCE_URL)
PK_LIBXSHMFENCE_GITHUB      := $(CONFIG_PK_LIBXSHMFENCE_GITHUB)
PK_LIBXSHMFENCE_SUBNAME     :=
PK_LIBXSHMFENCE_BUILDARCH   := $(CONFIG_PK_LIBXSHMFENCE_BUILDARCH)
PK_LIBXSHMFENCE_DIR         := $(srctree)/package/libxshmfence
PK_LIBXSHMFENCE_PATCH       := $(PK_LIBXSHMFENCE_DIR)/patch
PK_LIBXSHMFENCE_BSBIT       := libxshmfence-$(PK_LIBXSHMFENCE_VERSION).bsbit
PK_LIBXSHMFENCE_OUT         :=
PK_LIBXSHMFENCE_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LIBXSHMFENCE_TAR         := $(CONFIG_PK_LIBXSHMFENCE_TAR)
PK_LIBXSHMFENCE_PACKAGE     :=
PK_LIBXSHMFENCE_CONFIG      := $(CONFIG_PK_LIBXSHMFENCE_CONFIG)
SUB_TARGET                  += $(PK_LIBXSHMFENCE_DIR)/build

PK_LIBXSHMFENCE_sh = $(CONFIG_SHELL) $(PK_LIBXSHMFENCE_SCRIPTS) \
                 $1X \
                 $(PK_LIBXSHMFENCE_NAME)X \
                 $(PK_LIBXSHMFENCE_VERSION)X \
                 $(PK_LIBXSHMFENCE_SITE)X \
                 $(PK_LIBXSHMFENCE_GITHUB)X \
                 $(PK_LIBXSHMFENCE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBXSHMFENCE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBXSHMFENCE_SUBNAME)X \
                 $(CONFIG_PK_LIBXSHMFENCE_CONFIG)X \
                 $(CONFIG_PK_LIBXSHMFENCE_LIBPATH)X \
                 $(CONFIG_PK_LIBXSHMFENCE_CPPFLAGS)X \
                 $(CONFIG_PK_LIBXSHMFENCE_DPKCONFIG)X \
                 $(CONFIG_PK_LIBXSHMFENCE_CFLAGS)X \
                 $(CONFIG_PK_LIBXSHMFENCE_LDFLAGS)X \
                 $(CONFIG_PK_LIBXSHMFENCE_CXXFLAGS)X \
                 $(CONFIG_PK_LIBXSHMFENCE_ASFLAGS)X \
                 $(PK_LIBXSHMFENCE_BSBIT)X \
                 $(PK_LIBXSHMFENCE_BUILDARCH)X

$(PK_LIBXSHMFENCE_DIR)/build: FORCE
	$(Q)$(call PK_LIBXSHMFENCE_sh,$(srctree))
