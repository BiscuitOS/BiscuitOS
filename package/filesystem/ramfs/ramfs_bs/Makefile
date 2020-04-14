################################################
#
# ramfs_bs
#
################################################
PK_RAMFS_BS_NAME        := ramfs_bs
PK_RAMFS_BS_VERSION     := $(CONFIG_PK_RAMFS_BS_VERSION)
PK_RAMFS_BS_SITE        := $(CONFIG_PK_RAMFS_BS_URL)
PK_RAMFS_BS_GITHUB      := $(CONFIG_PK_RAMFS_BS_GITHUB)
PK_RAMFS_BS_SUBNAME     :=
PK_RAMFS_BS_BUILDARCH   := $(CONFIG_PK_RAMFS_BS_BUILDARCH)
PK_RAMFS_BS_DIR         := $(srctree)/package/filesystem/ramfs/ramfs_bs
PK_RAMFS_BS_PATCH       := $(PK_RAMFS_BS_DIR)/patch
PK_RAMFS_BS_BSBIT       := ramfs_bs-$(PK_RAMFS_BS_VERSION).bsbit
PK_RAMFS_BS_OUT         :=
PK_RAMFS_BS_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_RAMFS_BS_TAR         := $(CONFIG_PK_RAMFS_BS_TAR)
PK_RAMFS_BS_PACKAGE     :=
PK_RAMFS_BS_CONFIG      := $(CONFIG_PK_RAMFS_BS_CONFIG)
SUB_TARGET                  += $(PK_RAMFS_BS_DIR)/build

PK_RAMFS_BS_sh = $(CONFIG_SHELL) $(PK_RAMFS_BS_SCRIPTS) \
                 $1X \
                 $(PK_RAMFS_BS_NAME)X \
                 $(PK_RAMFS_BS_VERSION)X \
                 $(PK_RAMFS_BS_SITE)X \
                 $(PK_RAMFS_BS_GITHUB)X \
                 $(PK_RAMFS_BS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_RAMFS_BS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_RAMFS_BS_SUBNAME)X \
                 $(CONFIG_PK_RAMFS_BS_CONFIG)X \
                 $(CONFIG_PK_RAMFS_BS_LIBPATH)X \
                 $(CONFIG_PK_RAMFS_BS_CPPFLAGS)X \
                 $(CONFIG_PK_RAMFS_BS_DPKCONFIG)X \
                 $(CONFIG_PK_RAMFS_BS_CFLAGS)X \
                 $(CONFIG_PK_RAMFS_BS_LDFLAGS)X \
                 $(CONFIG_PK_RAMFS_BS_CXXFLAGS)X \
                 $(CONFIG_PK_RAMFS_BS_ASFLAGS)X \
                 $(PK_RAMFS_BS_BSBIT)X \
                 $(PK_RAMFS_BS_BUILDARCH)X \
		 $(PK_RAMFS_BS_CSRCFILE)X \
                 $(CONFIG_PK_RAMFS_BS_SRCFILE)X \
                 $(CONFIG_PK_RAMFS_BS_CSRCFILE)

$(PK_RAMFS_BS_DIR)/build: FORCE
	$(Q)$(call PK_RAMFS_BS_sh,$(srctree))
