################################################
#
# libpciaccess
#
################################################
PK_LIBPCIACCESS_NAME        := libpciaccess
PK_LIBPCIACCESS_VERSION     := $(CONFIG_PK_LIBPCIACCESS_VERSION)
PK_LIBPCIACCESS_SITE        := $(CONFIG_PK_LIBPCIACCESS_URL)
PK_LIBPCIACCESS_GITHUB      := $(CONFIG_PK_LIBPCIACCESS_GITHUB)
PK_LIBPCIACCESS_SUBNAME     :=
PK_LIBPCIACCESS_BUILDARCH   := $(CONFIG_PK_LIBPCIACCESS_BUILDARCH)
PK_LIBPCIACCESS_DIR         := $(srctree)/package/libpciaccess
PK_LIBPCIACCESS_PATCH       := $(PK_LIBPCIACCESS_DIR)/patch
PK_LIBPCIACCESS_BSBIT       := libpciaccess-$(PK_LIBPCIACCESS_VERSION).bsbit
PK_LIBPCIACCESS_OUT         :=
PK_LIBPCIACCESS_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LIBPCIACCESS_TAR         := $(CONFIG_PK_LIBPCIACCESS_TAR)
PK_LIBPCIACCESS_PACKAGE     :=
PK_LIBPCIACCESS_CONFIG      := $(CONFIG_PK_LIBPCIACCESS_CONFIG)
SUB_TARGET                  += $(PK_LIBPCIACCESS_DIR)/build

PK_LIBPCIACCESS_sh = $(CONFIG_SHELL) $(PK_LIBPCIACCESS_SCRIPTS) \
                 $1X \
                 $(PK_LIBPCIACCESS_NAME)X \
                 $(PK_LIBPCIACCESS_VERSION)X \
                 $(PK_LIBPCIACCESS_SITE)X \
                 $(PK_LIBPCIACCESS_GITHUB)X \
                 $(PK_LIBPCIACCESS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBPCIACCESS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBPCIACCESS_SUBNAME)X \
                 $(CONFIG_PK_LIBPCIACCESS_CONFIG)X \
                 $(CONFIG_PK_LIBPCIACCESS_LIBPATH)X \
                 $(CONFIG_PK_LIBPCIACCESS_CPPFLAGS)X \
                 $(CONFIG_PK_LIBPCIACCESS_DPKCONFIG)X \
                 $(CONFIG_PK_LIBPCIACCESS_CFLAGS)X \
                 $(CONFIG_PK_LIBPCIACCESS_LDFLAGS)X \
                 $(CONFIG_PK_LIBPCIACCESS_CXXFLAGS)X \
                 $(CONFIG_PK_LIBPCIACCESS_ASFLAGS)X \
                 $(PK_LIBPCIACCESS_BSBIT)X \
                 $(PK_LIBPCIACCESS_BUILDARCH)X

$(PK_LIBPCIACCESS_DIR)/build: FORCE
	$(Q)$(call PK_LIBPCIACCESS_sh,$(srctree))
