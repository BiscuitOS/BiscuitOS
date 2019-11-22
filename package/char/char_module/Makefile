################################################
#
# char_module
#
################################################
PK_CHAR_MOD_NAME        := char_module
PK_CHAR_MOD_VERSION     := $(CONFIG_PK_CHAR_MOD_VERSION)
PK_CHAR_MOD_SITE        := $(CONFIG_PK_CHAR_MOD_URL)
PK_CHAR_MOD_GITHUB      := $(CONFIG_PK_CHAR_MOD_GITHUB)
PK_CHAR_MOD_SUBNAME     :=
PK_CHAR_MOD_BUILDARCH   := $(CONFIG_PK_CHAR_MOD_BUILDARCH)
PK_CHAR_MOD_DIR         := $(srctree)/package/char/char_module
PK_CHAR_MOD_PATCH       := $(PK_CHAR_MOD_DIR)/patch
PK_CHAR_MOD_BSBIT       := char_module-$(PK_CHAR_MOD_VERSION).bsbit
PK_CHAR_MOD_OUT         :=
PK_CHAR_MOD_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_CHAR_MOD_TAR         := $(CONFIG_PK_CHAR_MOD_TAR)
PK_CHAR_MOD_PACKAGE     :=
PK_CHAR_MOD_CONFIG      := $(CONFIG_PK_CHAR_MOD_CONFIG)
SUB_TARGET                  += $(PK_CHAR_MOD_DIR)/build

PK_CHAR_MOD_sh = $(CONFIG_SHELL) $(PK_CHAR_MOD_SCRIPTS) \
                 $1X \
                 $(PK_CHAR_MOD_NAME)X \
                 $(PK_CHAR_MOD_VERSION)X \
                 $(PK_CHAR_MOD_SITE)X \
                 $(PK_CHAR_MOD_GITHUB)X \
                 $(PK_CHAR_MOD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CHAR_MOD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CHAR_MOD_SUBNAME)X \
                 $(CONFIG_PK_CHAR_MOD_CONFIG)X \
                 $(CONFIG_PK_CHAR_MOD_LIBPATH)X \
                 $(CONFIG_PK_CHAR_MOD_CPPFLAGS)X \
                 $(CONFIG_PK_CHAR_MOD_DPKCONFIG)X \
                 $(CONFIG_PK_CHAR_MOD_CFLAGS)X \
                 $(CONFIG_PK_CHAR_MOD_LDFLAGS)X \
                 $(CONFIG_PK_CHAR_MOD_CXXFLAGS)X \
                 $(CONFIG_PK_CHAR_MOD_ASFLAGS)X \
                 $(PK_CHAR_MOD_BSBIT)X \
                 $(PK_CHAR_MOD_BUILDARCH)X \
		 $(PK_CHAR_MOD_CSRCFILE)X \
                 $(CONFIG_PK_CHAR_MOD_SRCFILE)X \
                 $(CONFIG_PK_CHAR_MOD_CSRCFILE)

$(PK_CHAR_MOD_DIR)/build: FORCE
	$(Q)$(call PK_CHAR_MOD_sh,$(srctree))
