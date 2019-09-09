################################################
#
# libxkbfile
#
################################################
PK_LIBXKBFILE_NAME        := libxkbfile
PK_LIBXKBFILE_VERSION     := $(CONFIG_PK_LIBXKBFILE_VERSION)
PK_LIBXKBFILE_SITE        := $(CONFIG_PK_LIBXKBFILE_URL)
PK_LIBXKBFILE_GITHUB      := $(CONFIG_PK_LIBXKBFILE_GITHUB)
PK_LIBXKBFILE_SUBNAME     :=
PK_LIBXKBFILE_BUILDARCH   := $(CONFIG_PK_LIBXKBFILE_BUILDARCH)
PK_LIBXKBFILE_DIR         := $(srctree)/package/libxkbfile
PK_LIBXKBFILE_PATCH       := $(PK_LIBXKBFILE_DIR)/patch
PK_LIBXKBFILE_BSBIT       := libxkbfile-$(PK_LIBXKBFILE_VERSION).bsbit
PK_LIBXKBFILE_OUT         :=
PK_LIBXKBFILE_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LIBXKBFILE_TAR         := $(CONFIG_PK_LIBXKBFILE_TAR)
PK_LIBXKBFILE_PACKAGE     :=
PK_LIBXKBFILE_CONFIG      := $(CONFIG_PK_LIBXKBFILE_CONFIG)
SUB_TARGET                += $(PK_LIBXKBFILE_DIR)/build

PK_LIBXKBFILE_sh = $(CONFIG_SHELL) $(PK_LIBXKBFILE_SCRIPTS) \
                 $1X \
                 $(PK_LIBXKBFILE_NAME)X \
                 $(PK_LIBXKBFILE_VERSION)X \
                 $(PK_LIBXKBFILE_SITE)X \
                 $(PK_LIBXKBFILE_GITHUB)X \
                 $(PK_LIBXKBFILE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBXKBFILE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBXKBFILE_SUBNAME)X \
                 $(CONFIG_PK_LIBXKBFILE_CONFIG)X \
                 $(CONFIG_PK_LIBXKBFILE_LIBPATH)X \
                 $(CONFIG_PK_LIBXKBFILE_CPPFLAGS)X \
                 $(CONFIG_PK_LIBXKBFILE_DPKCONFIG)X \
                 $(CONFIG_PK_LIBXKBFILE_CFLAGS)X \
                 $(CONFIG_PK_LIBXKBFILE_LDFLAGS)X \
                 $(CONFIG_PK_LIBXKBFILE_CXXFLAGS)X \
                 $(CONFIG_PK_LIBXKBFILE_ASFLAGS)X \
                 $(PK_LIBXKBFILE_BSBIT)X \
                 $(PK_LIBXKBFILE_BUILDARCH)X

$(PK_LIBXKBFILE_DIR)/build: FORCE
	$(Q)$(call PK_LIBXKBFILE_sh,$(srctree))
