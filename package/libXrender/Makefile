################################################
#
# libXrender
#
################################################
PK_LIBXRENDER_NAME        := libXrender
PK_LIBXRENDER_VERSION     := $(CONFIG_PK_LIBXRENDER_VERSION)
PK_LIBXRENDER_SITE        := $(CONFIG_PK_LIBXRENDER_URL)
PK_LIBXRENDER_GITHUB      := $(CONFIG_PK_LIBXRENDER_GITHUB)
PK_LIBXRENDER_SUBNAME     :=
PK_LIBXRENDER_BUILDARCH   := $(CONFIG_PK_LIBXRENDER_BUILDARCH)
PK_LIBXRENDER_DIR         := $(srctree)/package/libXrender
PK_LIBXRENDER_PATCH       := $(PK_LIBXRENDER_DIR)/patch
PK_LIBXRENDER_BSBIT       := libXrender-$(PK_LIBXRENDER_VERSION).bsbit
PK_LIBXRENDER_OUT         :=
PK_LIBXRENDER_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LIBXRENDER_TAR         := $(CONFIG_PK_LIBXRENDER_TAR)
PK_LIBXRENDER_PACKAGE     :=
PK_LIBXRENDER_CONFIG      := $(CONFIG_PK_LIBXRENDER_CONFIG)
SUB_TARGET                += $(PK_LIBXRENDER_DIR)/build

PK_LIBXRENDER_sh = $(CONFIG_SHELL) $(PK_LIBXRENDER_SCRIPTS) \
                 $1X \
                 $(PK_LIBXRENDER_NAME)X \
                 $(PK_LIBXRENDER_VERSION)X \
                 $(PK_LIBXRENDER_SITE)X \
                 $(PK_LIBXRENDER_GITHUB)X \
                 $(PK_LIBXRENDER_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBXRENDER_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBXRENDER_SUBNAME)X \
                 $(CONFIG_PK_LIBXRENDER_CONFIG)X \
                 $(CONFIG_PK_LIBXRENDER_LIBPATH)X \
                 $(CONFIG_PK_LIBXRENDER_CPPFLAGS)X \
                 $(CONFIG_PK_LIBXRENDER_DPKCONFIG)X \
                 $(CONFIG_PK_LIBXRENDER_CFLAGS)X \
                 $(CONFIG_PK_LIBXRENDER_LDFLAGS)X \
                 $(CONFIG_PK_LIBXRENDER_CXXFLAGS)X \
                 $(CONFIG_PK_LIBXRENDER_ASFLAGS)X \
                 $(PK_LIBXRENDER_BSBIT)X \
                 $(PK_LIBXRENDER_BUILDARCH)X

$(PK_LIBXRENDER_DIR)/build: FORCE
	$(Q)$(call PK_LIBXRENDER_sh,$(srctree))
