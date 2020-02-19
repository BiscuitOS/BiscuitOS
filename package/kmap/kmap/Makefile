################################################
#
# kmap
#
################################################
PK_KMAP_F_NAME        := kmap
PK_KMAP_F_VERSION     := $(CONFIG_PK_KMAP_F_VERSION)
PK_KMAP_F_SITE        := $(CONFIG_PK_KMAP_F_URL)
PK_KMAP_F_GITHUB      := $(CONFIG_PK_KMAP_F_GITHUB)
PK_KMAP_F_SUBNAME     :=
PK_KMAP_F_BUILDARCH   := $(CONFIG_PK_KMAP_F_BUILDARCH)
PK_KMAP_F_DIR         := $(srctree)/package/kmap/kmap
PK_KMAP_F_PATCH       := $(PK_KMAP_F_DIR)/patch
PK_KMAP_F_BSBIT       := kmap-$(PK_KMAP_F_VERSION).bsbit
PK_KMAP_F_OUT         :=
PK_KMAP_F_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_KMAP_F_TAR         := $(CONFIG_PK_KMAP_F_TAR)
PK_KMAP_F_PACKAGE     :=
PK_KMAP_F_CONFIG      := $(CONFIG_PK_KMAP_F_CONFIG)
SUB_TARGET                  += $(PK_KMAP_F_DIR)/build

PK_KMAP_F_sh = $(CONFIG_SHELL) $(PK_KMAP_F_SCRIPTS) \
                 $1X \
                 $(PK_KMAP_F_NAME)X \
                 $(PK_KMAP_F_VERSION)X \
                 $(PK_KMAP_F_SITE)X \
                 $(PK_KMAP_F_GITHUB)X \
                 $(PK_KMAP_F_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KMAP_F_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KMAP_F_SUBNAME)X \
                 $(CONFIG_PK_KMAP_F_CONFIG)X \
                 $(CONFIG_PK_KMAP_F_LIBPATH)X \
                 $(CONFIG_PK_KMAP_F_CPPFLAGS)X \
                 $(CONFIG_PK_KMAP_F_DPKCONFIG)X \
                 $(CONFIG_PK_KMAP_F_CFLAGS)X \
                 $(CONFIG_PK_KMAP_F_LDFLAGS)X \
                 $(CONFIG_PK_KMAP_F_CXXFLAGS)X \
                 $(CONFIG_PK_KMAP_F_ASFLAGS)X \
                 $(PK_KMAP_F_BSBIT)X \
                 $(PK_KMAP_F_BUILDARCH)X \
		 $(PK_KMAP_F_CSRCFILE)X \
                 $(CONFIG_PK_KMAP_F_SRCFILE)X \
                 $(CONFIG_PK_KMAP_F_CSRCFILE)

$(PK_KMAP_F_DIR)/build: FORCE
	$(Q)$(call PK_KMAP_F_sh,$(srctree))
