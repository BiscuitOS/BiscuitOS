################################################
#
# ndctl
#
################################################
PK_NDCTL_NAME        := ndctl
PK_NDCTL_VERSION     := $(CONFIG_PK_NDCTL_VERSION)
PK_NDCTL_SITE        := $(CONFIG_PK_NDCTL_URL)
PK_NDCTL_GITHUB      := $(CONFIG_PK_NDCTL_GITHUB)
PK_NDCTL_SUBNAME     :=
PK_NDCTL_BUILDARCH   := $(CONFIG_PK_NDCTL_BUILDARCH)
PK_NDCTL_DIR         := $(srctree)/package/ndctl
PK_NDCTL_PATCH       := $(PK_NDCTL_DIR)/patch
PK_NDCTL_BSBIT       := ndctl-$(PK_NDCTL_VERSION).bsbit
PK_NDCTL_OUT         :=
PK_NDCTL_SCRIPTS     := $(srctree)/scripts/package/package-ndctl.sh
PK_NDCTL_TAR         := $(CONFIG_PK_NDCTL_TAR)
PK_NDCTL_PACKAGE     :=
PK_NDCTL_CONFIG      := $(CONFIG_PK_NDCTL_CONFIG)
SUB_TARGET            += $(PK_NDCTL_DIR)/build

PK_NDCTL_sh = $(CONFIG_SHELL) $(PK_NDCTL_SCRIPTS) \
                 $1X \
                 $(PK_NDCTL_NAME)X \
                 $(PK_NDCTL_VERSION)X \
                 $(PK_NDCTL_SITE)X \
                 $(PK_NDCTL_GITHUB)X \
                 $(PK_NDCTL_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NDCTL_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NDCTL_SUBNAME)X \
                 $(CONFIG_PK_NDCTL_CONFIG)X \
                 $(CONFIG_PK_NDCTL_LIBPATH)X \
                 $(CONFIG_PK_NDCTL_CPPFLAGS)X \
                 $(CONFIG_PK_NDCTL_DPKCONFIG)X \
                 $(CONFIG_PK_NDCTL_CFLAGS)X \
                 $(CONFIG_PK_NDCTL_LDFLAGS)X \
                 $(CONFIG_PK_NDCTL_CXXFLAGS)X \
                 $(CONFIG_PK_NDCTL_ASFLAGS)X \
                 $(PK_NDCTL_BSBIT)X \
                 $(PK_NDCTL_BUILDARCH)X

$(PK_NDCTL_DIR)/build: FORCE
	$(Q)$(call PK_NDCTL_sh,$(srctree))
