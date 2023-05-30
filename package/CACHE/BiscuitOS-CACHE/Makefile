################################################
#
# BiscuitOS-CACHE
#
################################################
PK_CACHE0_NAME        := BiscuitOS-CACHE
PK_CACHE0_VERSION     := $(CONFIG_PK_CACHE0_VERSION)
PK_CACHE0_SITE        := $(CONFIG_PK_CACHE0_URL)
PK_CACHE0_GITHUB      := $(CONFIG_PK_CACHE0_GITHUB)
PK_CACHE0_SUBNAME     :=
PK_CACHE0_BUILDARCH   := $(CONFIG_PK_CACHE0_BUILDARCH)
PK_CACHE0_DIR         := $(srctree)/package/CACHE/BiscuitOS-CACHE
PK_CACHE0_PATCH       := $(PK_CACHE0_DIR)/patch
PK_CACHE0_BSBIT       := BiscuitOS-CACHE-$(PK_CACHE0_VERSION).bsbit
PK_CACHE0_OUT         :=
PK_CACHE0_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_CACHE0_TAR         := $(CONFIG_PK_CACHE0_TAR)
PK_CACHE0_PACKAGE     :=
PK_CACHE0_CONFIG      := $(CONFIG_PK_CACHE0_CONFIG)
SUB_TARGET                  += $(PK_CACHE0_DIR)/build

PK_CACHE0_sh = $(CONFIG_SHELL) $(PK_CACHE0_SCRIPTS) \
                 $1X \
                 $(PK_CACHE0_NAME)X \
                 $(PK_CACHE0_VERSION)X \
                 $(PK_CACHE0_SITE)X \
                 $(PK_CACHE0_GITHUB)X \
                 $(PK_CACHE0_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CACHE0_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CACHE0_SUBNAME)X \
                 $(CONFIG_PK_CACHE0_CONFIG)X \
                 $(CONFIG_PK_CACHE0_LIBPATH)X \
                 $(CONFIG_PK_CACHE0_CPPFLAGS)X \
                 $(CONFIG_PK_CACHE0_DPKCONFIG)X \
                 $(CONFIG_PK_CACHE0_CFLAGS)X \
                 $(CONFIG_PK_CACHE0_LDFLAGS)X \
                 $(CONFIG_PK_CACHE0_CXXFLAGS)X \
                 $(CONFIG_PK_CACHE0_ASFLAGS)X \
                 $(PK_CACHE0_BSBIT)X \
                 $(PK_CACHE0_BUILDARCH)X \
		 $(PK_CACHE0_CSRCFILE)X \
                 $(CONFIG_PK_CACHE0_SRCFILE)X \
                 $(CONFIG_PK_CACHE0_CSRCFILE)

$(PK_CACHE0_DIR)/build: FORCE
	$(Q)$(call PK_CACHE0_sh,$(srctree))
