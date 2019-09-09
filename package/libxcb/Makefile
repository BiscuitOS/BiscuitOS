################################################
#
# libxcb
#
################################################
PK_LIBXCB_NAME        := libxcb
PK_LIBXCB_VERSION     := $(CONFIG_PK_LIBXCB_VERSION)
PK_LIBXCB_SITE        := $(CONFIG_PK_LIBXCB_URL)
PK_LIBXCB_GITHUB      := $(CONFIG_PK_LIBXCB_GITHUB)
PK_LIBXCB_SUBNAME     :=
PK_LIBXCB_BUILDARCH   := $(CONFIG_PK_LIBXCB_BUILDARCH)
PK_LIBXCB_DIR         := $(srctree)/package/libxcb
PK_LIBXCB_PATCH       := $(PK_LIBXCB_DIR)/patch
PK_LIBXCB_BSBIT       := libxcb-$(PK_LIBXCB_VERSION).bsbit
PK_LIBXCB_OUT         :=
PK_LIBXCB_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LIBXCB_TAR         := $(CONFIG_PK_LIBXCB_TAR)
PK_LIBXCB_PACKAGE     :=
PK_LIBXCB_CONFIG      := $(CONFIG_PK_LIBXCB_CONFIG)
SUB_TARGET            += $(PK_LIBXCB_DIR)/build

PK_LIBXCB_sh = $(CONFIG_SHELL) $(PK_LIBXCB_SCRIPTS) \
                 $1X \
                 $(PK_LIBXCB_NAME)X \
                 $(PK_LIBXCB_VERSION)X \
                 $(PK_LIBXCB_SITE)X \
                 $(PK_LIBXCB_GITHUB)X \
                 $(PK_LIBXCB_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBXCB_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBXCB_SUBNAME)X \
                 $(CONFIG_PK_LIBXCB_CONFIG)X \
                 $(CONFIG_PK_LIBXCB_LIBPATH)X \
                 $(CONFIG_PK_LIBXCB_CPPFLAGS)X \
                 $(CONFIG_PK_LIBXCB_DPKCONFIG)X \
                 $(CONFIG_PK_LIBXCB_CFLAGS)X \
                 $(CONFIG_PK_LIBXCB_LDFLAGS)X \
                 $(CONFIG_PK_LIBXCB_CXXFLAGS)X \
                 $(CONFIG_PK_LIBXCB_ASFLAGS)X \
                 $(PK_LIBXCB_BSBIT)X \
                 $(PK_LIBXCB_BUILDARCH)X

$(PK_LIBXCB_DIR)/build: FORCE
	$(Q)$(call PK_LIBXCB_sh,$(srctree))
