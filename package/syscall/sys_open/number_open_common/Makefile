################################################
#
# number_open_common
#
################################################
PK_SYS_OPEN_NUMBER_NAME        := number_open_common
PK_SYS_OPEN_NUMBER_VERSION     := $(CONFIG_PK_SYS_OPEN_NUMBER_VERSION)
PK_SYS_OPEN_NUMBER_SITE        := $(CONFIG_PK_SYS_OPEN_NUMBER_URL)
PK_SYS_OPEN_NUMBER_GITHUB      := $(CONFIG_PK_SYS_OPEN_NUMBER_GITHUB)
PK_SYS_OPEN_NUMBER_SUBNAME     :=
PK_SYS_OPEN_NUMBER_BUILDARCH   := $(CONFIG_PK_SYS_OPEN_NUMBER_BUILDARCH)
PK_SYS_OPEN_NUMBER_DIR         := $(srctree)/package/syscall/sys_open/number_open_common
PK_SYS_OPEN_NUMBER_PATCH       := $(PK_SYS_OPEN_NUMBER_DIR)/patch
PK_SYS_OPEN_NUMBER_BSBIT       := number_open_common-$(PK_SYS_OPEN_NUMBER_VERSION).bsbit
PK_SYS_OPEN_NUMBER_OUT         :=
PK_SYS_OPEN_NUMBER_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_SYS_OPEN_NUMBER_TAR         := $(CONFIG_PK_SYS_OPEN_NUMBER_TAR)
PK_SYS_OPEN_NUMBER_PACKAGE     :=
PK_SYS_OPEN_NUMBER_CONFIG      := $(CONFIG_PK_SYS_OPEN_NUMBER_CONFIG)
SUB_TARGET                  += $(PK_SYS_OPEN_NUMBER_DIR)/build

PK_SYS_OPEN_NUMBER_sh = $(CONFIG_SHELL) $(PK_SYS_OPEN_NUMBER_SCRIPTS) \
                 $1X \
                 $(PK_SYS_OPEN_NUMBER_NAME)X \
                 $(PK_SYS_OPEN_NUMBER_VERSION)X \
                 $(PK_SYS_OPEN_NUMBER_SITE)X \
                 $(PK_SYS_OPEN_NUMBER_GITHUB)X \
                 $(PK_SYS_OPEN_NUMBER_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_SYS_OPEN_NUMBER_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_SYS_OPEN_NUMBER_SUBNAME)X \
                 $(CONFIG_PK_SYS_OPEN_NUMBER_CONFIG)X \
                 $(CONFIG_PK_SYS_OPEN_NUMBER_LIBPATH)X \
                 $(CONFIG_PK_SYS_OPEN_NUMBER_CPPFLAGS)X \
                 $(CONFIG_PK_SYS_OPEN_NUMBER_DPKCONFIG)X \
                 $(CONFIG_PK_SYS_OPEN_NUMBER_CFLAGS)X \
                 $(CONFIG_PK_SYS_OPEN_NUMBER_LDFLAGS)X \
                 $(CONFIG_PK_SYS_OPEN_NUMBER_CXXFLAGS)X \
                 $(CONFIG_PK_SYS_OPEN_NUMBER_ASFLAGS)X \
                 $(PK_SYS_OPEN_NUMBER_BSBIT)X \
                 $(PK_SYS_OPEN_NUMBER_BUILDARCH)X \
		 $(PK_SYS_OPEN_NUMBER_CSRCFILE)X \
                 $(CONFIG_PK_SYS_OPEN_NUMBER_SRCFILE)X \
                 $(CONFIG_PK_SYS_OPEN_NUMBER_CSRCFILE)

$(PK_SYS_OPEN_NUMBER_DIR)/build: FORCE
	$(Q)$(call PK_SYS_OPEN_NUMBER_sh,$(srctree))
