################################################
#
# cairo
#
################################################
PK_CAIRO_NAME        := cairo
PK_CAIRO_VERSION     := $(CONFIG_PK_CAIRO_VERSION)
PK_CAIRO_SITE        := $(CONFIG_PK_CAIRO_URL)
PK_CAIRO_GITHUB      := $(CONFIG_PK_CAIRO_GITHUB)
PK_CAIRO_SUBNAME     :=
PK_CAIRO_BUILDARCH   := $(CONFIG_PK_CAIRO_BUILDARCH)
PK_CAIRO_DIR         := $(srctree)/package/cairo
PK_CAIRO_PATCH       := $(PK_CAIRO_DIR)/patch
PK_CAIRO_BSBIT       := cairo-$(PK_CAIRO_VERSION).bsbit
PK_CAIRO_OUT         :=
PK_CAIRO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_CAIRO_TAR         := $(CONFIG_PK_CAIRO_TAR)
PK_CAIRO_PACKAGE     :=
PK_CAIRO_CONFIG      := $(CONFIG_PK_CAIRO_CONFIG)
SUB_TARGET           += $(PK_CAIRO_DIR)/build

PK_CAIRO_sh = $(CONFIG_SHELL) $(PK_CAIRO_SCRIPTS) \
                 $1X \
                 $(PK_CAIRO_NAME)X \
                 $(PK_CAIRO_VERSION)X \
                 $(PK_CAIRO_SITE)X \
                 $(PK_CAIRO_GITHUB)X \
                 $(PK_CAIRO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CAIRO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CAIRO_SUBNAME)X \
                 $(CONFIG_PK_CAIRO_CONFIG)X \
                 $(CONFIG_PK_CAIRO_LIBPATH)X \
                 $(CONFIG_PK_CAIRO_CPPFLAGS)X \
                 $(CONFIG_PK_CAIRO_DPKCONFIG)X \
                 $(CONFIG_PK_CAIRO_CFLAGS)X \
                 $(CONFIG_PK_CAIRO_LDFLAGS)X \
                 $(CONFIG_PK_CAIRO_CXXFLAGS)X \
                 $(CONFIG_PK_CAIRO_ASFLAGS)X \
                 $(PK_CAIRO_BSBIT)X \
                 $(PK_CAIRO_BUILDARCH)X

$(PK_CAIRO_DIR)/build: FORCE
	$(Q)$(call PK_CAIRO_sh,$(srctree))
