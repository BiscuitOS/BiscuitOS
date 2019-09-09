################################################
#
# freetype
#
################################################
PK_FREETYPE_NAME        := freetype
PK_FREETYPE_VERSION     := $(CONFIG_PK_FREETYPE_VERSION)
PK_FREETYPE_SITE        := $(CONFIG_PK_FREETYPE_URL)
PK_FREETYPE_GITHUB      := $(CONFIG_PK_FREETYPE_GITHUB)
PK_FREETYPE_SUBNAME     :=
PK_FREETYPE_BUILDARCH   := $(CONFIG_PK_FREETYPE_BUILDARCH)
PK_FREETYPE_DIR         := $(srctree)/package/freetype
PK_FREETYPE_PATCH       := $(PK_FREETYPE_DIR)/patch
PK_FREETYPE_BSBIT       := freetype-$(PK_FREETYPE_VERSION).bsbit
PK_FREETYPE_OUT         :=
PK_FREETYPE_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_FREETYPE_TAR         := $(CONFIG_PK_FREETYPE_TAR)
PK_FREETYPE_PACKAGE     :=
PK_FREETYPE_CONFIG      := $(CONFIG_PK_FREETYPE_CONFIG)
SUB_TARGET              += $(PK_FREETYPE_DIR)/build

PK_FREETYPE_sh = $(CONFIG_SHELL) $(PK_FREETYPE_SCRIPTS) \
                 $1X \
                 $(PK_FREETYPE_NAME)X \
                 $(PK_FREETYPE_VERSION)X \
                 $(PK_FREETYPE_SITE)X \
                 $(PK_FREETYPE_GITHUB)X \
                 $(PK_FREETYPE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_FREETYPE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_FREETYPE_SUBNAME)X \
                 $(CONFIG_PK_FREETYPE_CONFIG)X \
                 $(CONFIG_PK_FREETYPE_LIBPATH)X \
                 $(CONFIG_PK_FREETYPE_CPPFLAGS)X \
                 $(CONFIG_PK_FREETYPE_DPKCONFIG)X \
                 $(CONFIG_PK_FREETYPE_CFLAGS)X \
                 $(CONFIG_PK_FREETYPE_LDFLAGS)X \
                 $(CONFIG_PK_FREETYPE_CXXFLAGS)X \
                 $(CONFIG_PK_FREETYPE_ASFLAGS)X \
                 $(PK_FREETYPE_BSBIT)X \
                 $(PK_FREETYPE_BUILDARCH)X

$(PK_FREETYPE_DIR)/build: FORCE
	$(Q)$(call PK_FREETYPE_sh,$(srctree))
