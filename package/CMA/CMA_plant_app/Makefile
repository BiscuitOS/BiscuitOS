################################################
#
# CMA_plant_app
#
################################################
PK_CMA_PLANT_APP_NAME        := CMA_plant_app
PK_CMA_PLANT_APP_VERSION     := $(CONFIG_PK_CMA_PLANT_APP_VERSION)
PK_CMA_PLANT_APP_SITE        := $(CONFIG_PK_CMA_PLANT_APP_URL)
PK_CMA_PLANT_APP_GITHUB      := $(CONFIG_PK_CMA_PLANT_APP_GITHUB)
PK_CMA_PLANT_APP_SUBNAME     :=
PK_CMA_PLANT_APP_BUILDARCH   := $(CONFIG_PK_CMA_PLANT_APP_BUILDARCH)
PK_CMA_PLANT_APP_DIR         := $(srctree)/package/CMA/CMA_plant_app
PK_CMA_PLANT_APP_PATCH       := $(PK_CMA_PLANT_APP_DIR)/patch
PK_CMA_PLANT_APP_BSBIT       := CMA_plant_app-$(PK_CMA_PLANT_APP_VERSION).bsbit
PK_CMA_PLANT_APP_OUT         :=
PK_CMA_PLANT_APP_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_CMA_PLANT_APP_TAR         := $(CONFIG_PK_CMA_PLANT_APP_TAR)
PK_CMA_PLANT_APP_PACKAGE     :=
PK_CMA_PLANT_APP_CONFIG      := $(CONFIG_PK_CMA_PLANT_APP_CONFIG)
SUB_TARGET                  += $(PK_CMA_PLANT_APP_DIR)/build

PK_CMA_PLANT_APP_sh = $(CONFIG_SHELL) $(PK_CMA_PLANT_APP_SCRIPTS) \
                 $1X \
                 $(PK_CMA_PLANT_APP_NAME)X \
                 $(PK_CMA_PLANT_APP_VERSION)X \
                 $(PK_CMA_PLANT_APP_SITE)X \
                 $(PK_CMA_PLANT_APP_GITHUB)X \
                 $(PK_CMA_PLANT_APP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CMA_PLANT_APP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CMA_PLANT_APP_SUBNAME)X \
                 $(CONFIG_PK_CMA_PLANT_APP_CONFIG)X \
                 $(CONFIG_PK_CMA_PLANT_APP_LIBPATH)X \
                 $(CONFIG_PK_CMA_PLANT_APP_CPPFLAGS)X \
                 $(CONFIG_PK_CMA_PLANT_APP_DPKCONFIG)X \
                 $(CONFIG_PK_CMA_PLANT_APP_CFLAGS)X \
                 $(CONFIG_PK_CMA_PLANT_APP_LDFLAGS)X \
                 $(CONFIG_PK_CMA_PLANT_APP_CXXFLAGS)X \
                 $(CONFIG_PK_CMA_PLANT_APP_ASFLAGS)X \
                 $(PK_CMA_PLANT_APP_BSBIT)X \
                 $(PK_CMA_PLANT_APP_BUILDARCH)X \
		 $(PK_CMA_PLANT_APP_CSRCFILE)X \
                 $(CONFIG_PK_CMA_PLANT_APP_SRCFILE)X \
                 $(CONFIG_PK_CMA_PLANT_APP_CSRCFILE)

$(PK_CMA_PLANT_APP_DIR)/build: FORCE
	$(Q)$(call PK_CMA_PLANT_APP_sh,$(srctree))
