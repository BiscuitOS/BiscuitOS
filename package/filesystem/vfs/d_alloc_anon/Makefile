################################################
#
# d_alloc_anon
#
################################################
PK_FS_D_ALLOC_ANON_NAME        := d_alloc_anon
PK_FS_D_ALLOC_ANON_VERSION     := $(CONFIG_PK_FS_D_ALLOC_ANON_VERSION)
PK_FS_D_ALLOC_ANON_SITE        := $(CONFIG_PK_FS_D_ALLOC_ANON_URL)
PK_FS_D_ALLOC_ANON_GITHUB      := $(CONFIG_PK_FS_D_ALLOC_ANON_GITHUB)
PK_FS_D_ALLOC_ANON_SUBNAME     :=
PK_FS_D_ALLOC_ANON_BUILDARCH   := $(CONFIG_PK_FS_D_ALLOC_ANON_BUILDARCH)
PK_FS_D_ALLOC_ANON_DIR         := $(srctree)/package/filesystem/vfs/d_alloc_anon
PK_FS_D_ALLOC_ANON_PATCH       := $(PK_FS_D_ALLOC_ANON_DIR)/patch
PK_FS_D_ALLOC_ANON_BSBIT       := d_alloc_anon-$(PK_FS_D_ALLOC_ANON_VERSION).bsbit
PK_FS_D_ALLOC_ANON_OUT         :=
PK_FS_D_ALLOC_ANON_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_FS_D_ALLOC_ANON_TAR         := $(CONFIG_PK_FS_D_ALLOC_ANON_TAR)
PK_FS_D_ALLOC_ANON_PACKAGE     :=
PK_FS_D_ALLOC_ANON_CONFIG      := $(CONFIG_PK_FS_D_ALLOC_ANON_CONFIG)
SUB_TARGET                  += $(PK_FS_D_ALLOC_ANON_DIR)/build

PK_FS_D_ALLOC_ANON_sh = $(CONFIG_SHELL) $(PK_FS_D_ALLOC_ANON_SCRIPTS) \
                 $1X \
                 $(PK_FS_D_ALLOC_ANON_NAME)X \
                 $(PK_FS_D_ALLOC_ANON_VERSION)X \
                 $(PK_FS_D_ALLOC_ANON_SITE)X \
                 $(PK_FS_D_ALLOC_ANON_GITHUB)X \
                 $(PK_FS_D_ALLOC_ANON_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_FS_D_ALLOC_ANON_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_FS_D_ALLOC_ANON_SUBNAME)X \
                 $(CONFIG_PK_FS_D_ALLOC_ANON_CONFIG)X \
                 $(CONFIG_PK_FS_D_ALLOC_ANON_LIBPATH)X \
                 $(CONFIG_PK_FS_D_ALLOC_ANON_CPPFLAGS)X \
                 $(CONFIG_PK_FS_D_ALLOC_ANON_DPKCONFIG)X \
                 $(CONFIG_PK_FS_D_ALLOC_ANON_CFLAGS)X \
                 $(CONFIG_PK_FS_D_ALLOC_ANON_LDFLAGS)X \
                 $(CONFIG_PK_FS_D_ALLOC_ANON_CXXFLAGS)X \
                 $(CONFIG_PK_FS_D_ALLOC_ANON_ASFLAGS)X \
                 $(PK_FS_D_ALLOC_ANON_BSBIT)X \
                 $(PK_FS_D_ALLOC_ANON_BUILDARCH)X \
		 $(PK_FS_D_ALLOC_ANON_CSRCFILE)X \
                 $(CONFIG_PK_FS_D_ALLOC_ANON_SRCFILE)X \
                 $(CONFIG_PK_FS_D_ALLOC_ANON_CSRCFILE)

$(PK_FS_D_ALLOC_ANON_DIR)/build: FORCE
	$(Q)$(call PK_FS_D_ALLOC_ANON_sh,$(srctree))
