################################################
#
# libXau
#
################################################
PK_LIBXAU_NAME        := libXau
PK_LIBXAU_VERSION     := $(CONFIG_PK_LIBXAU_VERSION)
PK_LIBXAU_SITE        := $(CONFIG_PK_LIBXAU_URL)
PK_LIBXAU_GITHUB      := $(CONFIG_PK_LIBXAU_GITHUB)
PK_LIBXAU_SUBNAME     :=
PK_LIBXAU_BUILDARCH   := $(CONFIG_PK_LIBXAU_BUILDARCH)
PK_LIBXAU_DIR         := $(srctree)/package/libXau
PK_LIBXAU_PATCH       := $(PK_LIBXAU_DIR)/patch
PK_LIBXAU_BSBIT       := libXau-$(PK_LIBXAU_VERSION).bsbit
PK_LIBXAU_OUT         :=
PK_LIBXAU_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LIBXAU_TAR         := $(CONFIG_PK_LIBXAU_TAR)
PK_LIBXAU_PACKAGE     :=
PK_LIBXAU_CONFIG      := $(CONFIG_PK_LIBXAU_CONFIG)
SUB_TARGET            += $(PK_LIBXAU_DIR)/build

PK_LIBXAU_sh = $(CONFIG_SHELL) $(PK_LIBXAU_SCRIPTS) \
                 $1X \
                 $(PK_LIBXAU_NAME)X \
                 $(PK_LIBXAU_VERSION)X \
                 $(PK_LIBXAU_SITE)X \
                 $(PK_LIBXAU_GITHUB)X \
                 $(PK_LIBXAU_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBXAU_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBXAU_SUBNAME)X \
                 $(CONFIG_PK_LIBXAU_CONFIG)X \
                 $(CONFIG_PK_LIBXAU_LIBPATH)X \
                 $(CONFIG_PK_LIBXAU_CPPFLAGS)X \
                 $(CONFIG_PK_LIBXAU_DPKCONFIG)X \
                 $(CONFIG_PK_LIBXAU_CFLAGS)X \
                 $(CONFIG_PK_LIBXAU_LDFLAGS)X \
                 $(CONFIG_PK_LIBXAU_CXXFLAGS)X \
                 $(CONFIG_PK_LIBXAU_ASFLAGS)X \
                 $(PK_LIBXAU_BSBIT)X \
                 $(PK_LIBXAU_BUILDARCH)X

$(PK_LIBXAU_DIR)/build: FORCE
	$(Q)$(call PK_LIBXAU_sh,$(srctree))
