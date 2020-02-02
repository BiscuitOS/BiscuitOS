################################################
#
# Application Project
#
################################################
PK_APP_PROJ_NAME        := Application_project
PK_APP_PROJ_VERSION     := $(CONFIG_PK_APP_PROJ_VERSION)
PK_APP_PROJ_SITE        := $(CONFIG_PK_APP_PROJ_URL)
PK_APP_PROJ_GITHUB      := $(CONFIG_PK_APP_PROJ_GITHUB)
PK_APP_PROJ_SUBNAME     :=
PK_APP_PROJ_BUILDARCH   := $(CONFIG_PK_APP_PROJ_BUILDARCH)
PK_APP_PROJ_DIR         := $(srctree)/package/module/Application_project
PK_APP_PROJ_PATCH       := $(PK_APP_PROJ_DIR)/patch
PK_APP_PROJ_BSBIT       := Application_project-$(PK_APP_PROJ_VERSION).bsbit
PK_APP_PROJ_OUT         :=
PK_APP_PROJ_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_APP_PROJ_TAR         := $(CONFIG_PK_APP_PROJ_TAR)
PK_APP_PROJ_PACKAGE     :=
PK_APP_PROJ_CONFIG      := $(CONFIG_PK_APP_PROJ_CONFIG)
SUB_TARGET                  += $(PK_APP_PROJ_DIR)/build

PK_APP_PROJ_sh = $(CONFIG_SHELL) $(PK_APP_PROJ_SCRIPTS) \
                 $1X \
                 $(PK_APP_PROJ_NAME)X \
                 $(PK_APP_PROJ_VERSION)X \
                 $(PK_APP_PROJ_SITE)X \
                 $(PK_APP_PROJ_GITHUB)X \
                 $(PK_APP_PROJ_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_APP_PROJ_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_APP_PROJ_SUBNAME)X \
                 $(CONFIG_PK_APP_PROJ_CONFIG)X \
                 $(CONFIG_PK_APP_PROJ_LIBPATH)X \
                 $(CONFIG_PK_APP_PROJ_CPPFLAGS)X \
                 $(CONFIG_PK_APP_PROJ_DPKCONFIG)X \
                 $(CONFIG_PK_APP_PROJ_CFLAGS)X \
                 $(CONFIG_PK_APP_PROJ_LDFLAGS)X \
                 $(CONFIG_PK_APP_PROJ_CXXFLAGS)X \
                 $(CONFIG_PK_APP_PROJ_ASFLAGS)X \
                 $(PK_APP_PROJ_BSBIT)X \
                 $(PK_APP_PROJ_BUILDARCH)X \
		 $(PK_APP_PROJ_CSRCFILE)X \
                 $(CONFIG_PK_APP_PROJ_SRCFILE)X \
                 $(CONFIG_PK_APP_PROJ_CSRCFILE)

$(PK_APP_PROJ_DIR)/build: FORCE
	$(Q)$(call PK_APP_PROJ_sh,$(srctree))
