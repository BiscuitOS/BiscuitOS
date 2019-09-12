################################################
#
# libpng
#
################################################
PK_LIBPNG_NAME        := libpng
PK_LIBPNG_VERSION     := $(CONFIG_PK_LIBPNG_VERSION)
PK_LIBPNG_SITE        := $(CONFIG_PK_LIBPNG_URL)
PK_LIBPNG_GITHUB      := $(CONFIG_PK_LIBPNG_GITHUB)
PK_LIBPNG_SUBNAME     :=
PK_LIBPNG_BUILDARCH   := $(CONFIG_PK_LIBPNG_BUILDARCH)
PK_LIBPNG_DIR         := $(srctree)/package/libpng
PK_LIBPNG_PATCH       := $(PK_LIBPNG_DIR)/patch
PK_LIBPNG_BSBIT       := libpng-$(PK_LIBPNG_VERSION).bsbit
PK_LIBPNG_OUT         :=
PK_LIBPNG_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LIBPNG_TAR         := $(CONFIG_PK_LIBPNG_TAR)
PK_LIBPNG_PACKAGE     :=
PK_LIBPNG_CONFIG      := $(CONFIG_PK_LIBPNG_CONFIG)
SUB_TARGET            += $(PK_LIBPNG_DIR)/build

PK_LIBPNG_sh = $(CONFIG_SHELL) $(PK_LIBPNG_SCRIPTS) \
                 $1X \
                 $(PK_LIBPNG_NAME)X \
                 $(PK_LIBPNG_VERSION)X \
                 $(PK_LIBPNG_SITE)X \
                 $(PK_LIBPNG_GITHUB)X \
                 $(PK_LIBPNG_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBPNG_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBPNG_SUBNAME)X \
                 $(CONFIG_PK_LIBPNG_CONFIG)X \
                 $(CONFIG_PK_LIBPNG_LIBPATH)X \
                 $(CONFIG_PK_LIBPNG_CPPFLAGS)X \
                 $(CONFIG_PK_LIBPNG_DPKCONFIG)X \
                 $(CONFIG_PK_LIBPNG_CFLAGS)X \
                 $(CONFIG_PK_LIBPNG_LDFLAGS)X \
                 $(CONFIG_PK_LIBPNG_CXXFLAGS)X \
                 $(CONFIG_PK_LIBPNG_ASFLAGS)X \
                 $(PK_LIBPNG_BSBIT)X \
                 $(PK_LIBPNG_BUILDARCH)X

$(PK_LIBPNG_DIR)/build: FORCE
	$(Q)$(call PK_LIBPNG_sh,$(srctree))
