################################################
#
# adfs_bs
#
################################################
PK_ADFS_BS_NAME        := adfs_bs
PK_ADFS_BS_VERSION     := $(CONFIG_PK_ADFS_BS_VERSION)
PK_ADFS_BS_SITE        := $(CONFIG_PK_ADFS_BS_URL)
PK_ADFS_BS_GITHUB      := $(CONFIG_PK_ADFS_BS_GITHUB)
PK_ADFS_BS_SUBNAME     :=
PK_ADFS_BS_BUILDARCH   := $(CONFIG_PK_ADFS_BS_BUILDARCH)
PK_ADFS_BS_DIR         := $(srctree)/package/filesystem/adfs/adfs_bs
PK_ADFS_BS_PATCH       := $(PK_ADFS_BS_DIR)/patch
PK_ADFS_BS_BSBIT       := adfs_bs-$(PK_ADFS_BS_VERSION).bsbit
PK_ADFS_BS_OUT         :=
PK_ADFS_BS_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_ADFS_BS_TAR         := $(CONFIG_PK_ADFS_BS_TAR)
PK_ADFS_BS_PACKAGE     :=
PK_ADFS_BS_CONFIG      := $(CONFIG_PK_ADFS_BS_CONFIG)
SUB_TARGET                  += $(PK_ADFS_BS_DIR)/build

PK_ADFS_BS_sh = $(CONFIG_SHELL) $(PK_ADFS_BS_SCRIPTS) \
                 $1X \
                 $(PK_ADFS_BS_NAME)X \
                 $(PK_ADFS_BS_VERSION)X \
                 $(PK_ADFS_BS_SITE)X \
                 $(PK_ADFS_BS_GITHUB)X \
                 $(PK_ADFS_BS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_ADFS_BS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_ADFS_BS_SUBNAME)X \
                 $(CONFIG_PK_ADFS_BS_CONFIG)X \
                 $(CONFIG_PK_ADFS_BS_LIBPATH)X \
                 $(CONFIG_PK_ADFS_BS_CPPFLAGS)X \
                 $(CONFIG_PK_ADFS_BS_DPKCONFIG)X \
                 $(CONFIG_PK_ADFS_BS_CFLAGS)X \
                 $(CONFIG_PK_ADFS_BS_LDFLAGS)X \
                 $(CONFIG_PK_ADFS_BS_CXXFLAGS)X \
                 $(CONFIG_PK_ADFS_BS_ASFLAGS)X \
                 $(PK_ADFS_BS_BSBIT)X \
                 $(PK_ADFS_BS_BUILDARCH)X \
		 $(PK_ADFS_BS_CSRCFILE)X \
                 $(CONFIG_PK_ADFS_BS_SRCFILE)X \
                 $(CONFIG_PK_ADFS_BS_CSRCFILE)

$(PK_ADFS_BS_DIR)/build: FORCE
	$(Q)$(call PK_ADFS_BS_sh,$(srctree))
