################################################
#
# vfree
#
################################################
PK_VFREE_NAME        := vfree
PK_VFREE_VERSION     := $(CONFIG_PK_VFREE_VERSION)
PK_VFREE_SITE        := $(CONFIG_PK_VFREE_URL)
PK_VFREE_GITHUB      := $(CONFIG_PK_VFREE_GITHUB)
PK_VFREE_SUBNAME     :=
PK_VFREE_BUILDARCH   := $(CONFIG_PK_VFREE_BUILDARCH)
PK_VFREE_DIR         := $(srctree)/package/vmalloc/vfree
PK_VFREE_PATCH       := $(PK_VFREE_DIR)/patch
PK_VFREE_BSBIT       := vfree-$(PK_VFREE_VERSION).bsbit
PK_VFREE_OUT         :=
PK_VFREE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_VFREE_TAR         := $(CONFIG_PK_VFREE_TAR)
PK_VFREE_PACKAGE     :=
PK_VFREE_CONFIG      := $(CONFIG_PK_VFREE_CONFIG)
SUB_TARGET                  += $(PK_VFREE_DIR)/build

PK_VFREE_sh = $(CONFIG_SHELL) $(PK_VFREE_SCRIPTS) \
                 $1X \
                 $(PK_VFREE_NAME)X \
                 $(PK_VFREE_VERSION)X \
                 $(PK_VFREE_SITE)X \
                 $(PK_VFREE_GITHUB)X \
                 $(PK_VFREE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_VFREE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_VFREE_SUBNAME)X \
                 $(CONFIG_PK_VFREE_CONFIG)X \
                 $(CONFIG_PK_VFREE_LIBPATH)X \
                 $(CONFIG_PK_VFREE_CPPFLAGS)X \
                 $(CONFIG_PK_VFREE_DPKCONFIG)X \
                 $(CONFIG_PK_VFREE_CFLAGS)X \
                 $(CONFIG_PK_VFREE_LDFLAGS)X \
                 $(CONFIG_PK_VFREE_CXXFLAGS)X \
                 $(CONFIG_PK_VFREE_ASFLAGS)X \
                 $(PK_VFREE_BSBIT)X \
                 $(PK_VFREE_BUILDARCH)X \
		 $(PK_VFREE_CSRCFILE)X \
                 $(CONFIG_PK_VFREE_SRCFILE)X \
                 $(CONFIG_PK_VFREE_CSRCFILE)

$(PK_VFREE_DIR)/build: FORCE
	$(Q)$(call PK_VFREE_sh,$(srctree))
