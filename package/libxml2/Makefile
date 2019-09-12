################################################
#
# libxml2
#
################################################
PK_LIBXML2_NAME        := libxml2
PK_LIBXML2_VERSION     := $(CONFIG_PK_LIBXML2_VERSION)
PK_LIBXML2_SITE        := $(CONFIG_PK_LIBXML2_URL)
PK_LIBXML2_GITHUB      := $(CONFIG_PK_LIBXML2_GITHUB)
PK_LIBXML2_SUBNAME     :=
PK_LIBXML2_BUILDARCH   := $(CONFIG_PK_LIBXML2_BUILDARCH)
PK_LIBXML2_DIR         := $(srctree)/package/libxml2
PK_LIBXML2_PATCH       := $(PK_LIBXML2_DIR)/patch
PK_LIBXML2_BSBIT       := libxml2-$(PK_LIBXML2_VERSION).bsbit
PK_LIBXML2_OUT         :=
PK_LIBXML2_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LIBXML2_TAR         := $(CONFIG_PK_LIBXML2_TAR)
PK_LIBXML2_PACKAGE     :=
PK_LIBXML2_CONFIG      := $(CONFIG_PK_LIBXML2_CONFIG)
SUB_TARGET             += $(PK_LIBXML2_DIR)/build

PK_LIBXML2_sh = $(CONFIG_SHELL) $(PK_LIBXML2_SCRIPTS) \
                 $1X \
                 $(PK_LIBXML2_NAME)X \
                 $(PK_LIBXML2_VERSION)X \
                 $(PK_LIBXML2_SITE)X \
                 $(PK_LIBXML2_GITHUB)X \
                 $(PK_LIBXML2_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBXML2_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBXML2_SUBNAME)X \
                 $(CONFIG_PK_LIBXML2_CONFIG)X \
                 $(CONFIG_PK_LIBXML2_LIBPATH)X \
                 $(CONFIG_PK_LIBXML2_CPPFLAGS)X \
                 $(CONFIG_PK_LIBXML2_DPKCONFIG)X \
                 $(CONFIG_PK_LIBXML2_CFLAGS)X \
                 $(CONFIG_PK_LIBXML2_LDFLAGS)X \
                 $(CONFIG_PK_LIBXML2_CXXFLAGS)X \
                 $(CONFIG_PK_LIBXML2_ASFLAGS)X \
                 $(PK_LIBXML2_BSBIT)X \
                 $(PK_LIBXML2_BUILDARCH)X

$(PK_LIBXML2_DIR)/build: FORCE
	$(Q)$(call PK_LIBXML2_sh,$(srctree))
