################################################
#
# libXfixes
#
################################################
PK_LIBXFIXES_NAME        := libXfixes
PK_LIBXFIXES_VERSION     := $(CONFIG_PK_LIBXFIXES_VERSION)
PK_LIBXFIXES_SITE        := $(CONFIG_PK_LIBXFIXES_URL)
PK_LIBXFIXES_GITHUB      := $(CONFIG_PK_LIBXFIXES_GITHUB)
PK_LIBXFIXES_SUBNAME     :=
PK_LIBXFIXES_BUILDARCH   := $(CONFIG_PK_LIBXFIXES_BUILDARCH)
PK_LIBXFIXES_DIR         := $(srctree)/package/libXfixes
PK_LIBXFIXES_PATCH       := $(PK_LIBXFIXES_DIR)/patch
PK_LIBXFIXES_BSBIT       := libXfixes-$(PK_LIBXFIXES_VERSION).bsbit
PK_LIBXFIXES_OUT         :=
PK_LIBXFIXES_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LIBXFIXES_TAR         := $(CONFIG_PK_LIBXFIXES_TAR)
PK_LIBXFIXES_PACKAGE     :=
PK_LIBXFIXES_CONFIG      := $(CONFIG_PK_LIBXFIXES_CONFIG)
SUB_TARGET               += $(PK_LIBXFIXES_DIR)/build

PK_LIBXFIXES_sh = $(CONFIG_SHELL) $(PK_LIBXFIXES_SCRIPTS) \
                 $1X \
                 $(PK_LIBXFIXES_NAME)X \
                 $(PK_LIBXFIXES_VERSION)X \
                 $(PK_LIBXFIXES_SITE)X \
                 $(PK_LIBXFIXES_GITHUB)X \
                 $(PK_LIBXFIXES_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBXFIXES_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBXFIXES_SUBNAME)X \
                 $(CONFIG_PK_LIBXFIXES_CONFIG)X \
                 $(CONFIG_PK_LIBXFIXES_LIBPATH)X \
                 $(CONFIG_PK_LIBXFIXES_CPPFLAGS)X \
                 $(CONFIG_PK_LIBXFIXES_DPKCONFIG)X \
                 $(CONFIG_PK_LIBXFIXES_CFLAGS)X \
                 $(CONFIG_PK_LIBXFIXES_LDFLAGS)X \
                 $(CONFIG_PK_LIBXFIXES_CXXFLAGS)X \
                 $(CONFIG_PK_LIBXFIXES_ASFLAGS)X \
                 $(PK_LIBXFIXES_BSBIT)X \
                 $(PK_LIBXFIXES_BUILDARCH)X

$(PK_LIBXFIXES_DIR)/build: FORCE
	$(Q)$(call PK_LIBXFIXES_sh,$(srctree))
