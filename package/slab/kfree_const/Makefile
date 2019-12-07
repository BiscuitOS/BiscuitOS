################################################
#
# kfree_const
#
################################################
PK_KFREE_CONST_NAME        := kfree_const
PK_KFREE_CONST_VERSION     := $(CONFIG_PK_KFREE_CONST_VERSION)
PK_KFREE_CONST_SITE        := $(CONFIG_PK_KFREE_CONST_URL)
PK_KFREE_CONST_GITHUB      := $(CONFIG_PK_KFREE_CONST_GITHUB)
PK_KFREE_CONST_SUBNAME     :=
PK_KFREE_CONST_BUILDARCH   := $(CONFIG_PK_KFREE_CONST_BUILDARCH)
PK_KFREE_CONST_DIR         := $(srctree)/package/slab/kfree_const
PK_KFREE_CONST_PATCH       := $(PK_KFREE_CONST_DIR)/patch
PK_KFREE_CONST_BSBIT       := KFREE_CONST-$(PK_KFREE_CONST_VERSION).bsbit
PK_KFREE_CONST_OUT         :=
PK_KFREE_CONST_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_KFREE_CONST_TAR         := $(CONFIG_PK_KFREE_CONST_TAR)
PK_KFREE_CONST_PACKAGE     :=
PK_KFREE_CONST_CONFIG      := $(CONFIG_PK_KFREE_CONST_CONFIG)
SUB_TARGET                  += $(PK_KFREE_CONST_DIR)/build

PK_KFREE_CONST_sh = $(CONFIG_SHELL) $(PK_KFREE_CONST_SCRIPTS) \
                 $1X \
                 $(PK_KFREE_CONST_NAME)X \
                 $(PK_KFREE_CONST_VERSION)X \
                 $(PK_KFREE_CONST_SITE)X \
                 $(PK_KFREE_CONST_GITHUB)X \
                 $(PK_KFREE_CONST_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KFREE_CONST_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KFREE_CONST_SUBNAME)X \
                 $(CONFIG_PK_KFREE_CONST_CONFIG)X \
                 $(CONFIG_PK_KFREE_CONST_LIBPATH)X \
                 $(CONFIG_PK_KFREE_CONST_CPPFLAGS)X \
                 $(CONFIG_PK_KFREE_CONST_DPKCONFIG)X \
                 $(CONFIG_PK_KFREE_CONST_CFLAGS)X \
                 $(CONFIG_PK_KFREE_CONST_LDFLAGS)X \
                 $(CONFIG_PK_KFREE_CONST_CXXFLAGS)X \
                 $(CONFIG_PK_KFREE_CONST_ASFLAGS)X \
                 $(PK_KFREE_CONST_BSBIT)X \
                 $(PK_KFREE_CONST_BUILDARCH)X \
		 $(PK_KFREE_CONST_CSRCFILE)X \
                 $(CONFIG_PK_KFREE_CONST_SRCFILE)X \
                 $(CONFIG_PK_KFREE_CONST_CSRCFILE)

$(PK_KFREE_CONST_DIR)/build: FORCE
	$(Q)$(call PK_KFREE_CONST_sh,$(srctree))
