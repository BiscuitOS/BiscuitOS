################################################
#
# kobject_init
#
################################################
PK_KOBJECT_INIT_NAME        := kobject_init
PK_KOBJECT_INIT_VERSION     := $(CONFIG_PK_KOBJECT_INIT_VERSION)
PK_KOBJECT_INIT_SITE        := $(CONFIG_PK_KOBJECT_INIT_URL)
PK_KOBJECT_INIT_GITHUB      := $(CONFIG_PK_KOBJECT_INIT_GITHUB)
PK_KOBJECT_INIT_SUBNAME     :=
PK_KOBJECT_INIT_BUILDARCH   := $(CONFIG_PK_KOBJECT_INIT_BUILDARCH)
PK_KOBJECT_INIT_DIR         := $(srctree)/package/kobject/kobject_init
PK_KOBJECT_INIT_PATCH       := $(PK_KOBJECT_INIT_DIR)/patch
PK_KOBJECT_INIT_BSBIT       := kobject_init-$(PK_KOBJECT_INIT_VERSION).bsbit
PK_KOBJECT_INIT_OUT         :=
PK_KOBJECT_INIT_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_KOBJECT_INIT_TAR         := $(CONFIG_PK_KOBJECT_INIT_TAR)
PK_KOBJECT_INIT_PACKAGE     :=
PK_KOBJECT_INIT_CONFIG      := $(CONFIG_PK_KOBJECT_INIT_CONFIG)
SUB_TARGET                  += $(PK_KOBJECT_INIT_DIR)/build

PK_KOBJECT_INIT_sh = $(CONFIG_SHELL) $(PK_KOBJECT_INIT_SCRIPTS) \
                 $1X \
                 $(PK_KOBJECT_INIT_NAME)X \
                 $(PK_KOBJECT_INIT_VERSION)X \
                 $(PK_KOBJECT_INIT_SITE)X \
                 $(PK_KOBJECT_INIT_GITHUB)X \
                 $(PK_KOBJECT_INIT_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KOBJECT_INIT_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KOBJECT_INIT_SUBNAME)X \
                 $(CONFIG_PK_KOBJECT_INIT_CONFIG)X \
                 $(CONFIG_PK_KOBJECT_INIT_LIBPATH)X \
                 $(CONFIG_PK_KOBJECT_INIT_CPPFLAGS)X \
                 $(CONFIG_PK_KOBJECT_INIT_DPKCONFIG)X \
                 $(CONFIG_PK_KOBJECT_INIT_CFLAGS)X \
                 $(CONFIG_PK_KOBJECT_INIT_LDFLAGS)X \
                 $(CONFIG_PK_KOBJECT_INIT_CXXFLAGS)X \
                 $(CONFIG_PK_KOBJECT_INIT_ASFLAGS)X \
                 $(PK_KOBJECT_INIT_BSBIT)X \
                 $(PK_KOBJECT_INIT_BUILDARCH)X \
		 $(PK_KOBJECT_INIT_CSRCFILE)X \
                 $(CONFIG_PK_KOBJECT_INIT_SRCFILE)X \
                 $(CONFIG_PK_KOBJECT_INIT_CSRCFILE)

$(PK_KOBJECT_INIT_DIR)/build: FORCE
	$(Q)$(call PK_KOBJECT_INIT_sh,$(srctree))
