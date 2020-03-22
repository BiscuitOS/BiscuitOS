################################################
#
# fdatasync_common
#
################################################
PK_SYS_FDATASYNC_C_NAME        := fdatasync_common
PK_SYS_FDATASYNC_C_VERSION     := $(CONFIG_PK_SYS_FDATASYNC_C_VERSION)
PK_SYS_FDATASYNC_C_SITE        := $(CONFIG_PK_SYS_FDATASYNC_C_URL)
PK_SYS_FDATASYNC_C_GITHUB      := $(CONFIG_PK_SYS_FDATASYNC_C_GITHUB)
PK_SYS_FDATASYNC_C_SUBNAME     :=
PK_SYS_FDATASYNC_C_BUILDARCH   := $(CONFIG_PK_SYS_FDATASYNC_C_BUILDARCH)
PK_SYS_FDATASYNC_C_DIR         := $(srctree)/package/syscall/sys_fdatasync/fdatasync_common
PK_SYS_FDATASYNC_C_PATCH       := $(PK_SYS_FDATASYNC_C_DIR)/patch
PK_SYS_FDATASYNC_C_BSBIT       := fdatasync_common-$(PK_SYS_FDATASYNC_C_VERSION).bsbit
PK_SYS_FDATASYNC_C_OUT         :=
PK_SYS_FDATASYNC_C_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_SYS_FDATASYNC_C_TAR         := $(CONFIG_PK_SYS_FDATASYNC_C_TAR)
PK_SYS_FDATASYNC_C_PACKAGE     :=
PK_SYS_FDATASYNC_C_CONFIG      := $(CONFIG_PK_SYS_FDATASYNC_C_CONFIG)
SUB_TARGET                  += $(PK_SYS_FDATASYNC_C_DIR)/build

PK_SYS_FDATASYNC_C_sh = $(CONFIG_SHELL) $(PK_SYS_FDATASYNC_C_SCRIPTS) \
                 $1X \
                 $(PK_SYS_FDATASYNC_C_NAME)X \
                 $(PK_SYS_FDATASYNC_C_VERSION)X \
                 $(PK_SYS_FDATASYNC_C_SITE)X \
                 $(PK_SYS_FDATASYNC_C_GITHUB)X \
                 $(PK_SYS_FDATASYNC_C_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_SYS_FDATASYNC_C_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_SYS_FDATASYNC_C_SUBNAME)X \
                 $(CONFIG_PK_SYS_FDATASYNC_C_CONFIG)X \
                 $(CONFIG_PK_SYS_FDATASYNC_C_LIBPATH)X \
                 $(CONFIG_PK_SYS_FDATASYNC_C_CPPFLAGS)X \
                 $(CONFIG_PK_SYS_FDATASYNC_C_DPKCONFIG)X \
                 $(CONFIG_PK_SYS_FDATASYNC_C_CFLAGS)X \
                 $(CONFIG_PK_SYS_FDATASYNC_C_LDFLAGS)X \
                 $(CONFIG_PK_SYS_FDATASYNC_C_CXXFLAGS)X \
                 $(CONFIG_PK_SYS_FDATASYNC_C_ASFLAGS)X \
                 $(PK_SYS_FDATASYNC_C_BSBIT)X \
                 $(PK_SYS_FDATASYNC_C_BUILDARCH)X \
		 $(PK_SYS_FDATASYNC_C_CSRCFILE)X \
                 $(CONFIG_PK_SYS_FDATASYNC_C_SRCFILE)X \
                 $(CONFIG_PK_SYS_FDATASYNC_C_CSRCFILE)

$(PK_SYS_FDATASYNC_C_DIR)/build: FORCE
	$(Q)$(call PK_SYS_FDATASYNC_C_sh,$(srctree))
