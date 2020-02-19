################################################
#
# kunmap
#
################################################
PK_KUNMAP_NAME        := kunmap
PK_KUNMAP_VERSION     := $(CONFIG_PK_KUNMAP_VERSION)
PK_KUNMAP_SITE        := $(CONFIG_PK_KUNMAP_URL)
PK_KUNMAP_GITHUB      := $(CONFIG_PK_KUNMAP_GITHUB)
PK_KUNMAP_SUBNAME     :=
PK_KUNMAP_BUILDARCH   := $(CONFIG_PK_KUNMAP_BUILDARCH)
PK_KUNMAP_DIR         := $(srctree)/package/kmap/kunmap
PK_KUNMAP_PATCH       := $(PK_KUNMAP_DIR)/patch
PK_KUNMAP_BSBIT       := kunmap-$(PK_KUNMAP_VERSION).bsbit
PK_KUNMAP_OUT         :=
PK_KUNMAP_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_KUNMAP_TAR         := $(CONFIG_PK_KUNMAP_TAR)
PK_KUNMAP_PACKAGE     :=
PK_KUNMAP_CONFIG      := $(CONFIG_PK_KUNMAP_CONFIG)
SUB_TARGET                  += $(PK_KUNMAP_DIR)/build

PK_KUNMAP_sh = $(CONFIG_SHELL) $(PK_KUNMAP_SCRIPTS) \
                 $1X \
                 $(PK_KUNMAP_NAME)X \
                 $(PK_KUNMAP_VERSION)X \
                 $(PK_KUNMAP_SITE)X \
                 $(PK_KUNMAP_GITHUB)X \
                 $(PK_KUNMAP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KUNMAP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KUNMAP_SUBNAME)X \
                 $(CONFIG_PK_KUNMAP_CONFIG)X \
                 $(CONFIG_PK_KUNMAP_LIBPATH)X \
                 $(CONFIG_PK_KUNMAP_CPPFLAGS)X \
                 $(CONFIG_PK_KUNMAP_DPKCONFIG)X \
                 $(CONFIG_PK_KUNMAP_CFLAGS)X \
                 $(CONFIG_PK_KUNMAP_LDFLAGS)X \
                 $(CONFIG_PK_KUNMAP_CXXFLAGS)X \
                 $(CONFIG_PK_KUNMAP_ASFLAGS)X \
                 $(PK_KUNMAP_BSBIT)X \
                 $(PK_KUNMAP_BUILDARCH)X \
		 $(PK_KUNMAP_CSRCFILE)X \
                 $(CONFIG_PK_KUNMAP_SRCFILE)X \
                 $(CONFIG_PK_KUNMAP_CSRCFILE)

$(PK_KUNMAP_DIR)/build: FORCE
	$(Q)$(call PK_KUNMAP_sh,$(srctree))
