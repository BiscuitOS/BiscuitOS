################################################
#
# workqueue_module
#
################################################
PK_WQ_MOD_NAME        := workqueue_module
PK_WQ_MOD_VERSION     := $(CONFIG_PK_WQ_MOD_VERSION)
PK_WQ_MOD_SITE        := $(CONFIG_PK_WQ_MOD_URL)
PK_WQ_MOD_GITHUB      := $(CONFIG_PK_WQ_MOD_GITHUB)
PK_WQ_MOD_SUBNAME     :=
PK_WQ_MOD_BUILDARCH   := $(CONFIG_PK_WQ_MOD_BUILDARCH)
PK_WQ_MOD_DIR         := $(srctree)/package/workqueue/workqueue_module
PK_WQ_MOD_PATCH       := $(PK_WQ_MOD_DIR)/patch
PK_WQ_MOD_BSBIT       := workqueue_module-$(PK_WQ_MOD_VERSION).bsbit
PK_WQ_MOD_OUT         :=
PK_WQ_MOD_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_WQ_MOD_TAR         := $(CONFIG_PK_WQ_MOD_TAR)
PK_WQ_MOD_PACKAGE     :=
PK_WQ_MOD_CONFIG      := $(CONFIG_PK_WQ_MOD_CONFIG)
SUB_TARGET                  += $(PK_WQ_MOD_DIR)/build

PK_WQ_MOD_sh = $(CONFIG_SHELL) $(PK_WQ_MOD_SCRIPTS) \
                 $1X \
                 $(PK_WQ_MOD_NAME)X \
                 $(PK_WQ_MOD_VERSION)X \
                 $(PK_WQ_MOD_SITE)X \
                 $(PK_WQ_MOD_GITHUB)X \
                 $(PK_WQ_MOD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_WQ_MOD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_WQ_MOD_SUBNAME)X \
                 $(CONFIG_PK_WQ_MOD_CONFIG)X \
                 $(CONFIG_PK_WQ_MOD_LIBPATH)X \
                 $(CONFIG_PK_WQ_MOD_CPPFLAGS)X \
                 $(CONFIG_PK_WQ_MOD_DPKCONFIG)X \
                 $(CONFIG_PK_WQ_MOD_CFLAGS)X \
                 $(CONFIG_PK_WQ_MOD_LDFLAGS)X \
                 $(CONFIG_PK_WQ_MOD_CXXFLAGS)X \
                 $(CONFIG_PK_WQ_MOD_ASFLAGS)X \
                 $(PK_WQ_MOD_BSBIT)X \
                 $(PK_WQ_MOD_BUILDARCH)X \
		 $(PK_WQ_MOD_CSRCFILE)X \
                 $(CONFIG_PK_WQ_MOD_SRCFILE)X \
                 $(CONFIG_PK_WQ_MOD_CSRCFILE)

$(PK_WQ_MOD_DIR)/build: FORCE
	$(Q)$(call PK_WQ_MOD_sh,$(srctree))
