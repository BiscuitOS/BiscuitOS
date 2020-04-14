################################################
#
# lzip
#
################################################
PK_LZIP_NAME        := lzip
PK_LZIP_VERSION     := $(CONFIG_PK_LZIP_VERSION)
PK_LZIP_SITE        := $(CONFIG_PK_LZIP_URL)
PK_LZIP_GITHUB      := $(CONFIG_PK_LZIP_GITHUB)
PK_LZIP_SUBNAME     :=
PK_LZIP_BUILDARCH   := $(CONFIG_PK_LZIP_BUILDARCH)
PK_LZIP_DIR         := $(srctree)/package/lzip
PK_LZIP_PATCH       := $(PK_LZIP_DIR)/patch
PK_LZIP_BSBIT       := lzip-$(PK_LZIP_VERSION).bsbit
PK_LZIP_OUT         :=
PK_LZIP_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LZIP_TAR         := $(CONFIG_PK_LZIP_TAR)
PK_LZIP_PACKAGE     :=
PK_LZIP_CONFIG      := $(CONFIG_PK_LZIP_CONFIG)
SUB_TARGET            += $(PK_LZIP_DIR)/build

PK_LZIP_sh = $(CONFIG_SHELL) $(PK_LZIP_SCRIPTS) \
                 $1X \
                 $(PK_LZIP_NAME)X \
                 $(PK_LZIP_VERSION)X \
                 $(PK_LZIP_SITE)X \
                 $(PK_LZIP_GITHUB)X \
                 $(PK_LZIP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LZIP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LZIP_SUBNAME)X \
                 $(CONFIG_PK_LZIP_CONFIG)X \
                 $(CONFIG_PK_LZIP_LIBPATH)X \
                 $(CONFIG_PK_LZIP_CPPFLAGS)X \
                 $(CONFIG_PK_LZIP_DPKCONFIG)X \
                 $(CONFIG_PK_LZIP_CFLAGS)X \
                 $(CONFIG_PK_LZIP_LDFLAGS)X \
                 $(CONFIG_PK_LZIP_CXXFLAGS)X \
                 $(CONFIG_PK_LZIP_ASFLAGS)X \
                 $(PK_LZIP_BSBIT)X \
                 $(PK_LZIP_BUILDARCH)X

$(PK_LZIP_DIR)/build: FORCE
	$(Q)$(call PK_LZIP_sh,$(srctree))
