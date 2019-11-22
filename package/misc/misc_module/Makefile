################################################
#
# misc_module
#
################################################
PK_MISC_MOD_NAME        := misc_module
PK_MISC_MOD_VERSION     := $(CONFIG_PK_MISC_MOD_VERSION)
PK_MISC_MOD_SITE        := $(CONFIG_PK_MISC_MOD_URL)
PK_MISC_MOD_GITHUB      := $(CONFIG_PK_MISC_MOD_GITHUB)
PK_MISC_MOD_SUBNAME     :=
PK_MISC_MOD_BUILDARCH   := $(CONFIG_PK_MISC_MOD_BUILDARCH)
PK_MISC_MOD_DIR         := $(srctree)/package/misc/misc_module
PK_MISC_MOD_PATCH       := $(PK_MISC_MOD_DIR)/patch
PK_MISC_MOD_BSBIT       := misc_module-$(PK_MISC_MOD_VERSION).bsbit
PK_MISC_MOD_OUT         :=
PK_MISC_MOD_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_MISC_MOD_TAR         := $(CONFIG_PK_MISC_MOD_TAR)
PK_MISC_MOD_PACKAGE     :=
PK_MISC_MOD_CONFIG      := $(CONFIG_PK_MISC_MOD_CONFIG)
SUB_TARGET                  += $(PK_MISC_MOD_DIR)/build

PK_MISC_MOD_sh = $(CONFIG_SHELL) $(PK_MISC_MOD_SCRIPTS) \
                 $1X \
                 $(PK_MISC_MOD_NAME)X \
                 $(PK_MISC_MOD_VERSION)X \
                 $(PK_MISC_MOD_SITE)X \
                 $(PK_MISC_MOD_GITHUB)X \
                 $(PK_MISC_MOD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MISC_MOD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MISC_MOD_SUBNAME)X \
                 $(CONFIG_PK_MISC_MOD_CONFIG)X \
                 $(CONFIG_PK_MISC_MOD_LIBPATH)X \
                 $(CONFIG_PK_MISC_MOD_CPPFLAGS)X \
                 $(CONFIG_PK_MISC_MOD_DPKCONFIG)X \
                 $(CONFIG_PK_MISC_MOD_CFLAGS)X \
                 $(CONFIG_PK_MISC_MOD_LDFLAGS)X \
                 $(CONFIG_PK_MISC_MOD_CXXFLAGS)X \
                 $(CONFIG_PK_MISC_MOD_ASFLAGS)X \
                 $(PK_MISC_MOD_BSBIT)X \
                 $(PK_MISC_MOD_BUILDARCH)X \
		 $(PK_MISC_MOD_CSRCFILE)X \
                 $(CONFIG_PK_MISC_MOD_SRCFILE)X \
                 $(CONFIG_PK_MISC_MOD_CSRCFILE)

$(PK_MISC_MOD_DIR)/build: FORCE
	$(Q)$(call PK_MISC_MOD_sh,$(srctree))
