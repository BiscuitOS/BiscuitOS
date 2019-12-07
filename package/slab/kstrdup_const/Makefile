################################################
#
# kstrdup_const
#
################################################
PK_KSTRDUP_CONST_NAME        := kstrdup_const
PK_KSTRDUP_CONST_VERSION     := $(CONFIG_PK_KSTRDUP_CONST_VERSION)
PK_KSTRDUP_CONST_SITE        := $(CONFIG_PK_KSTRDUP_CONST_URL)
PK_KSTRDUP_CONST_GITHUB      := $(CONFIG_PK_KSTRDUP_CONST_GITHUB)
PK_KSTRDUP_CONST_SUBNAME     :=
PK_KSTRDUP_CONST_BUILDARCH   := $(CONFIG_PK_KSTRDUP_CONST_BUILDARCH)
PK_KSTRDUP_CONST_DIR         := $(srctree)/package/slab/kstrdup_const
PK_KSTRDUP_CONST_PATCH       := $(PK_KSTRDUP_CONST_DIR)/patch
PK_KSTRDUP_CONST_BSBIT       := KSTRDUP_CONST-$(PK_KSTRDUP_CONST_VERSION).bsbit
PK_KSTRDUP_CONST_OUT         :=
PK_KSTRDUP_CONST_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_KSTRDUP_CONST_TAR         := $(CONFIG_PK_KSTRDUP_CONST_TAR)
PK_KSTRDUP_CONST_PACKAGE     :=
PK_KSTRDUP_CONST_CONFIG      := $(CONFIG_PK_KSTRDUP_CONST_CONFIG)
SUB_TARGET                  += $(PK_KSTRDUP_CONST_DIR)/build

PK_KSTRDUP_CONST_sh = $(CONFIG_SHELL) $(PK_KSTRDUP_CONST_SCRIPTS) \
                 $1X \
                 $(PK_KSTRDUP_CONST_NAME)X \
                 $(PK_KSTRDUP_CONST_VERSION)X \
                 $(PK_KSTRDUP_CONST_SITE)X \
                 $(PK_KSTRDUP_CONST_GITHUB)X \
                 $(PK_KSTRDUP_CONST_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KSTRDUP_CONST_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KSTRDUP_CONST_SUBNAME)X \
                 $(CONFIG_PK_KSTRDUP_CONST_CONFIG)X \
                 $(CONFIG_PK_KSTRDUP_CONST_LIBPATH)X \
                 $(CONFIG_PK_KSTRDUP_CONST_CPPFLAGS)X \
                 $(CONFIG_PK_KSTRDUP_CONST_DPKCONFIG)X \
                 $(CONFIG_PK_KSTRDUP_CONST_CFLAGS)X \
                 $(CONFIG_PK_KSTRDUP_CONST_LDFLAGS)X \
                 $(CONFIG_PK_KSTRDUP_CONST_CXXFLAGS)X \
                 $(CONFIG_PK_KSTRDUP_CONST_ASFLAGS)X \
                 $(PK_KSTRDUP_CONST_BSBIT)X \
                 $(PK_KSTRDUP_CONST_BUILDARCH)X \
		 $(PK_KSTRDUP_CONST_CSRCFILE)X \
                 $(CONFIG_PK_KSTRDUP_CONST_SRCFILE)X \
                 $(CONFIG_PK_KSTRDUP_CONST_CSRCFILE)

$(PK_KSTRDUP_CONST_DIR)/build: FORCE
	$(Q)$(call PK_KSTRDUP_CONST_sh,$(srctree))
