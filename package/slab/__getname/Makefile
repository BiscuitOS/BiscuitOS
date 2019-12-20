################################################
#
# __getname
#
################################################
PK___GETNAME_NAME        := __getname
PK___GETNAME_VERSION     := $(CONFIG_PK___GETNAME_VERSION)
PK___GETNAME_SITE        := $(CONFIG_PK___GETNAME_URL)
PK___GETNAME_GITHUB      := $(CONFIG_PK___GETNAME_GITHUB)
PK___GETNAME_SUBNAME     :=
PK___GETNAME_BUILDARCH   := $(CONFIG_PK___GETNAME_BUILDARCH)
PK___GETNAME_DIR         := $(srctree)/package/slab/__getname
PK___GETNAME_PATCH       := $(PK___GETNAME_DIR)/patch
PK___GETNAME_BSBIT       := __GETNAME-$(PK___GETNAME_VERSION).bsbit
PK___GETNAME_OUT         :=
PK___GETNAME_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK___GETNAME_TAR         := $(CONFIG_PK___GETNAME_TAR)
PK___GETNAME_PACKAGE     :=
PK___GETNAME_CONFIG      := $(CONFIG_PK___GETNAME_CONFIG)
SUB_TARGET                  += $(PK___GETNAME_DIR)/build

PK___GETNAME_sh = $(CONFIG_SHELL) $(PK___GETNAME_SCRIPTS) \
                 $1X \
                 $(PK___GETNAME_NAME)X \
                 $(PK___GETNAME_VERSION)X \
                 $(PK___GETNAME_SITE)X \
                 $(PK___GETNAME_GITHUB)X \
                 $(PK___GETNAME_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK___GETNAME_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK___GETNAME_SUBNAME)X \
                 $(CONFIG_PK___GETNAME_CONFIG)X \
                 $(CONFIG_PK___GETNAME_LIBPATH)X \
                 $(CONFIG_PK___GETNAME_CPPFLAGS)X \
                 $(CONFIG_PK___GETNAME_DPKCONFIG)X \
                 $(CONFIG_PK___GETNAME_CFLAGS)X \
                 $(CONFIG_PK___GETNAME_LDFLAGS)X \
                 $(CONFIG_PK___GETNAME_CXXFLAGS)X \
                 $(CONFIG_PK___GETNAME_ASFLAGS)X \
                 $(PK___GETNAME_BSBIT)X \
                 $(PK___GETNAME_BUILDARCH)X \
		 $(PK___GETNAME_CSRCFILE)X \
                 $(CONFIG_PK___GETNAME_SRCFILE)X \
                 $(CONFIG_PK___GETNAME_CSRCFILE)

$(PK___GETNAME_DIR)/build: FORCE
	$(Q)$(call PK___GETNAME_sh,$(srctree))
