################################################
#
# gmp
#
################################################
PK_GMP_NAME        := gmp
PK_GMP_VERSION     := $(CONFIG_PK_GMP_VERSION)
PK_GMP_SITE        := $(CONFIG_PK_GMP_URL)
PK_GMP_GITHUB      := $(CONFIG_PK_GMP_GITHUB)
PK_GMP_SUBNAME     :=
PK_GMP_BUILDARCH   := $(CONFIG_PK_GMP_BUILDARCH)
PK_GMP_DIR         := $(srctree)/package/gmp
PK_GMP_PATCH       := $(PK_GMP_DIR)/patch
PK_GMP_BSBIT       := gmp-$(PK_GMP_VERSION).bsbit
PK_GMP_OUT         :=
PK_GMP_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_GMP_TAR         := $(CONFIG_PK_GMP_TAR)
PK_GMP_PACKAGE     :=
PK_GMP_CONFIG      := $(CONFIG_PK_GMP_CONFIG)
SUB_TARGET            += $(PK_GMP_DIR)/build

PK_GMP_sh = $(CONFIG_SHELL) $(PK_GMP_SCRIPTS) \
                 $1X \
                 $(PK_GMP_NAME)X \
                 $(PK_GMP_VERSION)X \
                 $(PK_GMP_SITE)X \
                 $(PK_GMP_GITHUB)X \
                 $(PK_GMP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_GMP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_GMP_SUBNAME)X \
                 $(CONFIG_PK_GMP_CONFIG)X \
                 $(CONFIG_PK_GMP_LIBPATH)X \
                 $(CONFIG_PK_GMP_CPPFLAGS)X \
                 $(CONFIG_PK_GMP_DPKCONFIG)X \
                 $(CONFIG_PK_GMP_CFLAGS)X \
                 $(CONFIG_PK_GMP_LDFLAGS)X \
                 $(CONFIG_PK_GMP_CXXFLAGS)X \
                 $(CONFIG_PK_GMP_ASFLAGS)X \
                 $(PK_GMP_BSBIT)X \
                 $(PK_GMP_BUILDARCH)X

$(PK_GMP_DIR)/build: FORCE
	$(Q)$(call PK_GMP_sh,$(srctree))
