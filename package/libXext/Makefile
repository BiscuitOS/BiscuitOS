################################################
#
# libXext
#
################################################
PK_LIBXEXT_NAME        := libXext
PK_LIBXEXT_VERSION     := $(CONFIG_PK_LIBXEXT_VERSION)
PK_LIBXEXT_SITE        := $(CONFIG_PK_LIBXEXT_URL)
PK_LIBXEXT_GITHUB      := $(CONFIG_PK_LIBXEXT_GITHUB)
PK_LIBXEXT_SUBNAME     :=
PK_LIBXEXT_BUILDARCH   := $(CONFIG_PK_LIBXEXT_BUILDARCH)
PK_LIBXEXT_DIR         := $(srctree)/package/libXext
PK_LIBXEXT_PATCH       := $(PK_LIBXEXT_DIR)/patch
PK_LIBXEXT_BSBIT       := libXext-$(PK_LIBXEXT_VERSION).bsbit
PK_LIBXEXT_OUT         :=
PK_LIBXEXT_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LIBXEXT_TAR         := $(CONFIG_PK_LIBXEXT_TAR)
PK_LIBXEXT_PACKAGE     :=
PK_LIBXEXT_CONFIG      := $(CONFIG_PK_LIBXEXT_CONFIG)
SUB_TARGET             += $(PK_LIBXEXT_DIR)/build

PK_LIBXEXT_sh = $(CONFIG_SHELL) $(PK_LIBXEXT_SCRIPTS) \
                 $1X \
                 $(PK_LIBXEXT_NAME)X \
                 $(PK_LIBXEXT_VERSION)X \
                 $(PK_LIBXEXT_SITE)X \
                 $(PK_LIBXEXT_GITHUB)X \
                 $(PK_LIBXEXT_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBXEXT_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBXEXT_SUBNAME)X \
                 $(CONFIG_PK_LIBXEXT_CONFIG)X \
                 $(CONFIG_PK_LIBXEXT_LIBPATH)X \
                 $(CONFIG_PK_LIBXEXT_CPPFLAGS)X \
                 $(CONFIG_PK_LIBXEXT_DPKCONFIG)X \
                 $(CONFIG_PK_LIBXEXT_CFLAGS)X \
                 $(CONFIG_PK_LIBXEXT_LDFLAGS)X \
                 $(CONFIG_PK_LIBXEXT_CXXFLAGS)X \
                 $(CONFIG_PK_LIBXEXT_ASFLAGS)X \
                 $(PK_LIBXEXT_BSBIT)X \
                 $(PK_LIBXEXT_BUILDARCH)X

$(PK_LIBXEXT_DIR)/build: FORCE
	$(Q)$(call PK_LIBXEXT_sh,$(srctree))
