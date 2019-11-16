################################################
#
# lm75a_module
#
################################################
PK_LM75A_MOD_NAME        := lm75a_module
PK_LM75A_MOD_VERSION     := $(CONFIG_PK_LM75A_MOD_VERSION)
PK_LM75A_MOD_SITE        := $(CONFIG_PK_LM75A_MOD_URL)
PK_LM75A_MOD_GITHUB      := $(CONFIG_PK_LM75A_MOD_GITHUB)
PK_LM75A_MOD_SUBNAME     :=
PK_LM75A_MOD_BUILDARCH   := $(CONFIG_PK_LM75A_MOD_BUILDARCH)
PK_LM75A_MOD_DIR         := $(srctree)/package/lm75a_module
PK_LM75A_MOD_PATCH       := $(PK_LM75A_MOD_DIR)/patch
PK_LM75A_MOD_BSBIT       := lm75a_module-$(PK_LM75A_MOD_VERSION).bsbit
PK_LM75A_MOD_OUT         :=
PK_LM75A_MOD_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_LM75A_MOD_TAR         := $(CONFIG_PK_LM75A_MOD_TAR)
PK_LM75A_MOD_PACKAGE     :=
PK_LM75A_MOD_CONFIG      := $(CONFIG_PK_LM75A_MOD_CONFIG)
SUB_TARGET               += $(PK_LM75A_MOD_DIR)/build

PK_LM75A_MOD_sh = $(CONFIG_SHELL) $(PK_LM75A_MOD_SCRIPTS) \
                 $1X \
                 $(PK_LM75A_MOD_NAME)X \
                 $(PK_LM75A_MOD_VERSION)X \
                 $(PK_LM75A_MOD_SITE)X \
                 $(PK_LM75A_MOD_GITHUB)X \
                 $(PK_LM75A_MOD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LM75A_MOD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LM75A_MOD_SUBNAME)X \
                 $(CONFIG_PK_LM75A_MOD_CONFIG)X \
                 $(CONFIG_PK_LM75A_MOD_LIBPATH)X \
                 $(CONFIG_PK_LM75A_MOD_CPPFLAGS)X \
                 $(CONFIG_PK_LM75A_MOD_DPKCONFIG)X \
                 $(CONFIG_PK_LM75A_MOD_CFLAGS)X \
                 $(CONFIG_PK_LM75A_MOD_LDFLAGS)X \
                 $(CONFIG_PK_LM75A_MOD_CXXFLAGS)X \
                 $(CONFIG_PK_LM75A_MOD_ASFLAGS)X \
                 $(PK_LM75A_MOD_BSBIT)X \
                 $(PK_LM75A_MOD_BUILDARCH)X \
		 $(PK_LM75A_MOD_CSRCFILE)X \
                 $(CONFIG_PK_LM75A_MOD_SRCFILE)X \
                 $(CONFIG_PK_LM75A_MOD_CSRCFILE)

$(PK_LM75A_MOD_DIR)/build: FORCE
	$(Q)$(call PK_LM75A_MOD_sh,$(srctree))
