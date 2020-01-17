################################################
#
# hlist_bl_base
#
################################################
PK_HLIST_BL_BASE_NAME        := hlist_bl_base
PK_HLIST_BL_BASE_VERSION     := $(CONFIG_PK_HLIST_BL_BASE_VERSION)
PK_HLIST_BL_BASE_SITE        := $(CONFIG_PK_HLIST_BL_BASE_URL)
PK_HLIST_BL_BASE_GITHUB      := $(CONFIG_PK_HLIST_BL_BASE_GITHUB)
PK_HLIST_BL_BASE_SUBNAME     :=
PK_HLIST_BL_BASE_BUILDARCH   := $(CONFIG_PK_HLIST_BL_BASE_BUILDARCH)
PK_HLIST_BL_BASE_DIR         := $(srctree)/package/hash/hashlist/hlist_bl/hlist_bl_base
PK_HLIST_BL_BASE_PATCH       := $(PK_HLIST_BL_BASE_DIR)/patch
PK_HLIST_BL_BASE_BSBIT       := hlist_bl_base-$(PK_HLIST_BL_BASE_VERSION).bsbit
PK_HLIST_BL_BASE_OUT         :=
PK_HLIST_BL_BASE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_HLIST_BL_BASE_TAR         := $(CONFIG_PK_HLIST_BL_BASE_TAR)
PK_HLIST_BL_BASE_PACKAGE     :=
PK_HLIST_BL_BASE_CONFIG      := $(CONFIG_PK_HLIST_BL_BASE_CONFIG)
SUB_TARGET                  += $(PK_HLIST_BL_BASE_DIR)/build

PK_HLIST_BL_BASE_sh = $(CONFIG_SHELL) $(PK_HLIST_BL_BASE_SCRIPTS) \
                 $1X \
                 $(PK_HLIST_BL_BASE_NAME)X \
                 $(PK_HLIST_BL_BASE_VERSION)X \
                 $(PK_HLIST_BL_BASE_SITE)X \
                 $(PK_HLIST_BL_BASE_GITHUB)X \
                 $(PK_HLIST_BL_BASE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_HLIST_BL_BASE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_HLIST_BL_BASE_SUBNAME)X \
                 $(CONFIG_PK_HLIST_BL_BASE_CONFIG)X \
                 $(CONFIG_PK_HLIST_BL_BASE_LIBPATH)X \
                 $(CONFIG_PK_HLIST_BL_BASE_CPPFLAGS)X \
                 $(CONFIG_PK_HLIST_BL_BASE_DPKCONFIG)X \
                 $(CONFIG_PK_HLIST_BL_BASE_CFLAGS)X \
                 $(CONFIG_PK_HLIST_BL_BASE_LDFLAGS)X \
                 $(CONFIG_PK_HLIST_BL_BASE_CXXFLAGS)X \
                 $(CONFIG_PK_HLIST_BL_BASE_ASFLAGS)X \
                 $(PK_HLIST_BL_BASE_BSBIT)X \
                 $(PK_HLIST_BL_BASE_BUILDARCH)X \
		 $(PK_HLIST_BL_BASE_CSRCFILE)X \
                 $(CONFIG_PK_HLIST_BL_BASE_SRCFILE)X \
                 $(CONFIG_PK_HLIST_BL_BASE_CSRCFILE)

$(PK_HLIST_BL_BASE_DIR)/build: FORCE
	$(Q)$(call PK_HLIST_BL_BASE_sh,$(srctree))
