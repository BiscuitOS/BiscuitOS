################################################
#
# input_touch_app
#
################################################
PK_INPUT_TOUCH_APP_NAME        := input_touch_app
PK_INPUT_TOUCH_APP_VERSION     := $(CONFIG_PK_INPUT_TOUCH_APP_VERSION)
PK_INPUT_TOUCH_APP_SITE        := $(CONFIG_PK_INPUT_TOUCH_APP_URL)
PK_INPUT_TOUCH_APP_GITHUB      := $(CONFIG_PK_INPUT_TOUCH_APP_GITHUB)
PK_INPUT_TOUCH_APP_SUBNAME     :=
PK_INPUT_TOUCH_APP_BUILDARCH   := $(CONFIG_PK_INPUT_TOUCH_APP_BUILDARCH)
PK_INPUT_TOUCH_APP_DIR         := $(srctree)/package/input/input_touch_app
PK_INPUT_TOUCH_APP_PATCH       := $(PK_INPUT_TOUCH_APP_DIR)/patch
PK_INPUT_TOUCH_APP_BSBIT       := input_touch_app-$(PK_INPUT_TOUCH_APP_VERSION).bsbit
PK_INPUT_TOUCH_APP_OUT         :=
PK_INPUT_TOUCH_APP_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_INPUT_TOUCH_APP_TAR         := $(CONFIG_PK_INPUT_TOUCH_APP_TAR)
PK_INPUT_TOUCH_APP_PACKAGE     :=
PK_INPUT_TOUCH_APP_CONFIG      := $(CONFIG_PK_INPUT_TOUCH_APP_CONFIG)
SUB_TARGET                  += $(PK_INPUT_TOUCH_APP_DIR)/build

PK_INPUT_TOUCH_APP_sh = $(CONFIG_SHELL) $(PK_INPUT_TOUCH_APP_SCRIPTS) \
                 $1X \
                 $(PK_INPUT_TOUCH_APP_NAME)X \
                 $(PK_INPUT_TOUCH_APP_VERSION)X \
                 $(PK_INPUT_TOUCH_APP_SITE)X \
                 $(PK_INPUT_TOUCH_APP_GITHUB)X \
                 $(PK_INPUT_TOUCH_APP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_INPUT_TOUCH_APP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_INPUT_TOUCH_APP_SUBNAME)X \
                 $(CONFIG_PK_INPUT_TOUCH_APP_CONFIG)X \
                 $(CONFIG_PK_INPUT_TOUCH_APP_LIBPATH)X \
                 $(CONFIG_PK_INPUT_TOUCH_APP_CPPFLAGS)X \
                 $(CONFIG_PK_INPUT_TOUCH_APP_DPKCONFIG)X \
                 $(CONFIG_PK_INPUT_TOUCH_APP_CFLAGS)X \
                 $(CONFIG_PK_INPUT_TOUCH_APP_LDFLAGS)X \
                 $(CONFIG_PK_INPUT_TOUCH_APP_CXXFLAGS)X \
                 $(CONFIG_PK_INPUT_TOUCH_APP_ASFLAGS)X \
                 $(PK_INPUT_TOUCH_APP_BSBIT)X \
                 $(PK_INPUT_TOUCH_APP_BUILDARCH)X \
		 $(PK_INPUT_TOUCH_APP_CSRCFILE)X \
                 $(CONFIG_PK_INPUT_TOUCH_APP_SRCFILE)X \
                 $(CONFIG_PK_INPUT_TOUCH_APP_CSRCFILE)

$(PK_INPUT_TOUCH_APP_DIR)/build: FORCE
	$(Q)$(call PK_INPUT_TOUCH_APP_sh,$(srctree))
