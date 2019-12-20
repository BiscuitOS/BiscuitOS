################################################
#
# open_uapi
#
################################################
PK_OPEN_UAPI_NAME        := open_uapi
PK_OPEN_UAPI_VERSION     := $(CONFIG_PK_OPEN_UAPI_VERSION)
PK_OPEN_UAPI_SITE        := $(CONFIG_PK_OPEN_UAPI_URL)
PK_OPEN_UAPI_GITHUB      := $(CONFIG_PK_OPEN_UAPI_GITHUB)
PK_OPEN_UAPI_SUBNAME     :=
PK_OPEN_UAPI_BUILDARCH   := $(CONFIG_PK_OPEN_UAPI_BUILDARCH)
PK_OPEN_UAPI_DIR         := $(srctree)/package/syscall/open/open_uapi
PK_OPEN_UAPI_PATCH       := $(PK_OPEN_UAPI_DIR)/patch
PK_OPEN_UAPI_BSBIT       := open_uapi-$(PK_OPEN_UAPI_VERSION).bsbit
PK_OPEN_UAPI_OUT         :=
PK_OPEN_UAPI_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_OPEN_UAPI_TAR         := $(CONFIG_PK_OPEN_UAPI_TAR)
PK_OPEN_UAPI_PACKAGE     :=
PK_OPEN_UAPI_CONFIG      := $(CONFIG_PK_OPEN_UAPI_CONFIG)
SUB_TARGET                  += $(PK_OPEN_UAPI_DIR)/build

PK_OPEN_UAPI_sh = $(CONFIG_SHELL) $(PK_OPEN_UAPI_SCRIPTS) \
                 $1X \
                 $(PK_OPEN_UAPI_NAME)X \
                 $(PK_OPEN_UAPI_VERSION)X \
                 $(PK_OPEN_UAPI_SITE)X \
                 $(PK_OPEN_UAPI_GITHUB)X \
                 $(PK_OPEN_UAPI_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_OPEN_UAPI_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_OPEN_UAPI_SUBNAME)X \
                 $(CONFIG_PK_OPEN_UAPI_CONFIG)X \
                 $(CONFIG_PK_OPEN_UAPI_LIBPATH)X \
                 $(CONFIG_PK_OPEN_UAPI_CPPFLAGS)X \
                 $(CONFIG_PK_OPEN_UAPI_DPKCONFIG)X \
                 $(CONFIG_PK_OPEN_UAPI_CFLAGS)X \
                 $(CONFIG_PK_OPEN_UAPI_LDFLAGS)X \
                 $(CONFIG_PK_OPEN_UAPI_CXXFLAGS)X \
                 $(CONFIG_PK_OPEN_UAPI_ASFLAGS)X \
                 $(PK_OPEN_UAPI_BSBIT)X \
                 $(PK_OPEN_UAPI_BUILDARCH)X \
		 $(PK_OPEN_UAPI_CSRCFILE)X \
                 $(CONFIG_PK_OPEN_UAPI_SRCFILE)X \
                 $(CONFIG_PK_OPEN_UAPI_CSRCFILE)

$(PK_OPEN_UAPI_DIR)/build: FORCE
	$(Q)$(call PK_OPEN_UAPI_sh,$(srctree))
