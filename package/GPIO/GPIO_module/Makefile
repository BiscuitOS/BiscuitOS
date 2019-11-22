################################################
#
# GPIO_module
#
################################################
PK_GPIO_MOD_NAME        := GPIO_module
PK_GPIO_MOD_VERSION     := $(CONFIG_PK_GPIO_MOD_VERSION)
PK_GPIO_MOD_SITE        := $(CONFIG_PK_GPIO_MOD_URL)
PK_GPIO_MOD_GITHUB      := $(CONFIG_PK_GPIO_MOD_GITHUB)
PK_GPIO_MOD_SUBNAME     :=
PK_GPIO_MOD_BUILDARCH   := $(CONFIG_PK_GPIO_MOD_BUILDARCH)
PK_GPIO_MOD_DIR         := $(srctree)/package/GPIO/GPIO_module
PK_GPIO_MOD_PATCH       := $(PK_GPIO_MOD_DIR)/patch
PK_GPIO_MOD_BSBIT       := GPIO_module-$(PK_GPIO_MOD_VERSION).bsbit
PK_GPIO_MOD_OUT         :=
PK_GPIO_MOD_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_GPIO_MOD_TAR         := $(CONFIG_PK_GPIO_MOD_TAR)
PK_GPIO_MOD_PACKAGE     :=
PK_GPIO_MOD_CONFIG      := $(CONFIG_PK_GPIO_MOD_CONFIG)
SUB_TARGET                  += $(PK_GPIO_MOD_DIR)/build

PK_GPIO_MOD_sh = $(CONFIG_SHELL) $(PK_GPIO_MOD_SCRIPTS) \
                 $1X \
                 $(PK_GPIO_MOD_NAME)X \
                 $(PK_GPIO_MOD_VERSION)X \
                 $(PK_GPIO_MOD_SITE)X \
                 $(PK_GPIO_MOD_GITHUB)X \
                 $(PK_GPIO_MOD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_GPIO_MOD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_GPIO_MOD_SUBNAME)X \
                 $(CONFIG_PK_GPIO_MOD_CONFIG)X \
                 $(CONFIG_PK_GPIO_MOD_LIBPATH)X \
                 $(CONFIG_PK_GPIO_MOD_CPPFLAGS)X \
                 $(CONFIG_PK_GPIO_MOD_DPKCONFIG)X \
                 $(CONFIG_PK_GPIO_MOD_CFLAGS)X \
                 $(CONFIG_PK_GPIO_MOD_LDFLAGS)X \
                 $(CONFIG_PK_GPIO_MOD_CXXFLAGS)X \
                 $(CONFIG_PK_GPIO_MOD_ASFLAGS)X \
                 $(PK_GPIO_MOD_BSBIT)X \
                 $(PK_GPIO_MOD_BUILDARCH)X \
		 $(PK_GPIO_MOD_CSRCFILE)X \
                 $(CONFIG_PK_GPIO_MOD_SRCFILE)X \
                 $(CONFIG_PK_GPIO_MOD_CSRCFILE)

$(PK_GPIO_MOD_DIR)/build: FORCE
	$(Q)$(call PK_GPIO_MOD_sh,$(srctree))
