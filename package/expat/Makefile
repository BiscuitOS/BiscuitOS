################################################
#
# expat
#
################################################
PK_EXPAT_NAME        := expat
PK_EXPAT_VERSION     := $(CONFIG_PK_EXPAT_VERSION)
PK_EXPAT_SITE        := $(CONFIG_PK_EXPAT_URL)
PK_EXPAT_GITHUB      := $(CONFIG_PK_EXPAT_GITHUB)
PK_EXPAT_SUBNAME     :=
PK_EXPAT_BUILDARCH   := $(CONFIG_PK_EXPAT_BUILDARCH)
PK_EXPAT_DIR         := $(srctree)/package/expat
PK_EXPAT_PATCH       := $(PK_EXPAT_DIR)/patch
PK_EXPAT_BSBIT       := expat-$(PK_EXPAT_VERSION).bsbit
PK_EXPAT_OUT         :=
PK_EXPAT_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_EXPAT_TAR         := $(CONFIG_PK_EXPAT_TAR)
PK_EXPAT_PACKAGE     :=
PK_EXPAT_CONFIG      := $(CONFIG_PK_EXPAT_CONFIG)
SUB_TARGET           += $(PK_EXPAT_DIR)/build

PK_EXPAT_sh = $(CONFIG_SHELL) $(PK_EXPAT_SCRIPTS) \
                 $1X \
                 $(PK_EXPAT_NAME)X \
                 $(PK_EXPAT_VERSION)X \
                 $(PK_EXPAT_SITE)X \
                 $(PK_EXPAT_GITHUB)X \
                 $(PK_EXPAT_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_EXPAT_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_EXPAT_SUBNAME)X \
                 $(CONFIG_PK_EXPAT_CONFIG)X \
                 $(CONFIG_PK_EXPAT_LIBPATH)X \
                 $(CONFIG_PK_EXPAT_CPPFLAGS)X \
                 $(CONFIG_PK_EXPAT_DPKCONFIG)X \
                 $(CONFIG_PK_EXPAT_CFLAGS)X \
                 $(CONFIG_PK_EXPAT_LDFLAGS)X \
                 $(CONFIG_PK_EXPAT_CXXFLAGS)X \
                 $(CONFIG_PK_EXPAT_ASFLAGS)X \
                 $(PK_EXPAT_BSBIT)X \
                 $(PK_EXPAT_BUILDARCH)X

$(PK_EXPAT_DIR)/build: FORCE
	$(Q)$(call PK_EXPAT_sh,$(srctree))
