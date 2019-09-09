################################################
#
# libXfont2
#
################################################
PK_LIBXFONT2_NAME        := libXfont2
PK_LIBXFONT2_VERSION     := $(CONFIG_PK_LIBXFONT2_VERSION)
PK_LIBXFONT2_SITE        := $(CONFIG_PK_LIBXFONT2_URL)
PK_LIBXFONT2_GITHUB      := $(CONFIG_PK_LIBXFONT2_GITHUB)
PK_LIBXFONT2_SUBNAME     :=
PK_LIBXFONT2_BUILDARCH   := $(CONFIG_PK_LIBXFONT2_BUILDARCH)
PK_LIBXFONT2_DIR         := $(srctree)/package/libXfont2
PK_LIBXFONT2_PATCH       := $(PK_LIBXFONT2_DIR)/patch
PK_LIBXFONT2_BSBIT       := libXfont2-$(PK_LIBXFONT2_VERSION).bsbit
PK_LIBXFONT2_OUT         :=
PK_LIBXFONT2_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LIBXFONT2_TAR         := $(CONFIG_PK_LIBXFONT2_TAR)
PK_LIBXFONT2_PACKAGE     :=
PK_LIBXFONT2_CONFIG      := $(CONFIG_PK_LIBXFONT2_CONFIG)
SUB_TARGET               += $(PK_LIBXFONT2_DIR)/build

PK_LIBXFONT2_sh = $(CONFIG_SHELL) $(PK_LIBXFONT2_SCRIPTS) \
                 $1X \
                 $(PK_LIBXFONT2_NAME)X \
                 $(PK_LIBXFONT2_VERSION)X \
                 $(PK_LIBXFONT2_SITE)X \
                 $(PK_LIBXFONT2_GITHUB)X \
                 $(PK_LIBXFONT2_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBXFONT2_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBXFONT2_SUBNAME)X \
                 $(CONFIG_PK_LIBXFONT2_CONFIG)X \
                 $(CONFIG_PK_LIBXFONT2_LIBPATH)X \
                 $(CONFIG_PK_LIBXFONT2_CPPFLAGS)X \
                 $(CONFIG_PK_LIBXFONT2_DPKCONFIG)X \
                 $(CONFIG_PK_LIBXFONT2_CFLAGS)X \
                 $(CONFIG_PK_LIBXFONT2_LDFLAGS)X \
                 $(CONFIG_PK_LIBXFONT2_CXXFLAGS)X \
                 $(CONFIG_PK_LIBXFONT2_ASFLAGS)X \
                 $(PK_LIBXFONT2_BSBIT)X \
                 $(PK_LIBXFONT2_BUILDARCH)X

$(PK_LIBXFONT2_DIR)/build: FORCE
	$(Q)$(call PK_LIBXFONT2_sh,$(srctree))
