################################################
#
# d_alloc
#
################################################
PK_FS_D_ALLOC_NAME        := d_alloc
PK_FS_D_ALLOC_VERSION     := $(CONFIG_PK_FS_D_ALLOC_VERSION)
PK_FS_D_ALLOC_SITE        := $(CONFIG_PK_FS_D_ALLOC_URL)
PK_FS_D_ALLOC_GITHUB      := $(CONFIG_PK_FS_D_ALLOC_GITHUB)
PK_FS_D_ALLOC_SUBNAME     :=
PK_FS_D_ALLOC_BUILDARCH   := $(CONFIG_PK_FS_D_ALLOC_BUILDARCH)
PK_FS_D_ALLOC_DIR         := $(srctree)/package/filesystem/vfs/d_alloc
PK_FS_D_ALLOC_PATCH       := $(PK_FS_D_ALLOC_DIR)/patch
PK_FS_D_ALLOC_BSBIT       := d_alloc-$(PK_FS_D_ALLOC_VERSION).bsbit
PK_FS_D_ALLOC_OUT         :=
PK_FS_D_ALLOC_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_FS_D_ALLOC_TAR         := $(CONFIG_PK_FS_D_ALLOC_TAR)
PK_FS_D_ALLOC_PACKAGE     :=
PK_FS_D_ALLOC_CONFIG      := $(CONFIG_PK_FS_D_ALLOC_CONFIG)
SUB_TARGET                  += $(PK_FS_D_ALLOC_DIR)/build

PK_FS_D_ALLOC_sh = $(CONFIG_SHELL) $(PK_FS_D_ALLOC_SCRIPTS) \
                 $1X \
                 $(PK_FS_D_ALLOC_NAME)X \
                 $(PK_FS_D_ALLOC_VERSION)X \
                 $(PK_FS_D_ALLOC_SITE)X \
                 $(PK_FS_D_ALLOC_GITHUB)X \
                 $(PK_FS_D_ALLOC_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_FS_D_ALLOC_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_FS_D_ALLOC_SUBNAME)X \
                 $(CONFIG_PK_FS_D_ALLOC_CONFIG)X \
                 $(CONFIG_PK_FS_D_ALLOC_LIBPATH)X \
                 $(CONFIG_PK_FS_D_ALLOC_CPPFLAGS)X \
                 $(CONFIG_PK_FS_D_ALLOC_DPKCONFIG)X \
                 $(CONFIG_PK_FS_D_ALLOC_CFLAGS)X \
                 $(CONFIG_PK_FS_D_ALLOC_LDFLAGS)X \
                 $(CONFIG_PK_FS_D_ALLOC_CXXFLAGS)X \
                 $(CONFIG_PK_FS_D_ALLOC_ASFLAGS)X \
                 $(PK_FS_D_ALLOC_BSBIT)X \
                 $(PK_FS_D_ALLOC_BUILDARCH)X \
		 $(PK_FS_D_ALLOC_CSRCFILE)X \
                 $(CONFIG_PK_FS_D_ALLOC_SRCFILE)X \
                 $(CONFIG_PK_FS_D_ALLOC_CSRCFILE)

$(PK_FS_D_ALLOC_DIR)/build: FORCE
	$(Q)$(call PK_FS_D_ALLOC_sh,$(srctree))
