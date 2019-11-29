################################################
#
# glibc
#
################################################
PK_GLIBC_NAME        := glibc
PK_GLIBC_VERSION     := $(CONFIG_PK_GLIBC_VERSION)
PK_GLIBC_SITE        := $(CONFIG_PK_GLIBC_URL)
PK_GLIBC_GITHUB      := $(CONFIG_PK_GLIBC_GITHUB)
PK_GLIBC_SUBNAME     :=
PK_GLIBC_BUILDARCH   := $(CONFIG_PK_GLIBC_BUILDARCH)
PK_GLIBC_DIR         := $(srctree)/package/glibc
PK_GLIBC_PATCH       := $(PK_GLIBC_DIR)/patch
PK_GLIBC_BSBIT       := glibc-$(PK_GLIBC_VERSION).bsbit
PK_GLIBC_OUT         :=
PK_GLIBC_SCRIPTS     := $(srctree)/scripts/package/package-glibc.sh
PK_GLIBC_TAR         := $(CONFIG_PK_GLIBC_TAR)
PK_GLIBC_PACKAGE     :=
PK_GLIBC_CONFIG      := $(CONFIG_PK_GLIBC_CONFIG)
SUB_TARGET              += $(PK_GLIBC_DIR)/build

PK_GLIBC_sh = $(CONFIG_SHELL) $(PK_GLIBC_SCRIPTS) \
                 $1X \
                 $(PK_GLIBC_NAME)X \
                 $(PK_GLIBC_VERSION)X \
                 $(PK_GLIBC_SITE)X \
                 $(PK_GLIBC_GITHUB)X \
                 $(PK_GLIBC_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_GLIBC_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_GLIBC_SUBNAME)X \
                 $(CONFIG_PK_GLIBC_CONFIG)X \
                 $(CONFIG_PK_GLIBC_LIBPATH)X \
                 $(CONFIG_PK_GLIBC_CPPFLAGS)X \
                 $(CONFIG_PK_GLIBC_DPKCONFIG)X \
                 $(CONFIG_PK_GLIBC_CFLAGS)X \
                 $(CONFIG_PK_GLIBC_LDFLAGS)X \
                 $(CONFIG_PK_GLIBC_CXXFLAGS)X \
                 $(CONFIG_PK_GLIBC_ASFLAGS)X \
                 $(PK_GLIBC_BSBIT)X \
                 $(PK_GLIBC_BUILDARCH)X

$(PK_GLIBC_DIR)/build: FORCE
	$(Q)$(call PK_GLIBC_sh,$(srctree))
