################################################
#
# pango
#
################################################
PK_PANGO_NAME        := pango
PK_PANGO_VERSION     := $(CONFIG_PK_PANGO_VERSION)
PK_PANGO_SITE        := $(CONFIG_PK_PANGO_URL)
PK_PANGO_GITHUB      := $(CONFIG_PK_PANGO_GITHUB)
PK_PANGO_SUBNAME     :=
PK_PANGO_BUILDARCH   := $(CONFIG_PK_PANGO_BUILDARCH)
PK_PANGO_DIR         := $(srctree)/package/pango
PK_PANGO_PATCH       := $(PK_PANGO_DIR)/patch
PK_PANGO_BSBIT       := pango-$(PK_PANGO_VERSION).bsbit
PK_PANGO_OUT         :=
PK_PANGO_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_PANGO_TAR         := $(CONFIG_PK_PANGO_TAR)
PK_PANGO_PACKAGE     :=
PK_PANGO_CONFIG      := $(CONFIG_PK_PANGO_CONFIG)
SUB_TARGET           += $(PK_PANGO_DIR)/build

PK_PANGO_sh = $(CONFIG_SHELL) $(PK_PANGO_SCRIPTS) \
                 $1X \
                 $(PK_PANGO_NAME)X \
                 $(PK_PANGO_VERSION)X \
                 $(PK_PANGO_SITE)X \
                 $(PK_PANGO_GITHUB)X \
                 $(PK_PANGO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PANGO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PANGO_SUBNAME)X \
                 $(CONFIG_PK_PANGO_CONFIG)X \
                 $(CONFIG_PK_PANGO_LIBPATH)X \
                 $(CONFIG_PK_PANGO_CPPFLAGS)X \
                 $(CONFIG_PK_PANGO_DPKCONFIG)X \
                 $(CONFIG_PK_PANGO_CFLAGS)X \
                 $(CONFIG_PK_PANGO_LDFLAGS)X \
                 $(CONFIG_PK_PANGO_CXXFLAGS)X \
                 $(CONFIG_PK_PANGO_ASFLAGS)X \
                 $(PK_PANGO_BSBIT)X \
                 $(PK_PANGO_BUILDARCH)X

$(PK_PANGO_DIR)/build: FORCE
	$(Q)$(call PK_PANGO_sh,$(srctree))
