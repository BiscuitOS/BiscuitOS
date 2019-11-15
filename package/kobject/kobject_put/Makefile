################################################
#
# kobject_put
#
################################################
PK_KOBJECT_PUT_NAME        := kobject_put
PK_KOBJECT_PUT_VERSION     := $(CONFIG_PK_KOBJECT_PUT_VERSION)
PK_KOBJECT_PUT_SITE        := $(CONFIG_PK_KOBJECT_PUT_URL)
PK_KOBJECT_PUT_GITHUB      := $(CONFIG_PK_KOBJECT_PUT_GITHUB)
PK_KOBJECT_PUT_SUBNAME     :=
PK_KOBJECT_PUT_BUILDARCH   := $(CONFIG_PK_KOBJECT_PUT_BUILDARCH)
PK_KOBJECT_PUT_DIR         := $(srctree)/package/kobject/kobject_put
PK_KOBJECT_PUT_PATCH       := $(PK_KOBJECT_PUT_DIR)/patch
PK_KOBJECT_PUT_BSBIT       := kobject_put-$(PK_KOBJECT_PUT_VERSION).bsbit
PK_KOBJECT_PUT_OUT         :=
PK_KOBJECT_PUT_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_KOBJECT_PUT_TAR         := $(CONFIG_PK_KOBJECT_PUT_TAR)
PK_KOBJECT_PUT_PACKAGE     :=
PK_KOBJECT_PUT_CONFIG      := $(CONFIG_PK_KOBJECT_PUT_CONFIG)
SUB_TARGET                  += $(PK_KOBJECT_PUT_DIR)/build

PK_KOBJECT_PUT_sh = $(CONFIG_SHELL) $(PK_KOBJECT_PUT_SCRIPTS) \
                 $1X \
                 $(PK_KOBJECT_PUT_NAME)X \
                 $(PK_KOBJECT_PUT_VERSION)X \
                 $(PK_KOBJECT_PUT_SITE)X \
                 $(PK_KOBJECT_PUT_GITHUB)X \
                 $(PK_KOBJECT_PUT_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_KOBJECT_PUT_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_KOBJECT_PUT_SUBNAME)X \
                 $(CONFIG_PK_KOBJECT_PUT_CONFIG)X \
                 $(CONFIG_PK_KOBJECT_PUT_LIBPATH)X \
                 $(CONFIG_PK_KOBJECT_PUT_CPPFLAGS)X \
                 $(CONFIG_PK_KOBJECT_PUT_DPKCONFIG)X \
                 $(CONFIG_PK_KOBJECT_PUT_CFLAGS)X \
                 $(CONFIG_PK_KOBJECT_PUT_LDFLAGS)X \
                 $(CONFIG_PK_KOBJECT_PUT_CXXFLAGS)X \
                 $(CONFIG_PK_KOBJECT_PUT_ASFLAGS)X \
                 $(PK_KOBJECT_PUT_BSBIT)X \
                 $(PK_KOBJECT_PUT_BUILDARCH)X \
		 $(PK_KOBJECT_PUT_CSRCFILE)X \
                 $(CONFIG_PK_KOBJECT_PUT_SRCFILE)X \
                 $(CONFIG_PK_KOBJECT_PUT_CSRCFILE)

$(PK_KOBJECT_PUT_DIR)/build: FORCE
	$(Q)$(call PK_KOBJECT_PUT_sh,$(srctree))
