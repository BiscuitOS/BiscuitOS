################################################
#
# LDD_CMA_module
#
################################################
PK_LDD_CMA_MOD_NAME        := LDD_CMA_module
PK_LDD_CMA_MOD_VERSION     := $(CONFIG_PK_LDD_CMA_MOD_VERSION)
PK_LDD_CMA_MOD_SITE        := $(CONFIG_PK_LDD_CMA_MOD_URL)
PK_LDD_CMA_MOD_GITHUB      := $(CONFIG_PK_LDD_CMA_MOD_GITHUB)
PK_LDD_CMA_MOD_SUBNAME     :=
PK_LDD_CMA_MOD_BUILDARCH   := $(CONFIG_PK_LDD_CMA_MOD_BUILDARCH)
PK_LDD_CMA_MOD_DIR         := $(srctree)/package/LDD_CMA_module
PK_LDD_CMA_MOD_PATCH       := $(PK_LDD_CMA_MOD_DIR)/patch
PK_LDD_CMA_MOD_BSBIT       := LDD_CMA_module-$(PK_LDD_CMA_MOD_VERSION).bsbit
PK_LDD_CMA_MOD_OUT         :=
PK_LDD_CMA_MOD_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_LDD_CMA_MOD_TAR         := $(CONFIG_PK_LDD_CMA_MOD_TAR)
PK_LDD_CMA_MOD_PACKAGE     :=
PK_LDD_CMA_MOD_CONFIG      := $(CONFIG_PK_LDD_CMA_MOD_CONFIG)
SUB_TARGET                  += $(PK_LDD_CMA_MOD_DIR)/build

PK_LDD_CMA_MOD_sh = $(CONFIG_SHELL) $(PK_LDD_CMA_MOD_SCRIPTS) \
                 $1X \
                 $(PK_LDD_CMA_MOD_NAME)X \
                 $(PK_LDD_CMA_MOD_VERSION)X \
                 $(PK_LDD_CMA_MOD_SITE)X \
                 $(PK_LDD_CMA_MOD_GITHUB)X \
                 $(PK_LDD_CMA_MOD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LDD_CMA_MOD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LDD_CMA_MOD_SUBNAME)X \
                 $(CONFIG_PK_LDD_CMA_MOD_CONFIG)X \
                 $(CONFIG_PK_LDD_CMA_MOD_LIBPATH)X \
                 $(CONFIG_PK_LDD_CMA_MOD_CPPFLAGS)X \
                 $(CONFIG_PK_LDD_CMA_MOD_DPKCONFIG)X \
                 $(CONFIG_PK_LDD_CMA_MOD_CFLAGS)X \
                 $(CONFIG_PK_LDD_CMA_MOD_LDFLAGS)X \
                 $(CONFIG_PK_LDD_CMA_MOD_CXXFLAGS)X \
                 $(CONFIG_PK_LDD_CMA_MOD_ASFLAGS)X \
                 $(PK_LDD_CMA_MOD_BSBIT)X \
                 $(PK_LDD_CMA_MOD_BUILDARCH)X \
		 $(PK_LDD_CMA_MOD_CSRCFILE)X \
                 $(CONFIG_PK_LDD_CMA_MOD_SRCFILE)X \
                 $(CONFIG_PK_LDD_CMA_MOD_CSRCFILE)

$(PK_LDD_CMA_MOD_DIR)/build: FORCE
	$(Q)$(call PK_LDD_CMA_MOD_sh,$(srctree))
