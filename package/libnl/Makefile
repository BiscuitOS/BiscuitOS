################################################
#
# libnl
#
################################################
PK_LIBNL_NAME        := libnl
PK_LIBNL_VERSION     := $(CONFIG_PK_LIBNL_VERSION)
PK_LIBNL_SITE        := $(CONFIG_PK_LIBNL_URL)
PK_LIBNL_GITHUB      := $(CONFIG_PK_LIBNL_GITHUB)
PK_LIBNL_SUBNAME     :=
PK_LIBNL_BUILDARCH   := $(CONFIG_PK_LIBNL_BUILDARCH)
PK_LIBNL_DIR         := $(srctree)/package/libnl
PK_LIBNL_PATCH       := $(PK_LIBNL_DIR)/patch
PK_LIBNL_BSBIT       := libnl-$(PK_LIBNL_VERSION).bsbit
PK_LIBNL_OUT         :=
PK_LIBNL_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_LIBNL_TAR         := $(CONFIG_PK_LIBNL_TAR)
PK_LIBNL_PACKAGE     :=
PK_LIBNL_CONFIG      := $(CONFIG_PK_LIBNL_CONFIG)
SUB_TARGET            += $(PK_LIBNL_DIR)/build

PK_LIBNL_sh = $(CONFIG_SHELL) $(PK_LIBNL_SCRIPTS) \
                 $1X \
                 $(PK_LIBNL_NAME)X \
                 $(PK_LIBNL_VERSION)X \
                 $(PK_LIBNL_SITE)X \
                 $(PK_LIBNL_GITHUB)X \
                 $(PK_LIBNL_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBNL_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBNL_SUBNAME)X \
                 $(CONFIG_PK_LIBNL_CONFIG)X \
                 $(CONFIG_PK_LIBNL_LIBPATH)X \
                 $(CONFIG_PK_LIBNL_CPPFLAGS)X \
                 $(CONFIG_PK_LIBNL_DPKCONFIG)X \
                 $(CONFIG_PK_LIBNL_CFLAGS)X \
                 $(CONFIG_PK_LIBNL_LDFLAGS)X \
                 $(CONFIG_PK_LIBNL_CXXFLAGS)X \
                 $(CONFIG_PK_LIBNL_ASFLAGS)X \
                 $(PK_LIBNL_BSBIT)X \
                 $(PK_LIBNL_BUILDARCH)X

$(PK_LIBNL_DIR)/build: FORCE
	$(Q)$(call PK_LIBNL_sh,$(srctree))
