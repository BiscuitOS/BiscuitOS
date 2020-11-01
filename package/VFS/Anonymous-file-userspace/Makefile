################################################
#
# BiscuitOS-Anonymous-file-userspace
#
################################################
PK_VFS_ANON_FILE_USER_NAME        := BiscuitOS-Anonymous-file-userspace
PK_VFS_ANON_FILE_USER_VERSION     := $(CONFIG_PK_VFS_ANON_FILE_USER_VERSION)
PK_VFS_ANON_FILE_USER_SITE        := $(CONFIG_PK_VFS_ANON_FILE_USER_URL)
PK_VFS_ANON_FILE_USER_GITHUB      := $(CONFIG_PK_VFS_ANON_FILE_USER_GITHUB)
PK_VFS_ANON_FILE_USER_SUBNAME     :=
PK_VFS_ANON_FILE_USER_BUILDARCH   := $(CONFIG_PK_VFS_ANON_FILE_USER_BUILDARCH)
PK_VFS_ANON_FILE_USER_DIR         := $(srctree)/package/VFS/Anonymous-file-userspace
PK_VFS_ANON_FILE_USER_PATCH       := $(PK_VFS_ANON_FILE_USER_DIR)/patch
PK_VFS_ANON_FILE_USER_BSBIT       := BiscuitOS-Anonymous-file-userspace-$(PK_VFS_ANON_FILE_USER_VERSION).bsbit
PK_VFS_ANON_FILE_USER_OUT         :=
PK_VFS_ANON_FILE_USER_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_VFS_ANON_FILE_USER_TAR         := $(CONFIG_PK_VFS_ANON_FILE_USER_TAR)
PK_VFS_ANON_FILE_USER_PACKAGE     :=
PK_VFS_ANON_FILE_USER_CONFIG      := $(CONFIG_PK_VFS_ANON_FILE_USER_CONFIG)
SUB_TARGET                  += $(PK_VFS_ANON_FILE_USER_DIR)/build

PK_VFS_ANON_FILE_USER_sh = $(CONFIG_SHELL) $(PK_VFS_ANON_FILE_USER_SCRIPTS) \
                 $1X \
                 $(PK_VFS_ANON_FILE_USER_NAME)X \
                 $(PK_VFS_ANON_FILE_USER_VERSION)X \
                 $(PK_VFS_ANON_FILE_USER_SITE)X \
                 $(PK_VFS_ANON_FILE_USER_GITHUB)X \
                 $(PK_VFS_ANON_FILE_USER_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_VFS_ANON_FILE_USER_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_VFS_ANON_FILE_USER_SUBNAME)X \
                 $(CONFIG_PK_VFS_ANON_FILE_USER_CONFIG)X \
                 $(CONFIG_PK_VFS_ANON_FILE_USER_LIBPATH)X \
                 $(CONFIG_PK_VFS_ANON_FILE_USER_CPPFLAGS)X \
                 $(CONFIG_PK_VFS_ANON_FILE_USER_DPKCONFIG)X \
                 $(CONFIG_PK_VFS_ANON_FILE_USER_CFLAGS)X \
                 $(CONFIG_PK_VFS_ANON_FILE_USER_LDFLAGS)X \
                 $(CONFIG_PK_VFS_ANON_FILE_USER_CXXFLAGS)X \
                 $(CONFIG_PK_VFS_ANON_FILE_USER_ASFLAGS)X \
                 $(PK_VFS_ANON_FILE_USER_BSBIT)X \
                 $(PK_VFS_ANON_FILE_USER_BUILDARCH)X \
		 $(PK_VFS_ANON_FILE_USER_CSRCFILE)X \
                 $(CONFIG_PK_VFS_ANON_FILE_USER_SRCFILE)X \
                 $(CONFIG_PK_VFS_ANON_FILE_USER_CSRCFILE)

$(PK_VFS_ANON_FILE_USER_DIR)/build: FORCE
	$(Q)$(call PK_VFS_ANON_FILE_USER_sh,$(srctree))
