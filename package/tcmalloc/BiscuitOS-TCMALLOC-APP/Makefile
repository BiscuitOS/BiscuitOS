################################################
#
# BiscuitOS-TCMALLOC-APP
#
################################################
PK_TCMALLOC_APP_NAME        := BiscuitOS-TCMALLOC-APP
PK_TCMALLOC_APP_VERSION     := $(CONFIG_PK_TCMALLOC_APP_VERSION)
PK_TCMALLOC_APP_SITE        := $(CONFIG_PK_TCMALLOC_APP_URL)
PK_TCMALLOC_APP_GITHUB      := $(CONFIG_PK_TCMALLOC_APP_GITHUB)
PK_TCMALLOC_APP_SUBNAME     :=
PK_TCMALLOC_APP_BUILDARCH   := $(CONFIG_PK_TCMALLOC_APP_BUILDARCH)
PK_TCMALLOC_APP_DIR         := $(srctree)/package/tcmalloc/BiscuitOS-TCMALLOC-APP
PK_TCMALLOC_APP_PATCH       := $(PK_TCMALLOC_APP_DIR)/patch
PK_TCMALLOC_APP_BSBIT       := BiscuitOS-TCMALLOC-APP-$(PK_TCMALLOC_APP_VERSION).bsbit
PK_TCMALLOC_APP_OUT         :=
PK_TCMALLOC_APP_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_TCMALLOC_APP_TAR         := $(CONFIG_PK_TCMALLOC_APP_TAR)
PK_TCMALLOC_APP_PACKAGE     :=
PK_TCMALLOC_APP_CONFIG      := $(CONFIG_PK_TCMALLOC_APP_CONFIG)
SUB_TARGET                  += $(PK_TCMALLOC_APP_DIR)/build

PK_TCMALLOC_APP_sh = $(CONFIG_SHELL) $(PK_TCMALLOC_APP_SCRIPTS) \
                 $1X \
                 $(PK_TCMALLOC_APP_NAME)X \
                 $(PK_TCMALLOC_APP_VERSION)X \
                 $(PK_TCMALLOC_APP_SITE)X \
                 $(PK_TCMALLOC_APP_GITHUB)X \
                 $(PK_TCMALLOC_APP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_TCMALLOC_APP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_TCMALLOC_APP_SUBNAME)X \
                 $(CONFIG_PK_TCMALLOC_APP_CONFIG)X \
                 $(CONFIG_PK_TCMALLOC_APP_LIBPATH)X \
                 $(CONFIG_PK_TCMALLOC_APP_CPPFLAGS)X \
                 $(CONFIG_PK_TCMALLOC_APP_DPKCONFIG)X \
                 $(CONFIG_PK_TCMALLOC_APP_CFLAGS)X \
                 $(CONFIG_PK_TCMALLOC_APP_LDFLAGS)X \
                 $(CONFIG_PK_TCMALLOC_APP_CXXFLAGS)X \
                 $(CONFIG_PK_TCMALLOC_APP_ASFLAGS)X \
                 $(PK_TCMALLOC_APP_BSBIT)X \
                 $(PK_TCMALLOC_APP_BUILDARCH)X \
		 $(PK_TCMALLOC_APP_CSRCFILE)X \
                 $(CONFIG_PK_TCMALLOC_APP_SRCFILE)X \
                 $(CONFIG_PK_TCMALLOC_APP_CSRCFILE)

$(PK_TCMALLOC_APP_DIR)/build: FORCE
	$(Q)$(call PK_TCMALLOC_APP_sh,$(srctree))
