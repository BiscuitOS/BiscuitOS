################################################
#
# App_demo
#
################################################
PK_APP_DEMO_NAME        := App_demo
PK_APP_DEMO_VERSION     := $(CONFIG_PK_APP_DEMO_VERSION)
PK_APP_DEMO_SITE        := $(CONFIG_PK_APP_DEMO_URL)
PK_APP_DEMO_GITHUB      := $(CONFIG_PK_APP_DEMO_GITHUB)
PK_APP_DEMO_SUBNAME     :=
PK_APP_DEMO_BUILDARCH   := $(CONFIG_PK_APP_DEMO_BUILDARCH)
PK_APP_DEMO_DIR         := $(srctree)/package/App_demo
PK_APP_DEMO_PATCH       := $(PK_APP_DEMO_DIR)/patch
PK_APP_DEMO_BSBIT       := App_demo-$(PK_APP_DEMO_VERSION).bsbit
PK_APP_DEMO_OUT         :=
PK_APP_DEMO_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_APP_DEMO_TAR         := $(CONFIG_PK_APP_DEMO_TAR)
PK_APP_DEMO_PACKAGE     :=
PK_APP_DEMO_CONFIG      := $(CONFIG_PK_APP_DEMO_CONFIG)
SUB_TARGET              += $(PK_APP_DEMO_DIR)/build

PK_APP_DEMO_sh = $(CONFIG_SHELL) $(PK_APP_DEMO_SCRIPTS) \
                 $1X \
                 $(PK_APP_DEMO_NAME)X \
                 $(PK_APP_DEMO_VERSION)X \
                 $(PK_APP_DEMO_SITE)X \
                 $(PK_APP_DEMO_GITHUB)X \
                 $(PK_APP_DEMO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_APP_DEMO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_APP_DEMO_SUBNAME)X \
                 $(CONFIG_PK_APP_DEMO_CONFIG)X \
                 $(CONFIG_PK_APP_DEMO_LIBPATH)X \
                 $(CONFIG_PK_APP_DEMO_CPPFLAGS)X \
                 $(CONFIG_PK_APP_DEMO_DPKCONFIG)X \
                 $(CONFIG_PK_APP_DEMO_CFLAGS)X \
                 $(CONFIG_PK_APP_DEMO_LDFLAGS)X \
                 $(CONFIG_PK_APP_DEMO_CXXFLAGS)X \
                 $(CONFIG_PK_APP_DEMO_ASFLAGS)X \
                 $(PK_APP_DEMO_BSBIT)X \
                 $(PK_APP_DEMO_BUILDARCH)X \
		 $(PK_APP_DEMO_CSRCFILE)X \
                 $(CONFIG_PK_APP_DEMO_SRCFILE)X \
                 $(CONFIG_PK_APP_DEMO_CSRCFILE)

$(PK_APP_DEMO_DIR)/build: FORCE
	$(Q)$(call PK_APP_DEMO_sh,$(srctree))
