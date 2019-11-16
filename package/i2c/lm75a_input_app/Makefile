################################################
#
# lm75a_input_app
#
################################################
PK_LM75A_INPUT_APP_NAME        := lm75a_input_app
PK_LM75A_INPUT_APP_VERSION     := $(CONFIG_PK_LM75A_INPUT_APP_VERSION)
PK_LM75A_INPUT_APP_SITE        := $(CONFIG_PK_LM75A_INPUT_APP_URL)
PK_LM75A_INPUT_APP_GITHUB      := $(CONFIG_PK_LM75A_INPUT_APP_GITHUB)
PK_LM75A_INPUT_APP_SUBNAME     :=
PK_LM75A_INPUT_APP_BUILDARCH   := $(CONFIG_PK_LM75A_INPUT_APP_BUILDARCH)
PK_LM75A_INPUT_APP_DIR         := $(srctree)/package/i2c/lm75a_input_app
PK_LM75A_INPUT_APP_PATCH       := $(PK_LM75A_INPUT_APP_DIR)/patch
PK_LM75A_INPUT_APP_BSBIT       := lm75a_input_app-$(PK_LM75A_INPUT_APP_VERSION).bsbit
PK_LM75A_INPUT_APP_OUT         :=
PK_LM75A_INPUT_APP_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_LM75A_INPUT_APP_TAR         := $(CONFIG_PK_LM75A_INPUT_APP_TAR)
PK_LM75A_INPUT_APP_PACKAGE     :=
PK_LM75A_INPUT_APP_CONFIG      := $(CONFIG_PK_LM75A_INPUT_APP_CONFIG)
SUB_TARGET                  += $(PK_LM75A_INPUT_APP_DIR)/build

PK_LM75A_INPUT_APP_sh = $(CONFIG_SHELL) $(PK_LM75A_INPUT_APP_SCRIPTS) \
                 $1X \
                 $(PK_LM75A_INPUT_APP_NAME)X \
                 $(PK_LM75A_INPUT_APP_VERSION)X \
                 $(PK_LM75A_INPUT_APP_SITE)X \
                 $(PK_LM75A_INPUT_APP_GITHUB)X \
                 $(PK_LM75A_INPUT_APP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LM75A_INPUT_APP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LM75A_INPUT_APP_SUBNAME)X \
                 $(CONFIG_PK_LM75A_INPUT_APP_CONFIG)X \
                 $(CONFIG_PK_LM75A_INPUT_APP_LIBPATH)X \
                 $(CONFIG_PK_LM75A_INPUT_APP_CPPFLAGS)X \
                 $(CONFIG_PK_LM75A_INPUT_APP_DPKCONFIG)X \
                 $(CONFIG_PK_LM75A_INPUT_APP_CFLAGS)X \
                 $(CONFIG_PK_LM75A_INPUT_APP_LDFLAGS)X \
                 $(CONFIG_PK_LM75A_INPUT_APP_CXXFLAGS)X \
                 $(CONFIG_PK_LM75A_INPUT_APP_ASFLAGS)X \
                 $(PK_LM75A_INPUT_APP_BSBIT)X \
                 $(PK_LM75A_INPUT_APP_BUILDARCH)X \
		 $(PK_LM75A_INPUT_APP_CSRCFILE)X \
                 $(CONFIG_PK_LM75A_INPUT_APP_SRCFILE)X \
                 $(CONFIG_PK_LM75A_INPUT_APP_CSRCFILE)X \

$(PK_LM75A_INPUT_APP_DIR)/build: FORCE
	$(Q)$(call PK_LM75A_INPUT_APP_sh,$(srctree))
