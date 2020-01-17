################################################
#
# devres_free
#
################################################
PK_DEVRES_FREE_NAME        := devres_free
PK_DEVRES_FREE_VERSION     := $(CONFIG_PK_DEVRES_FREE_VERSION)
PK_DEVRES_FREE_SITE        := $(CONFIG_PK_DEVRES_FREE_URL)
PK_DEVRES_FREE_GITHUB      := $(CONFIG_PK_DEVRES_FREE_GITHUB)
PK_DEVRES_FREE_SUBNAME     :=
PK_DEVRES_FREE_BUILDARCH   := $(CONFIG_PK_DEVRES_FREE_BUILDARCH)
PK_DEVRES_FREE_DIR         := $(srctree)/package/dr/devres_free
PK_DEVRES_FREE_PATCH       := $(PK_DEVRES_FREE_DIR)/patch
PK_DEVRES_FREE_BSBIT       := devres_free-$(PK_DEVRES_FREE_VERSION).bsbit
PK_DEVRES_FREE_OUT         :=
PK_DEVRES_FREE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_DEVRES_FREE_TAR         := $(CONFIG_PK_DEVRES_FREE_TAR)
PK_DEVRES_FREE_PACKAGE     :=
PK_DEVRES_FREE_CONFIG      := $(CONFIG_PK_DEVRES_FREE_CONFIG)
SUB_TARGET                  += $(PK_DEVRES_FREE_DIR)/build

PK_DEVRES_FREE_sh = $(CONFIG_SHELL) $(PK_DEVRES_FREE_SCRIPTS) \
                 $1X \
                 $(PK_DEVRES_FREE_NAME)X \
                 $(PK_DEVRES_FREE_VERSION)X \
                 $(PK_DEVRES_FREE_SITE)X \
                 $(PK_DEVRES_FREE_GITHUB)X \
                 $(PK_DEVRES_FREE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_DEVRES_FREE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_DEVRES_FREE_SUBNAME)X \
                 $(CONFIG_PK_DEVRES_FREE_CONFIG)X \
                 $(CONFIG_PK_DEVRES_FREE_LIBPATH)X \
                 $(CONFIG_PK_DEVRES_FREE_CPPFLAGS)X \
                 $(CONFIG_PK_DEVRES_FREE_DPKCONFIG)X \
                 $(CONFIG_PK_DEVRES_FREE_CFLAGS)X \
                 $(CONFIG_PK_DEVRES_FREE_LDFLAGS)X \
                 $(CONFIG_PK_DEVRES_FREE_CXXFLAGS)X \
                 $(CONFIG_PK_DEVRES_FREE_ASFLAGS)X \
                 $(PK_DEVRES_FREE_BSBIT)X \
                 $(PK_DEVRES_FREE_BUILDARCH)X \
		 $(PK_DEVRES_FREE_CSRCFILE)X \
                 $(CONFIG_PK_DEVRES_FREE_SRCFILE)X \
                 $(CONFIG_PK_DEVRES_FREE_CSRCFILE)

$(PK_DEVRES_FREE_DIR)/build: FORCE
	$(Q)$(call PK_DEVRES_FREE_sh,$(srctree))
