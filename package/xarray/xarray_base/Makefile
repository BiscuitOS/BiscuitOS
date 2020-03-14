################################################
#
# xarray_base
#
################################################
PK_XARRAY_BASE_NAME        := xarray_base
PK_XARRAY_BASE_VERSION     := $(CONFIG_PK_XARRAY_BASE_VERSION)
PK_XARRAY_BASE_SITE        := $(CONFIG_PK_XARRAY_BASE_URL)
PK_XARRAY_BASE_GITHUB      := $(CONFIG_PK_XARRAY_BASE_GITHUB)
PK_XARRAY_BASE_SUBNAME     :=
PK_XARRAY_BASE_BUILDARCH   := $(CONFIG_PK_XARRAY_BASE_BUILDARCH)
PK_XARRAY_BASE_DIR         := $(srctree)/package/xarray/xarray_base
PK_XARRAY_BASE_PATCH       := $(PK_XARRAY_BASE_DIR)/patch
PK_XARRAY_BASE_BSBIT       := xarray_base-$(PK_XARRAY_BASE_VERSION).bsbit
PK_XARRAY_BASE_OUT         :=
PK_XARRAY_BASE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_XARRAY_BASE_TAR         := $(CONFIG_PK_XARRAY_BASE_TAR)
PK_XARRAY_BASE_PACKAGE     :=
PK_XARRAY_BASE_CONFIG      := $(CONFIG_PK_XARRAY_BASE_CONFIG)
SUB_TARGET                  += $(PK_XARRAY_BASE_DIR)/build

PK_XARRAY_BASE_sh = $(CONFIG_SHELL) $(PK_XARRAY_BASE_SCRIPTS) \
                 $1X \
                 $(PK_XARRAY_BASE_NAME)X \
                 $(PK_XARRAY_BASE_VERSION)X \
                 $(PK_XARRAY_BASE_SITE)X \
                 $(PK_XARRAY_BASE_GITHUB)X \
                 $(PK_XARRAY_BASE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_XARRAY_BASE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_XARRAY_BASE_SUBNAME)X \
                 $(CONFIG_PK_XARRAY_BASE_CONFIG)X \
                 $(CONFIG_PK_XARRAY_BASE_LIBPATH)X \
                 $(CONFIG_PK_XARRAY_BASE_CPPFLAGS)X \
                 $(CONFIG_PK_XARRAY_BASE_DPKCONFIG)X \
                 $(CONFIG_PK_XARRAY_BASE_CFLAGS)X \
                 $(CONFIG_PK_XARRAY_BASE_LDFLAGS)X \
                 $(CONFIG_PK_XARRAY_BASE_CXXFLAGS)X \
                 $(CONFIG_PK_XARRAY_BASE_ASFLAGS)X \
                 $(PK_XARRAY_BASE_BSBIT)X \
                 $(PK_XARRAY_BASE_BUILDARCH)X \
		 $(PK_XARRAY_BASE_CSRCFILE)X \
                 $(CONFIG_PK_XARRAY_BASE_SRCFILE)X \
                 $(CONFIG_PK_XARRAY_BASE_CSRCFILE)

$(PK_XARRAY_BASE_DIR)/build: FORCE
	$(Q)$(call PK_XARRAY_BASE_sh,$(srctree))
