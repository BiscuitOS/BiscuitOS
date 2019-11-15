################################################
#
# kobject_get_path
#
################################################
PK_KOBJECT_GET_PATH_NAME        := kobject_get_path
PK_KOBJECT_GET_PATH_VERSION     := $(CONFIG_PK_KOBJECT_GET_PATH_VERSION)
PK_KOBJECT_GET_PATH_SITE        := $(CONFIG_PK_KOBJECT_GET_PATH_URL)
PK_KOBJECT_GET_PATH_GITHUB      := $(CONFIG_PK_KOBJECT_GET_PATH_GITHUB)
PK_KOBJECT_GET_PATH_SUBNAME     :=
PK_KOBJECT_GET_PATH_BUILDARCH   := $(CONFIG_PK_KOBJECT_GET_PATH_BUILDARCH)
PK_KOBJECT_GET_PATH_DIR         := $(srctree)/package/kobject/kobject_get_path
PK_KOBJECT_GET_PATH_PATCH       := $(PK_KOBJECT_GET_PATH_DIR)/patch
PK_KOBJECT_GET_PATH_BSBIT       := kobject_get_path-$(PK_KOBJECT_GET_PATH_VERSION).bsbit
PK_KOBJECT_GET_PATH_OUT         :=
PK_KOBJECT_GET_PATH_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_KOBJECT_GET_PATH_TAR         := $(CONFIG_PK_KOBJECT_GET_PATH_TAR)
PK_KOBJECT_GET_PATH_PACKAGE     :=
PK_KOBJECT_GET_PATH_CONFIG      := $(CONFIG_PK_KOBJECT_GET_PATH_CONFIG)
SUB_TARGET                  += $(PK_KOBJECT_GET_PATH_DIR)/build

PK_KOBJECT_GET_PATH_sh = $(CONFIG_SHELL) $(PK_KOBJECT_GET_PATH_SCRIPTS) \
                 $1X \
                 $(PK_KOBJECT_GET_PATH_NAME)X \
                 $(PK_KOBJECT_GET_PATH_VERSION)X \
                 $(PK_KOBJECT_GET_PATH_SITE)X \
                 $(PK_KOBJECT_GET_PATH_GITHUB)X \
                 $(PK_KOBJECT_GET_PATH_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KOBJECT_GET_PATH_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KOBJECT_GET_PATH_SUBNAME)X \
                 $(CONFIG_PK_KOBJECT_GET_PATH_CONFIG)X \
                 $(CONFIG_PK_KOBJECT_GET_PATH_LIBPATH)X \
                 $(CONFIG_PK_KOBJECT_GET_PATH_CPPFLAGS)X \
                 $(CONFIG_PK_KOBJECT_GET_PATH_DPKCONFIG)X \
                 $(CONFIG_PK_KOBJECT_GET_PATH_CFLAGS)X \
                 $(CONFIG_PK_KOBJECT_GET_PATH_LDFLAGS)X \
                 $(CONFIG_PK_KOBJECT_GET_PATH_CXXFLAGS)X \
                 $(CONFIG_PK_KOBJECT_GET_PATH_ASFLAGS)X \
                 $(PK_KOBJECT_GET_PATH_BSBIT)X \
                 $(PK_KOBJECT_GET_PATH_BUILDARCH)X \
		 $(PK_KOBJECT_GET_PATH_CSRCFILE)X \
                 $(CONFIG_PK_KOBJECT_GET_PATH_SRCFILE)X \
                 $(CONFIG_PK_KOBJECT_GET_PATH_CSRCFILE)

$(PK_KOBJECT_GET_PATH_DIR)/build: FORCE
	$(Q)$(call PK_KOBJECT_GET_PATH_sh,$(srctree))
