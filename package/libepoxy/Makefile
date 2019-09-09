################################################
#
# libepoxy
#
################################################
PK_LIBEPOXY_NAME        := libepoxy
PK_LIBEPOXY_VERSION     := $(CONFIG_PK_LIBEPOXY_VERSION)
PK_LIBEPOXY_SITE        := $(CONFIG_PK_LIBEPOXY_URL)
PK_LIBEPOXY_GITHUB      := $(CONFIG_PK_LIBEPOXY_GITHUB)
PK_LIBEPOXY_SUBNAME     :=
PK_LIBEPOXY_BUILDARCH   := $(CONFIG_PK_LIBEPOXY_BUILDARCH)
PK_LIBEPOXY_DIR         := $(srctree)/package/libepoxy
PK_LIBEPOXY_PATCH       := $(PK_LIBEPOXY_DIR)/patch
PK_LIBEPOXY_BSBIT       := libepoxy-$(PK_LIBEPOXY_VERSION).bsbit
PK_LIBEPOXY_OUT         :=
PK_LIBEPOXY_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LIBEPOXY_TAR         := $(CONFIG_PK_LIBEPOXY_TAR)
PK_LIBEPOXY_PACKAGE     :=
PK_LIBEPOXY_CONFIG      := $(CONFIG_PK_LIBEPOXY_CONFIG)
SUB_TARGET              += $(PK_LIBEPOXY_DIR)/build

PK_LIBEPOXY_sh = $(CONFIG_SHELL) $(PK_LIBEPOXY_SCRIPTS) \
                 $1X \
                 $(PK_LIBEPOXY_NAME)X \
                 $(PK_LIBEPOXY_VERSION)X \
                 $(PK_LIBEPOXY_SITE)X \
                 $(PK_LIBEPOXY_GITHUB)X \
                 $(PK_LIBEPOXY_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBEPOXY_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBEPOXY_SUBNAME)X \
                 $(CONFIG_PK_LIBEPOXY_CONFIG)X \
                 $(CONFIG_PK_LIBEPOXY_LIBPATH)X \
                 $(CONFIG_PK_LIBEPOXY_CPPFLAGS)X \
                 $(CONFIG_PK_LIBEPOXY_DPKCONFIG)X \
                 $(CONFIG_PK_LIBEPOXY_CFLAGS)X \
                 $(CONFIG_PK_LIBEPOXY_LDFLAGS)X \
                 $(CONFIG_PK_LIBEPOXY_CXXFLAGS)X \
                 $(CONFIG_PK_LIBEPOXY_ASFLAGS)X \
                 $(PK_LIBEPOXY_BSBIT)X \
                 $(PK_LIBEPOXY_BUILDARCH)X

$(PK_LIBEPOXY_DIR)/build: FORCE
	$(Q)$(call PK_LIBEPOXY_sh,$(srctree))
