################################################
#
# sget
#
################################################
PK_FS_SGET_NAME        := sget
PK_FS_SGET_VERSION     := $(CONFIG_PK_FS_SGET_VERSION)
PK_FS_SGET_SITE        := $(CONFIG_PK_FS_SGET_URL)
PK_FS_SGET_GITHUB      := $(CONFIG_PK_FS_SGET_GITHUB)
PK_FS_SGET_SUBNAME     :=
PK_FS_SGET_BUILDARCH   := $(CONFIG_PK_FS_SGET_BUILDARCH)
PK_FS_SGET_DIR         := $(srctree)/package/filesystem/vfs/sget
PK_FS_SGET_PATCH       := $(PK_FS_SGET_DIR)/patch
PK_FS_SGET_BSBIT       := sget-$(PK_FS_SGET_VERSION).bsbit
PK_FS_SGET_OUT         :=
PK_FS_SGET_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_FS_SGET_TAR         := $(CONFIG_PK_FS_SGET_TAR)
PK_FS_SGET_PACKAGE     :=
PK_FS_SGET_CONFIG      := $(CONFIG_PK_FS_SGET_CONFIG)
SUB_TARGET                  += $(PK_FS_SGET_DIR)/build

PK_FS_SGET_sh = $(CONFIG_SHELL) $(PK_FS_SGET_SCRIPTS) \
                 $1X \
                 $(PK_FS_SGET_NAME)X \
                 $(PK_FS_SGET_VERSION)X \
                 $(PK_FS_SGET_SITE)X \
                 $(PK_FS_SGET_GITHUB)X \
                 $(PK_FS_SGET_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_FS_SGET_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_FS_SGET_SUBNAME)X \
                 $(CONFIG_PK_FS_SGET_CONFIG)X \
                 $(CONFIG_PK_FS_SGET_LIBPATH)X \
                 $(CONFIG_PK_FS_SGET_CPPFLAGS)X \
                 $(CONFIG_PK_FS_SGET_DPKCONFIG)X \
                 $(CONFIG_PK_FS_SGET_CFLAGS)X \
                 $(CONFIG_PK_FS_SGET_LDFLAGS)X \
                 $(CONFIG_PK_FS_SGET_CXXFLAGS)X \
                 $(CONFIG_PK_FS_SGET_ASFLAGS)X \
                 $(PK_FS_SGET_BSBIT)X \
                 $(PK_FS_SGET_BUILDARCH)X \
		 $(PK_FS_SGET_CSRCFILE)X \
                 $(CONFIG_PK_FS_SGET_SRCFILE)X \
                 $(CONFIG_PK_FS_SGET_CSRCFILE)

$(PK_FS_SGET_DIR)/build: FORCE
	$(Q)$(call PK_FS_SGET_sh,$(srctree))
