################################################
#
# BiscuitOS-xa_init_flags
#
################################################
PK_XA_INIT_FLAGS_NAME        := BiscuitOS-xa_init_flags
PK_XA_INIT_FLAGS_VERSION     := $(CONFIG_PK_XA_INIT_FLAGS_VERSION)
PK_XA_INIT_FLAGS_SITE        := $(CONFIG_PK_XA_INIT_FLAGS_URL)
PK_XA_INIT_FLAGS_GITHUB      := $(CONFIG_PK_XA_INIT_FLAGS_GITHUB)
PK_XA_INIT_FLAGS_SUBNAME     :=
PK_XA_INIT_FLAGS_BUILDARCH   := $(CONFIG_PK_XA_INIT_FLAGS_BUILDARCH)
PK_XA_INIT_FLAGS_DIR         := $(srctree)/package/xarray/xa_init_flags
PK_XA_INIT_FLAGS_PATCH       := $(PK_XA_INIT_FLAGS_DIR)/patch
PK_XA_INIT_FLAGS_BSBIT       := BiscuitOS-xa_init_flags-$(PK_XA_INIT_FLAGS_VERSION).bsbit
PK_XA_INIT_FLAGS_OUT         :=
PK_XA_INIT_FLAGS_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_XA_INIT_FLAGS_TAR         := $(CONFIG_PK_XA_INIT_FLAGS_TAR)
PK_XA_INIT_FLAGS_PACKAGE     :=
PK_XA_INIT_FLAGS_CONFIG      := $(CONFIG_PK_XA_INIT_FLAGS_CONFIG)
SUB_TARGET                  += $(PK_XA_INIT_FLAGS_DIR)/build

PK_XA_INIT_FLAGS_sh = $(CONFIG_SHELL) $(PK_XA_INIT_FLAGS_SCRIPTS) \
                 $1X \
                 $(PK_XA_INIT_FLAGS_NAME)X \
                 $(PK_XA_INIT_FLAGS_VERSION)X \
                 $(PK_XA_INIT_FLAGS_SITE)X \
                 $(PK_XA_INIT_FLAGS_GITHUB)X \
                 $(PK_XA_INIT_FLAGS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_XA_INIT_FLAGS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_XA_INIT_FLAGS_SUBNAME)X \
                 $(CONFIG_PK_XA_INIT_FLAGS_CONFIG)X \
                 $(CONFIG_PK_XA_INIT_FLAGS_LIBPATH)X \
                 $(CONFIG_PK_XA_INIT_FLAGS_CPPFLAGS)X \
                 $(CONFIG_PK_XA_INIT_FLAGS_DPKCONFIG)X \
                 $(CONFIG_PK_XA_INIT_FLAGS_CFLAGS)X \
                 $(CONFIG_PK_XA_INIT_FLAGS_LDFLAGS)X \
                 $(CONFIG_PK_XA_INIT_FLAGS_CXXFLAGS)X \
                 $(CONFIG_PK_XA_INIT_FLAGS_ASFLAGS)X \
                 $(PK_XA_INIT_FLAGS_BSBIT)X \
                 $(PK_XA_INIT_FLAGS_BUILDARCH)X \
		 $(PK_XA_INIT_FLAGS_CSRCFILE)X \
                 $(CONFIG_PK_XA_INIT_FLAGS_SRCFILE)X \
                 $(CONFIG_PK_XA_INIT_FLAGS_CSRCFILE)

$(PK_XA_INIT_FLAGS_DIR)/build: FORCE
	$(Q)$(call PK_XA_INIT_FLAGS_sh,$(srctree))
