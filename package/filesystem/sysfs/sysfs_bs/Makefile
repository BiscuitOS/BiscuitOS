################################################
#
# sysfs_bs
#
################################################
PK_SYSFS_BS_NAME        := sysfs_bs
PK_SYSFS_BS_VERSION     := $(CONFIG_PK_SYSFS_BS_VERSION)
PK_SYSFS_BS_SITE        := $(CONFIG_PK_SYSFS_BS_URL)
PK_SYSFS_BS_GITHUB      := $(CONFIG_PK_SYSFS_BS_GITHUB)
PK_SYSFS_BS_SUBNAME     :=
PK_SYSFS_BS_BUILDARCH   := $(CONFIG_PK_SYSFS_BS_BUILDARCH)
PK_SYSFS_BS_DIR         := $(srctree)/package/filesystem/sysfs/sysfs_bs
PK_SYSFS_BS_PATCH       := $(PK_SYSFS_BS_DIR)/patch
PK_SYSFS_BS_BSBIT       := sysfs_bs-$(PK_SYSFS_BS_VERSION).bsbit
PK_SYSFS_BS_OUT         :=
PK_SYSFS_BS_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_SYSFS_BS_TAR         := $(CONFIG_PK_SYSFS_BS_TAR)
PK_SYSFS_BS_PACKAGE     :=
PK_SYSFS_BS_CONFIG      := $(CONFIG_PK_SYSFS_BS_CONFIG)
SUB_TARGET                  += $(PK_SYSFS_BS_DIR)/build

PK_SYSFS_BS_sh = $(CONFIG_SHELL) $(PK_SYSFS_BS_SCRIPTS) \
                 $1X \
                 $(PK_SYSFS_BS_NAME)X \
                 $(PK_SYSFS_BS_VERSION)X \
                 $(PK_SYSFS_BS_SITE)X \
                 $(PK_SYSFS_BS_GITHUB)X \
                 $(PK_SYSFS_BS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_SYSFS_BS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_SYSFS_BS_SUBNAME)X \
                 $(CONFIG_PK_SYSFS_BS_CONFIG)X \
                 $(CONFIG_PK_SYSFS_BS_LIBPATH)X \
                 $(CONFIG_PK_SYSFS_BS_CPPFLAGS)X \
                 $(CONFIG_PK_SYSFS_BS_DPKCONFIG)X \
                 $(CONFIG_PK_SYSFS_BS_CFLAGS)X \
                 $(CONFIG_PK_SYSFS_BS_LDFLAGS)X \
                 $(CONFIG_PK_SYSFS_BS_CXXFLAGS)X \
                 $(CONFIG_PK_SYSFS_BS_ASFLAGS)X \
                 $(PK_SYSFS_BS_BSBIT)X \
                 $(PK_SYSFS_BS_BUILDARCH)X \
		 $(PK_SYSFS_BS_CSRCFILE)X \
                 $(CONFIG_PK_SYSFS_BS_SRCFILE)X \
                 $(CONFIG_PK_SYSFS_BS_CSRCFILE)

$(PK_SYSFS_BS_DIR)/build: FORCE
	$(Q)$(call PK_SYSFS_BS_sh,$(srctree))
