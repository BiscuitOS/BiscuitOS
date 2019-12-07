################################################
#
# idr_init
#
################################################
PK_IDR_INIT_NAME        := idr_init
PK_IDR_INIT_VERSION     := $(CONFIG_PK_IDR_INIT_VERSION)
PK_IDR_INIT_SITE        := $(CONFIG_PK_IDR_INIT_URL)
PK_IDR_INIT_GITHUB      := $(CONFIG_PK_IDR_INIT_GITHUB)
PK_IDR_INIT_SUBNAME     :=
PK_IDR_INIT_BUILDARCH   := $(CONFIG_PK_IDR_INIT_BUILDARCH)
PK_IDR_INIT_DIR         := $(srctree)/package/idr/idr_init
PK_IDR_INIT_PATCH       := $(PK_IDR_INIT_DIR)/patch
PK_IDR_INIT_BSBIT       := idr_init-$(PK_IDR_INIT_VERSION).bsbit
PK_IDR_INIT_OUT         :=
PK_IDR_INIT_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_IDR_INIT_TAR         := $(CONFIG_PK_IDR_INIT_TAR)
PK_IDR_INIT_PACKAGE     :=
PK_IDR_INIT_CONFIG      := $(CONFIG_PK_IDR_INIT_CONFIG)
SUB_TARGET                  += $(PK_IDR_INIT_DIR)/build

PK_IDR_INIT_sh = $(CONFIG_SHELL) $(PK_IDR_INIT_SCRIPTS) \
                 $1X \
                 $(PK_IDR_INIT_NAME)X \
                 $(PK_IDR_INIT_VERSION)X \
                 $(PK_IDR_INIT_SITE)X \
                 $(PK_IDR_INIT_GITHUB)X \
                 $(PK_IDR_INIT_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_IDR_INIT_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_IDR_INIT_SUBNAME)X \
                 $(CONFIG_PK_IDR_INIT_CONFIG)X \
                 $(CONFIG_PK_IDR_INIT_LIBPATH)X \
                 $(CONFIG_PK_IDR_INIT_CPPFLAGS)X \
                 $(CONFIG_PK_IDR_INIT_DPKCONFIG)X \
                 $(CONFIG_PK_IDR_INIT_CFLAGS)X \
                 $(CONFIG_PK_IDR_INIT_LDFLAGS)X \
                 $(CONFIG_PK_IDR_INIT_CXXFLAGS)X \
                 $(CONFIG_PK_IDR_INIT_ASFLAGS)X \
                 $(PK_IDR_INIT_BSBIT)X \
                 $(PK_IDR_INIT_BUILDARCH)X \
		 $(PK_IDR_INIT_CSRCFILE)X \
                 $(CONFIG_PK_IDR_INIT_SRCFILE)X \
                 $(CONFIG_PK_IDR_INIT_CSRCFILE)

$(PK_IDR_INIT_DIR)/build: FORCE
	$(Q)$(call PK_IDR_INIT_sh,$(srctree))
