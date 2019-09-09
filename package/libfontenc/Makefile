################################################
#
# libfontenc
#
################################################
PK_LIBFONTENC_NAME        := libfontenc
PK_LIBFONTENC_VERSION     := $(CONFIG_PK_LIBFONTENC_VERSION)
PK_LIBFONTENC_SITE        := $(CONFIG_PK_LIBFONTENC_URL)
PK_LIBFONTENC_GITHUB      := $(CONFIG_PK_LIBFONTENC_GITHUB)
PK_LIBFONTENC_SUBNAME     :=
PK_LIBFONTENC_BUILDARCH   := $(CONFIG_PK_LIBFONTENC_BUILDARCH)
PK_LIBFONTENC_DIR         := $(srctree)/package/libfontenc
PK_LIBFONTENC_PATCH       := $(PK_LIBFONTENC_DIR)/patch
PK_LIBFONTENC_BSBIT       := libfontenc-$(PK_LIBFONTENC_VERSION).bsbit
PK_LIBFONTENC_OUT         :=
PK_LIBFONTENC_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LIBFONTENC_TAR         := $(CONFIG_PK_LIBFONTENC_TAR)
PK_LIBFONTENC_PACKAGE     :=
PK_LIBFONTENC_CONFIG      := $(CONFIG_PK_LIBFONTENC_CONFIG)
SUB_TARGET                += $(PK_LIBFONTENC_DIR)/build

PK_LIBFONTENC_sh = $(CONFIG_SHELL) $(PK_LIBFONTENC_SCRIPTS) \
                 $1X \
                 $(PK_LIBFONTENC_NAME)X \
                 $(PK_LIBFONTENC_VERSION)X \
                 $(PK_LIBFONTENC_SITE)X \
                 $(PK_LIBFONTENC_GITHUB)X \
                 $(PK_LIBFONTENC_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBFONTENC_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBFONTENC_SUBNAME)X \
                 $(CONFIG_PK_LIBFONTENC_CONFIG)X \
                 $(CONFIG_PK_LIBFONTENC_LIBPATH)X \
                 $(CONFIG_PK_LIBFONTENC_CPPFLAGS)X \
                 $(CONFIG_PK_LIBFONTENC_DPKCONFIG)X \
                 $(CONFIG_PK_LIBFONTENC_CFLAGS)X \
                 $(CONFIG_PK_LIBFONTENC_LDFLAGS)X \
                 $(CONFIG_PK_LIBFONTENC_CXXFLAGS)X \
                 $(CONFIG_PK_LIBFONTENC_ASFLAGS)X \
                 $(PK_LIBFONTENC_BSBIT)X \
                 $(PK_LIBFONTENC_BUILDARCH)X

$(PK_LIBFONTENC_DIR)/build: FORCE
	$(Q)$(call PK_LIBFONTENC_sh,$(srctree))
