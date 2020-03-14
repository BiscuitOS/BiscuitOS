################################################
#
# tmpfs_bs
#
################################################
PK_TMPFS_BS_NAME        := tmpfs_bs
PK_TMPFS_BS_VERSION     := $(CONFIG_PK_TMPFS_BS_VERSION)
PK_TMPFS_BS_SITE        := $(CONFIG_PK_TMPFS_BS_URL)
PK_TMPFS_BS_GITHUB      := $(CONFIG_PK_TMPFS_BS_GITHUB)
PK_TMPFS_BS_SUBNAME     :=
PK_TMPFS_BS_BUILDARCH   := $(CONFIG_PK_TMPFS_BS_BUILDARCH)
PK_TMPFS_BS_DIR         := $(srctree)/package/filesystem/tmpfs/tmpfs_bs
PK_TMPFS_BS_PATCH       := $(PK_TMPFS_BS_DIR)/patch
PK_TMPFS_BS_BSBIT       := tmpfs_bs-$(PK_TMPFS_BS_VERSION).bsbit
PK_TMPFS_BS_OUT         :=
PK_TMPFS_BS_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_TMPFS_BS_TAR         := $(CONFIG_PK_TMPFS_BS_TAR)
PK_TMPFS_BS_PACKAGE     :=
PK_TMPFS_BS_CONFIG      := $(CONFIG_PK_TMPFS_BS_CONFIG)
SUB_TARGET                  += $(PK_TMPFS_BS_DIR)/build

PK_TMPFS_BS_sh = $(CONFIG_SHELL) $(PK_TMPFS_BS_SCRIPTS) \
                 $1X \
                 $(PK_TMPFS_BS_NAME)X \
                 $(PK_TMPFS_BS_VERSION)X \
                 $(PK_TMPFS_BS_SITE)X \
                 $(PK_TMPFS_BS_GITHUB)X \
                 $(PK_TMPFS_BS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_TMPFS_BS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_TMPFS_BS_SUBNAME)X \
                 $(CONFIG_PK_TMPFS_BS_CONFIG)X \
                 $(CONFIG_PK_TMPFS_BS_LIBPATH)X \
                 $(CONFIG_PK_TMPFS_BS_CPPFLAGS)X \
                 $(CONFIG_PK_TMPFS_BS_DPKCONFIG)X \
                 $(CONFIG_PK_TMPFS_BS_CFLAGS)X \
                 $(CONFIG_PK_TMPFS_BS_LDFLAGS)X \
                 $(CONFIG_PK_TMPFS_BS_CXXFLAGS)X \
                 $(CONFIG_PK_TMPFS_BS_ASFLAGS)X \
                 $(PK_TMPFS_BS_BSBIT)X \
                 $(PK_TMPFS_BS_BUILDARCH)X \
		 $(PK_TMPFS_BS_CSRCFILE)X \
                 $(CONFIG_PK_TMPFS_BS_SRCFILE)X \
                 $(CONFIG_PK_TMPFS_BS_CSRCFILE)

$(PK_TMPFS_BS_DIR)/build: FORCE
	$(Q)$(call PK_TMPFS_BS_sh,$(srctree))
