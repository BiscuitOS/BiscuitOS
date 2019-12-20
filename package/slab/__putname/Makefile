################################################
#
# __putname
#
################################################
PK___PUTNAME_NAME        := __putname
PK___PUTNAME_VERSION     := $(CONFIG_PK___PUTNAME_VERSION)
PK___PUTNAME_SITE        := $(CONFIG_PK___PUTNAME_URL)
PK___PUTNAME_GITHUB      := $(CONFIG_PK___PUTNAME_GITHUB)
PK___PUTNAME_SUBNAME     :=
PK___PUTNAME_BUILDARCH   := $(CONFIG_PK___PUTNAME_BUILDARCH)
PK___PUTNAME_DIR         := $(srctree)/package/slab/__putname
PK___PUTNAME_PATCH       := $(PK___PUTNAME_DIR)/patch
PK___PUTNAME_BSBIT       := __PUTNAME-$(PK___PUTNAME_VERSION).bsbit
PK___PUTNAME_OUT         :=
PK___PUTNAME_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK___PUTNAME_TAR         := $(CONFIG_PK___PUTNAME_TAR)
PK___PUTNAME_PACKAGE     :=
PK___PUTNAME_CONFIG      := $(CONFIG_PK___PUTNAME_CONFIG)
SUB_TARGET                  += $(PK___PUTNAME_DIR)/build

PK___PUTNAME_sh = $(CONFIG_SHELL) $(PK___PUTNAME_SCRIPTS) \
                 $1X \
                 $(PK___PUTNAME_NAME)X \
                 $(PK___PUTNAME_VERSION)X \
                 $(PK___PUTNAME_SITE)X \
                 $(PK___PUTNAME_GITHUB)X \
                 $(PK___PUTNAME_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK___PUTNAME_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK___PUTNAME_SUBNAME)X \
                 $(CONFIG_PK___PUTNAME_CONFIG)X \
                 $(CONFIG_PK___PUTNAME_LIBPATH)X \
                 $(CONFIG_PK___PUTNAME_CPPFLAGS)X \
                 $(CONFIG_PK___PUTNAME_DPKCONFIG)X \
                 $(CONFIG_PK___PUTNAME_CFLAGS)X \
                 $(CONFIG_PK___PUTNAME_LDFLAGS)X \
                 $(CONFIG_PK___PUTNAME_CXXFLAGS)X \
                 $(CONFIG_PK___PUTNAME_ASFLAGS)X \
                 $(PK___PUTNAME_BSBIT)X \
                 $(PK___PUTNAME_BUILDARCH)X \
		 $(PK___PUTNAME_CSRCFILE)X \
                 $(CONFIG_PK___PUTNAME_SRCFILE)X \
                 $(CONFIG_PK___PUTNAME_CSRCFILE)

$(PK___PUTNAME_DIR)/build: FORCE
	$(Q)$(call PK___PUTNAME_sh,$(srctree))
