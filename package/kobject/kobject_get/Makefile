################################################
#
# kobject_get
#
################################################
PK_KOBJECT_GET_NAME        := kobject_get
PK_KOBJECT_GET_VERSION     := $(CONFIG_PK_KOBJECT_GET_VERSION)
PK_KOBJECT_GET_SITE        := $(CONFIG_PK_KOBJECT_GET_URL)
PK_KOBJECT_GET_GITHUB      := $(CONFIG_PK_KOBJECT_GET_GITHUB)
PK_KOBJECT_GET_SUBNAME     :=
PK_KOBJECT_GET_BUILDARCH   := $(CONFIG_PK_KOBJECT_GET_BUILDARCH)
PK_KOBJECT_GET_DIR         := $(srctree)/package/kobject/kobject_get
PK_KOBJECT_GET_PATCH       := $(PK_KOBJECT_GET_DIR)/patch
PK_KOBJECT_GET_BSBIT       := kobject_get-$(PK_KOBJECT_GET_VERSION).bsbit
PK_KOBJECT_GET_OUT         :=
PK_KOBJECT_GET_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_KOBJECT_GET_TAR         := $(CONFIG_PK_KOBJECT_GET_TAR)
PK_KOBJECT_GET_PACKAGE     :=
PK_KOBJECT_GET_CONFIG      := $(CONFIG_PK_KOBJECT_GET_CONFIG)
SUB_TARGET                  += $(PK_KOBJECT_GET_DIR)/build

PK_KOBJECT_GET_sh = $(CONFIG_SHELL) $(PK_KOBJECT_GET_SCRIPTS) \
                 $1X \
                 $(PK_KOBJECT_GET_NAME)X \
                 $(PK_KOBJECT_GET_VERSION)X \
                 $(PK_KOBJECT_GET_SITE)X \
                 $(PK_KOBJECT_GET_GITHUB)X \
                 $(PK_KOBJECT_GET_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KOBJECT_GET_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KOBJECT_GET_SUBNAME)X \
                 $(CONFIG_PK_KOBJECT_GET_CONFIG)X \
                 $(CONFIG_PK_KOBJECT_GET_LIBPATH)X \
                 $(CONFIG_PK_KOBJECT_GET_CPPFLAGS)X \
                 $(CONFIG_PK_KOBJECT_GET_DPKCONFIG)X \
                 $(CONFIG_PK_KOBJECT_GET_CFLAGS)X \
                 $(CONFIG_PK_KOBJECT_GET_LDFLAGS)X \
                 $(CONFIG_PK_KOBJECT_GET_CXXFLAGS)X \
                 $(CONFIG_PK_KOBJECT_GET_ASFLAGS)X \
                 $(PK_KOBJECT_GET_BSBIT)X \
                 $(PK_KOBJECT_GET_BUILDARCH)X \
		 $(PK_KOBJECT_GET_CSRCFILE)X \
                 $(CONFIG_PK_KOBJECT_GET_SRCFILE)X \
                 $(CONFIG_PK_KOBJECT_GET_CSRCFILE)

$(PK_KOBJECT_GET_DIR)/build: FORCE
	$(Q)$(call PK_KOBJECT_GET_sh,$(srctree))
