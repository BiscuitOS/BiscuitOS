################################################
#
# openssl
#
################################################
PK_OPENSSL_NAME        := openssl
PK_OPENSSL_VERSION     := $(CONFIG_PK_OPENSSL_VERSION)
PK_OPENSSL_SITE        := $(CONFIG_PK_OPENSSL_URL)
PK_OPENSSL_GITHUB      := $(CONFIG_PK_OPENSSL_GITHUB)
PK_OPENSSL_SUBNAME     :=
PK_OPENSSL_BUILDARCH   := $(CONFIG_PK_OPENSSL_BUILDARCH)
PK_OPENSSL_DIR         := $(srctree)/package/openssl
PK_OPENSSL_PATCH       := $(PK_OPENSSL_DIR)/patch
PK_OPENSSL_BSBIT       := openssl-$(PK_OPENSSL_VERSION).bsbit
PK_OPENSSL_OUT         :=
PK_OPENSSL_SCRIPTS     := $(srctree)/scripts/package/package-openssl.sh
PK_OPENSSL_TAR         := $(CONFIG_PK_OPENSSL_TAR)
PK_OPENSSL_PACKAGE     :=
PK_OPENSSL_CONFIG      := $(CONFIG_PK_OPENSSL_CONFIG)
SUB_TARGET             += $(PK_OPENSSL_DIR)/build

PK_OPENSSL_sh = $(CONFIG_SHELL) $(PK_OPENSSL_SCRIPTS) \
                 $1X \
                 $(PK_OPENSSL_NAME)X \
                 $(PK_OPENSSL_VERSION)X \
                 $(PK_OPENSSL_SITE)X \
                 $(PK_OPENSSL_GITHUB)X \
                 $(PK_OPENSSL_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_OPENSSL_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_OPENSSL_SUBNAME)X \
                 $(CONFIG_PK_OPENSSL_CONFIG)X \
                 $(CONFIG_PK_OPENSSL_LIBPATH)X \
                 $(CONFIG_PK_OPENSSL_CPPFLAGS)X \
                 $(CONFIG_PK_OPENSSL_DPKCONFIG)X \
                 $(CONFIG_PK_OPENSSL_CFLAGS)X \
                 $(CONFIG_PK_OPENSSL_LDFLAGS)X \
                 $(CONFIG_PK_OPENSSL_CXXFLAGS)X \
                 $(CONFIG_PK_OPENSSL_ASFLAGS)X \
                 $(PK_OPENSSL_BSBIT)X \
                 $(PK_OPENSSL_BUILDARCH)X

$(PK_OPENSSL_DIR)/build: FORCE
	$(Q)$(call PK_OPENSSL_sh,$(srctree))
