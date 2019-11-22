################################################
#
# char_app
#
################################################
PK_CHAR_APP_NAME        := char_app
PK_CHAR_APP_VERSION     := $(CONFIG_PK_CHAR_APP_VERSION)
PK_CHAR_APP_SITE        := $(CONFIG_PK_CHAR_APP_URL)
PK_CHAR_APP_GITHUB      := $(CONFIG_PK_CHAR_APP_GITHUB)
PK_CHAR_APP_SUBNAME     :=
PK_CHAR_APP_BUILDARCH   := $(CONFIG_PK_CHAR_APP_BUILDARCH)
PK_CHAR_APP_DIR         := $(srctree)/package/char/char_app
PK_CHAR_APP_PATCH       := $(PK_CHAR_APP_DIR)/patch
PK_CHAR_APP_BSBIT       := char_app-$(PK_CHAR_APP_VERSION).bsbit
PK_CHAR_APP_OUT         :=
PK_CHAR_APP_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_CHAR_APP_TAR         := $(CONFIG_PK_CHAR_APP_TAR)
PK_CHAR_APP_PACKAGE     :=
PK_CHAR_APP_CONFIG      := $(CONFIG_PK_CHAR_APP_CONFIG)
SUB_TARGET                  += $(PK_CHAR_APP_DIR)/build

PK_CHAR_APP_sh = $(CONFIG_SHELL) $(PK_CHAR_APP_SCRIPTS) \
                 $1X \
                 $(PK_CHAR_APP_NAME)X \
                 $(PK_CHAR_APP_VERSION)X \
                 $(PK_CHAR_APP_SITE)X \
                 $(PK_CHAR_APP_GITHUB)X \
                 $(PK_CHAR_APP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CHAR_APP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CHAR_APP_SUBNAME)X \
                 $(CONFIG_PK_CHAR_APP_CONFIG)X \
                 $(CONFIG_PK_CHAR_APP_LIBPATH)X \
                 $(CONFIG_PK_CHAR_APP_CPPFLAGS)X \
                 $(CONFIG_PK_CHAR_APP_DPKCONFIG)X \
                 $(CONFIG_PK_CHAR_APP_CFLAGS)X \
                 $(CONFIG_PK_CHAR_APP_LDFLAGS)X \
                 $(CONFIG_PK_CHAR_APP_CXXFLAGS)X \
                 $(CONFIG_PK_CHAR_APP_ASFLAGS)X \
                 $(PK_CHAR_APP_BSBIT)X \
                 $(PK_CHAR_APP_BUILDARCH)X \
		 $(PK_CHAR_APP_CSRCFILE)X \
                 $(CONFIG_PK_CHAR_APP_SRCFILE)X \
                 $(CONFIG_PK_CHAR_APP_CSRCFILE)

$(PK_CHAR_APP_DIR)/build: FORCE
	$(Q)$(call PK_CHAR_APP_sh,$(srctree))
