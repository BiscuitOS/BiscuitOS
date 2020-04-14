################################################
#
# gnutls
#
################################################
PK_GNUTLS_NAME        := gnutls
PK_GNUTLS_VERSION     := $(CONFIG_PK_GNUTLS_VERSION)
PK_GNUTLS_SITE        := $(CONFIG_PK_GNUTLS_URL)
PK_GNUTLS_GITHUB      := $(CONFIG_PK_GNUTLS_GITHUB)
PK_GNUTLS_SUBNAME     :=
PK_GNUTLS_BUILDARCH   := $(CONFIG_PK_GNUTLS_BUILDARCH)
PK_GNUTLS_DIR         := $(srctree)/package/gnutls
PK_GNUTLS_PATCH       := $(PK_GNUTLS_DIR)/patch
PK_GNUTLS_BSBIT       := gnutls-$(PK_GNUTLS_VERSION).bsbit
PK_GNUTLS_OUT         :=
PK_GNUTLS_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_GNUTLS_TAR         := $(CONFIG_PK_GNUTLS_TAR)
PK_GNUTLS_PACKAGE     :=
PK_GNUTLS_CONFIG      := $(CONFIG_PK_GNUTLS_CONFIG)
SUB_TARGET            += $(PK_GNUTLS_DIR)/build

PK_GNUTLS_sh = $(CONFIG_SHELL) $(PK_GNUTLS_SCRIPTS) \
                 $1X \
                 $(PK_GNUTLS_NAME)X \
                 $(PK_GNUTLS_VERSION)X \
                 $(PK_GNUTLS_SITE)X \
                 $(PK_GNUTLS_GITHUB)X \
                 $(PK_GNUTLS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_GNUTLS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_GNUTLS_SUBNAME)X \
                 $(CONFIG_PK_GNUTLS_CONFIG)X \
                 $(CONFIG_PK_GNUTLS_LIBPATH)X \
                 $(CONFIG_PK_GNUTLS_CPPFLAGS)X \
                 $(CONFIG_PK_GNUTLS_DPKCONFIG)X \
                 $(CONFIG_PK_GNUTLS_CFLAGS)X \
                 $(CONFIG_PK_GNUTLS_LDFLAGS)X \
                 $(CONFIG_PK_GNUTLS_CXXFLAGS)X \
                 $(CONFIG_PK_GNUTLS_ASFLAGS)X \
                 $(PK_GNUTLS_BSBIT)X \
                 $(PK_GNUTLS_BUILDARCH)X

$(PK_GNUTLS_DIR)/build: FORCE
	$(Q)$(call PK_GNUTLS_sh,$(srctree))
