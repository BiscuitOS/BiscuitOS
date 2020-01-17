################################################
#
# devres_alloc
#
################################################
PK_DEVRES_ALLOC_NAME        := devres_alloc
PK_DEVRES_ALLOC_VERSION     := $(CONFIG_PK_DEVRES_ALLOC_VERSION)
PK_DEVRES_ALLOC_SITE        := $(CONFIG_PK_DEVRES_ALLOC_URL)
PK_DEVRES_ALLOC_GITHUB      := $(CONFIG_PK_DEVRES_ALLOC_GITHUB)
PK_DEVRES_ALLOC_SUBNAME     :=
PK_DEVRES_ALLOC_BUILDARCH   := $(CONFIG_PK_DEVRES_ALLOC_BUILDARCH)
PK_DEVRES_ALLOC_DIR         := $(srctree)/package/dr/devres_alloc
PK_DEVRES_ALLOC_PATCH       := $(PK_DEVRES_ALLOC_DIR)/patch
PK_DEVRES_ALLOC_BSBIT       := devres_alloc-$(PK_DEVRES_ALLOC_VERSION).bsbit
PK_DEVRES_ALLOC_OUT         :=
PK_DEVRES_ALLOC_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_DEVRES_ALLOC_TAR         := $(CONFIG_PK_DEVRES_ALLOC_TAR)
PK_DEVRES_ALLOC_PACKAGE     :=
PK_DEVRES_ALLOC_CONFIG      := $(CONFIG_PK_DEVRES_ALLOC_CONFIG)
SUB_TARGET                  += $(PK_DEVRES_ALLOC_DIR)/build

PK_DEVRES_ALLOC_sh = $(CONFIG_SHELL) $(PK_DEVRES_ALLOC_SCRIPTS) \
                 $1X \
                 $(PK_DEVRES_ALLOC_NAME)X \
                 $(PK_DEVRES_ALLOC_VERSION)X \
                 $(PK_DEVRES_ALLOC_SITE)X \
                 $(PK_DEVRES_ALLOC_GITHUB)X \
                 $(PK_DEVRES_ALLOC_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_DEVRES_ALLOC_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_DEVRES_ALLOC_SUBNAME)X \
                 $(CONFIG_PK_DEVRES_ALLOC_CONFIG)X \
                 $(CONFIG_PK_DEVRES_ALLOC_LIBPATH)X \
                 $(CONFIG_PK_DEVRES_ALLOC_CPPFLAGS)X \
                 $(CONFIG_PK_DEVRES_ALLOC_DPKCONFIG)X \
                 $(CONFIG_PK_DEVRES_ALLOC_CFLAGS)X \
                 $(CONFIG_PK_DEVRES_ALLOC_LDFLAGS)X \
                 $(CONFIG_PK_DEVRES_ALLOC_CXXFLAGS)X \
                 $(CONFIG_PK_DEVRES_ALLOC_ASFLAGS)X \
                 $(PK_DEVRES_ALLOC_BSBIT)X \
                 $(PK_DEVRES_ALLOC_BUILDARCH)X \
		 $(PK_DEVRES_ALLOC_CSRCFILE)X \
                 $(CONFIG_PK_DEVRES_ALLOC_SRCFILE)X \
                 $(CONFIG_PK_DEVRES_ALLOC_CSRCFILE)

$(PK_DEVRES_ALLOC_DIR)/build: FORCE
	$(Q)$(call PK_DEVRES_ALLOC_sh,$(srctree))
