################################################
#
# gtk
#
################################################
PK_GTKP_NAME        := gtk+
PK_GTKP_VERSION     := $(CONFIG_PK_GTKP_VERSION)
PK_GTKP_SITE        := $(CONFIG_PK_GTKP_URL)
PK_GTKP_GITHUB      := $(CONFIG_PK_GTKP_GITHUB)
PK_GTKP_SUBNAME     :=
PK_GTKP_BUILDARCH   := $(CONFIG_PK_GTKP_BUILDARCH)
PK_GTKP_DIR         := $(srctree)/package/gtk
PK_GTKP_PATCH       := $(PK_GTKP_DIR)/patch
PK_GTKP_BSBIT       := gtk+-$(PK_GTKP_VERSION).bsbit
PK_GTKP_OUT         :=
PK_GTKP_SCRIPTS     := $(srctree)/scripts/package/package-gtk.sh
PK_GTKP_TAR         := $(CONFIG_PK_GTKP_TAR)
PK_GTKP_PACKAGE     :=
PK_GTKP_CONFIG      := $(CONFIG_PK_GTKP_CONFIG)
SUB_TARGET          += $(PK_GTKP_DIR)/build

PK_GTKP_sh = $(CONFIG_SHELL) $(PK_GTKP_SCRIPTS) \
                 $1X \
                 $(PK_GTKP_NAME)X \
                 $(PK_GTKP_VERSION)X \
                 $(PK_GTKP_SITE)X \
                 $(PK_GTKP_GITHUB)X \
                 $(PK_GTKP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_GTKP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_GTKP_SUBNAME)X \
                 $(CONFIG_PK_GTKP_CONFIG)X \
                 $(CONFIG_PK_GTKP_LIBPATH)X \
                 $(CONFIG_PK_GTKP_CPPFLAGS)X \
                 $(CONFIG_PK_GTKP_DPKCONFIG)X \
                 $(CONFIG_PK_GTKP_CFLAGS)X \
                 $(CONFIG_PK_GTKP_LDFLAGS)X \
                 $(CONFIG_PK_GTKP_CXXFLAGS)X \
                 $(CONFIG_PK_GTKP_ASFLAGS)X \
                 $(PK_GTKP_BSBIT)X \
                 $(PK_GTKP_BUILDARCH)X

$(PK_GTKP_DIR)/build: FORCE
	$(Q)$(call PK_GTKP_sh,$(srctree))
