################################################
#
# open_kapi
#
################################################
PK_OPEN_KAPI_NAME        := open_kapi
PK_OPEN_KAPI_VERSION     := $(CONFIG_PK_OPEN_KAPI_VERSION)
PK_OPEN_KAPI_SITE        := $(CONFIG_PK_OPEN_KAPI_URL)
PK_OPEN_KAPI_GITHUB      := $(CONFIG_PK_OPEN_KAPI_GITHUB)
PK_OPEN_KAPI_SUBNAME     :=
PK_OPEN_KAPI_BUILDARCH   := $(CONFIG_PK_OPEN_KAPI_BUILDARCH)
PK_OPEN_KAPI_DIR         := $(srctree)/package/syscall/open/open_kapi
PK_OPEN_KAPI_PATCH       := $(PK_OPEN_KAPI_DIR)/patch
PK_OPEN_KAPI_BSBIT       := open_kapi-$(PK_OPEN_KAPI_VERSION).bsbit
PK_OPEN_KAPI_OUT         :=
PK_OPEN_KAPI_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_OPEN_KAPI_TAR         := $(CONFIG_PK_OPEN_KAPI_TAR)
PK_OPEN_KAPI_PACKAGE     :=
PK_OPEN_KAPI_CONFIG      := $(CONFIG_PK_OPEN_KAPI_CONFIG)
SUB_TARGET                  += $(PK_OPEN_KAPI_DIR)/build

PK_OPEN_KAPI_sh = $(CONFIG_SHELL) $(PK_OPEN_KAPI_SCRIPTS) \
                 $1X \
                 $(PK_OPEN_KAPI_NAME)X \
                 $(PK_OPEN_KAPI_VERSION)X \
                 $(PK_OPEN_KAPI_SITE)X \
                 $(PK_OPEN_KAPI_GITHUB)X \
                 $(PK_OPEN_KAPI_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_OPEN_KAPI_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_OPEN_KAPI_SUBNAME)X \
                 $(CONFIG_PK_OPEN_KAPI_CONFIG)X \
                 $(CONFIG_PK_OPEN_KAPI_LIBPATH)X \
                 $(CONFIG_PK_OPEN_KAPI_CPPFLAGS)X \
                 $(CONFIG_PK_OPEN_KAPI_DPKCONFIG)X \
                 $(CONFIG_PK_OPEN_KAPI_CFLAGS)X \
                 $(CONFIG_PK_OPEN_KAPI_LDFLAGS)X \
                 $(CONFIG_PK_OPEN_KAPI_CXXFLAGS)X \
                 $(CONFIG_PK_OPEN_KAPI_ASFLAGS)X \
                 $(PK_OPEN_KAPI_BSBIT)X \
                 $(PK_OPEN_KAPI_BUILDARCH)X \
		 $(PK_OPEN_KAPI_CSRCFILE)X \
                 $(CONFIG_PK_OPEN_KAPI_SRCFILE)X \
                 $(CONFIG_PK_OPEN_KAPI_CSRCFILE)

$(PK_OPEN_KAPI_DIR)/build: FORCE
	$(Q)$(call PK_OPEN_KAPI_sh,$(srctree))
