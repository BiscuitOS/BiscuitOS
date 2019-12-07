################################################
#
# DEFINE_IDR
#
################################################
PK_DEFINE_IDR_NAME        := DEFINE_IDR
PK_DEFINE_IDR_VERSION     := $(CONFIG_PK_DEFINE_IDR_VERSION)
PK_DEFINE_IDR_SITE        := $(CONFIG_PK_DEFINE_IDR_URL)
PK_DEFINE_IDR_GITHUB      := $(CONFIG_PK_DEFINE_IDR_GITHUB)
PK_DEFINE_IDR_SUBNAME     :=
PK_DEFINE_IDR_BUILDARCH   := $(CONFIG_PK_DEFINE_IDR_BUILDARCH)
PK_DEFINE_IDR_DIR         := $(srctree)/package/idr/DEFINE_IDR
PK_DEFINE_IDR_PATCH       := $(PK_DEFINE_IDR_DIR)/patch
PK_DEFINE_IDR_BSBIT       := DEFINE_IDR-$(PK_DEFINE_IDR_VERSION).bsbit
PK_DEFINE_IDR_OUT         :=
PK_DEFINE_IDR_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_DEFINE_IDR_TAR         := $(CONFIG_PK_DEFINE_IDR_TAR)
PK_DEFINE_IDR_PACKAGE     :=
PK_DEFINE_IDR_CONFIG      := $(CONFIG_PK_DEFINE_IDR_CONFIG)
SUB_TARGET                  += $(PK_DEFINE_IDR_DIR)/build

PK_DEFINE_IDR_sh = $(CONFIG_SHELL) $(PK_DEFINE_IDR_SCRIPTS) \
                 $1X \
                 $(PK_DEFINE_IDR_NAME)X \
                 $(PK_DEFINE_IDR_VERSION)X \
                 $(PK_DEFINE_IDR_SITE)X \
                 $(PK_DEFINE_IDR_GITHUB)X \
                 $(PK_DEFINE_IDR_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_DEFINE_IDR_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_DEFINE_IDR_SUBNAME)X \
                 $(CONFIG_PK_DEFINE_IDR_CONFIG)X \
                 $(CONFIG_PK_DEFINE_IDR_LIBPATH)X \
                 $(CONFIG_PK_DEFINE_IDR_CPPFLAGS)X \
                 $(CONFIG_PK_DEFINE_IDR_DPKCONFIG)X \
                 $(CONFIG_PK_DEFINE_IDR_CFLAGS)X \
                 $(CONFIG_PK_DEFINE_IDR_LDFLAGS)X \
                 $(CONFIG_PK_DEFINE_IDR_CXXFLAGS)X \
                 $(CONFIG_PK_DEFINE_IDR_ASFLAGS)X \
                 $(PK_DEFINE_IDR_BSBIT)X \
                 $(PK_DEFINE_IDR_BUILDARCH)X \
		 $(PK_DEFINE_IDR_CSRCFILE)X \
                 $(CONFIG_PK_DEFINE_IDR_SRCFILE)X \
                 $(CONFIG_PK_DEFINE_IDR_CSRCFILE)

$(PK_DEFINE_IDR_DIR)/build: FORCE
	$(Q)$(call PK_DEFINE_IDR_sh,$(srctree))
