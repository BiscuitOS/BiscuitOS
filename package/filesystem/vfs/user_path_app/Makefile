################################################
#
# user_path_app
#
################################################
PK_USER_PATH_APP_NAME        := user_path_app
PK_USER_PATH_APP_VERSION     := $(CONFIG_PK_USER_PATH_APP_VERSION)
PK_USER_PATH_APP_SITE        := $(CONFIG_PK_USER_PATH_APP_URL)
PK_USER_PATH_APP_GITHUB      := $(CONFIG_PK_USER_PATH_APP_GITHUB)
PK_USER_PATH_APP_SUBNAME     :=
PK_USER_PATH_APP_BUILDARCH   := $(CONFIG_PK_USER_PATH_APP_BUILDARCH)
PK_USER_PATH_APP_DIR         := $(srctree)/package/filesystem/vfs/user_path_app
PK_USER_PATH_APP_PATCH       := $(PK_USER_PATH_APP_DIR)/patch
PK_USER_PATH_APP_BSBIT       := user_path_app-$(PK_USER_PATH_APP_VERSION).bsbit
PK_USER_PATH_APP_OUT         :=
PK_USER_PATH_APP_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_USER_PATH_APP_TAR         := $(CONFIG_PK_USER_PATH_APP_TAR)
PK_USER_PATH_APP_PACKAGE     :=
PK_USER_PATH_APP_CONFIG      := $(CONFIG_PK_USER_PATH_APP_CONFIG)
SUB_TARGET                  += $(PK_USER_PATH_APP_DIR)/build

PK_USER_PATH_APP_sh = $(CONFIG_SHELL) $(PK_USER_PATH_APP_SCRIPTS) \
                 $1X \
                 $(PK_USER_PATH_APP_NAME)X \
                 $(PK_USER_PATH_APP_VERSION)X \
                 $(PK_USER_PATH_APP_SITE)X \
                 $(PK_USER_PATH_APP_GITHUB)X \
                 $(PK_USER_PATH_APP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_USER_PATH_APP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_USER_PATH_APP_SUBNAME)X \
                 $(CONFIG_PK_USER_PATH_APP_CONFIG)X \
                 $(CONFIG_PK_USER_PATH_APP_LIBPATH)X \
                 $(CONFIG_PK_USER_PATH_APP_CPPFLAGS)X \
                 $(CONFIG_PK_USER_PATH_APP_DPKCONFIG)X \
                 $(CONFIG_PK_USER_PATH_APP_CFLAGS)X \
                 $(CONFIG_PK_USER_PATH_APP_LDFLAGS)X \
                 $(CONFIG_PK_USER_PATH_APP_CXXFLAGS)X \
                 $(CONFIG_PK_USER_PATH_APP_ASFLAGS)X \
                 $(PK_USER_PATH_APP_BSBIT)X \
                 $(PK_USER_PATH_APP_BUILDARCH)X \
		 $(PK_USER_PATH_APP_CSRCFILE)X \
                 $(CONFIG_PK_USER_PATH_APP_SRCFILE)X \
                 $(CONFIG_PK_USER_PATH_APP_CSRCFILE)

$(PK_USER_PATH_APP_DIR)/build: FORCE
	$(Q)$(call PK_USER_PATH_APP_sh,$(srctree))
