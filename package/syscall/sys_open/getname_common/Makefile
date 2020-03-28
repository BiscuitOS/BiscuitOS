################################################
#
# getname_common
#
################################################
PK_SYS_OPEN_GETNAME_NAME        := getname_common
PK_SYS_OPEN_GETNAME_VERSION     := $(CONFIG_PK_SYS_OPEN_GETNAME_VERSION)
PK_SYS_OPEN_GETNAME_SITE        := $(CONFIG_PK_SYS_OPEN_GETNAME_URL)
PK_SYS_OPEN_GETNAME_GITHUB      := $(CONFIG_PK_SYS_OPEN_GETNAME_GITHUB)
PK_SYS_OPEN_GETNAME_SUBNAME     :=
PK_SYS_OPEN_GETNAME_BUILDARCH   := $(CONFIG_PK_SYS_OPEN_GETNAME_BUILDARCH)
PK_SYS_OPEN_GETNAME_DIR         := $(srctree)/package/syscall/sys_open/getname_common
PK_SYS_OPEN_GETNAME_PATCH       := $(PK_SYS_OPEN_GETNAME_DIR)/patch
PK_SYS_OPEN_GETNAME_BSBIT       := getname_common-$(PK_SYS_OPEN_GETNAME_VERSION).bsbit
PK_SYS_OPEN_GETNAME_OUT         :=
PK_SYS_OPEN_GETNAME_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_SYS_OPEN_GETNAME_TAR         := $(CONFIG_PK_SYS_OPEN_GETNAME_TAR)
PK_SYS_OPEN_GETNAME_PACKAGE     :=
PK_SYS_OPEN_GETNAME_CONFIG      := $(CONFIG_PK_SYS_OPEN_GETNAME_CONFIG)
SUB_TARGET                  += $(PK_SYS_OPEN_GETNAME_DIR)/build

PK_SYS_OPEN_GETNAME_sh = $(CONFIG_SHELL) $(PK_SYS_OPEN_GETNAME_SCRIPTS) \
                 $1X \
                 $(PK_SYS_OPEN_GETNAME_NAME)X \
                 $(PK_SYS_OPEN_GETNAME_VERSION)X \
                 $(PK_SYS_OPEN_GETNAME_SITE)X \
                 $(PK_SYS_OPEN_GETNAME_GITHUB)X \
                 $(PK_SYS_OPEN_GETNAME_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_SYS_OPEN_GETNAME_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_SYS_OPEN_GETNAME_SUBNAME)X \
                 $(CONFIG_PK_SYS_OPEN_GETNAME_CONFIG)X \
                 $(CONFIG_PK_SYS_OPEN_GETNAME_LIBPATH)X \
                 $(CONFIG_PK_SYS_OPEN_GETNAME_CPPFLAGS)X \
                 $(CONFIG_PK_SYS_OPEN_GETNAME_DPKCONFIG)X \
                 $(CONFIG_PK_SYS_OPEN_GETNAME_CFLAGS)X \
                 $(CONFIG_PK_SYS_OPEN_GETNAME_LDFLAGS)X \
                 $(CONFIG_PK_SYS_OPEN_GETNAME_CXXFLAGS)X \
                 $(CONFIG_PK_SYS_OPEN_GETNAME_ASFLAGS)X \
                 $(PK_SYS_OPEN_GETNAME_BSBIT)X \
                 $(PK_SYS_OPEN_GETNAME_BUILDARCH)X \
		 $(PK_SYS_OPEN_GETNAME_CSRCFILE)X \
                 $(CONFIG_PK_SYS_OPEN_GETNAME_SRCFILE)X \
                 $(CONFIG_PK_SYS_OPEN_GETNAME_CSRCFILE)

$(PK_SYS_OPEN_GETNAME_DIR)/build: FORCE
	$(Q)$(call PK_SYS_OPEN_GETNAME_sh,$(srctree))
