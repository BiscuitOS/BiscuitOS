################################################
#
# misc_app
#
################################################
PK_MISC_APP_NAME        := misc_app
PK_MISC_APP_VERSION     := $(CONFIG_PK_MISC_APP_VERSION)
PK_MISC_APP_SITE        := $(CONFIG_PK_MISC_APP_URL)
PK_MISC_APP_GITHUB      := $(CONFIG_PK_MISC_APP_GITHUB)
PK_MISC_APP_SUBNAME     :=
PK_MISC_APP_BUILDARCH   := $(CONFIG_PK_MISC_APP_BUILDARCH)
PK_MISC_APP_DIR         := $(srctree)/package/misc/misc_app
PK_MISC_APP_PATCH       := $(PK_MISC_APP_DIR)/patch
PK_MISC_APP_BSBIT       := misc_app-$(PK_MISC_APP_VERSION).bsbit
PK_MISC_APP_OUT         :=
PK_MISC_APP_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_MISC_APP_TAR         := $(CONFIG_PK_MISC_APP_TAR)
PK_MISC_APP_PACKAGE     :=
PK_MISC_APP_CONFIG      := $(CONFIG_PK_MISC_APP_CONFIG)
SUB_TARGET                  += $(PK_MISC_APP_DIR)/build

PK_MISC_APP_sh = $(CONFIG_SHELL) $(PK_MISC_APP_SCRIPTS) \
                 $1X \
                 $(PK_MISC_APP_NAME)X \
                 $(PK_MISC_APP_VERSION)X \
                 $(PK_MISC_APP_SITE)X \
                 $(PK_MISC_APP_GITHUB)X \
                 $(PK_MISC_APP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MISC_APP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MISC_APP_SUBNAME)X \
                 $(CONFIG_PK_MISC_APP_CONFIG)X \
                 $(CONFIG_PK_MISC_APP_LIBPATH)X \
                 $(CONFIG_PK_MISC_APP_CPPFLAGS)X \
                 $(CONFIG_PK_MISC_APP_DPKCONFIG)X \
                 $(CONFIG_PK_MISC_APP_CFLAGS)X \
                 $(CONFIG_PK_MISC_APP_LDFLAGS)X \
                 $(CONFIG_PK_MISC_APP_CXXFLAGS)X \
                 $(CONFIG_PK_MISC_APP_ASFLAGS)X \
                 $(PK_MISC_APP_BSBIT)X \
                 $(PK_MISC_APP_BUILDARCH)X \
		 $(PK_MISC_APP_CSRCFILE)X \
                 $(CONFIG_PK_MISC_APP_SRCFILE)X \
                 $(CONFIG_PK_MISC_APP_CSRCFILE)

$(PK_MISC_APP_DIR)/build: FORCE
	$(Q)$(call PK_MISC_APP_sh,$(srctree))
