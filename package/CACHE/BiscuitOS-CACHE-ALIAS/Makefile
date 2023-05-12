################################################
#
# BiscuitOS-CACHE-ALIAS
#
################################################
PK_CACHE_ALIAS_NAME        := BiscuitOS-CACHE-ALIAS
PK_CACHE_ALIAS_VERSION     := $(CONFIG_PK_CACHE_ALIAS_VERSION)
PK_CACHE_ALIAS_SITE        := $(CONFIG_PK_CACHE_ALIAS_URL)
PK_CACHE_ALIAS_GITHUB      := $(CONFIG_PK_CACHE_ALIAS_GITHUB)
PK_CACHE_ALIAS_SUBNAME     :=
PK_CACHE_ALIAS_BUILDARCH   := $(CONFIG_PK_CACHE_ALIAS_BUILDARCH)
PK_CACHE_ALIAS_DIR         := $(srctree)/package/CACHE/BiscuitOS-CACHE-ALIAS
PK_CACHE_ALIAS_PATCH       := $(PK_CACHE_ALIAS_DIR)/patch
PK_CACHE_ALIAS_BSBIT       := BiscuitOS-CACHE-ALIAS-$(PK_CACHE_ALIAS_VERSION).bsbit
PK_CACHE_ALIAS_OUT         :=
PK_CACHE_ALIAS_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_CACHE_ALIAS_TAR         := $(CONFIG_PK_CACHE_ALIAS_TAR)
PK_CACHE_ALIAS_PACKAGE     :=
PK_CACHE_ALIAS_CONFIG      := $(CONFIG_PK_CACHE_ALIAS_CONFIG)
SUB_TARGET                  += $(PK_CACHE_ALIAS_DIR)/build

PK_CACHE_ALIAS_sh = $(CONFIG_SHELL) $(PK_CACHE_ALIAS_SCRIPTS) \
                 $1X \
                 $(PK_CACHE_ALIAS_NAME)X \
                 $(PK_CACHE_ALIAS_VERSION)X \
                 $(PK_CACHE_ALIAS_SITE)X \
                 $(PK_CACHE_ALIAS_GITHUB)X \
                 $(PK_CACHE_ALIAS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CACHE_ALIAS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CACHE_ALIAS_SUBNAME)X \
                 $(CONFIG_PK_CACHE_ALIAS_CONFIG)X \
                 $(CONFIG_PK_CACHE_ALIAS_LIBPATH)X \
                 $(CONFIG_PK_CACHE_ALIAS_CPPFLAGS)X \
                 $(CONFIG_PK_CACHE_ALIAS_DPKCONFIG)X \
                 $(CONFIG_PK_CACHE_ALIAS_CFLAGS)X \
                 $(CONFIG_PK_CACHE_ALIAS_LDFLAGS)X \
                 $(CONFIG_PK_CACHE_ALIAS_CXXFLAGS)X \
                 $(CONFIG_PK_CACHE_ALIAS_ASFLAGS)X \
                 $(PK_CACHE_ALIAS_BSBIT)X \
                 $(PK_CACHE_ALIAS_BUILDARCH)X \
		 $(PK_CACHE_ALIAS_CSRCFILE)X \
                 $(CONFIG_PK_CACHE_ALIAS_SRCFILE)X \
                 $(CONFIG_PK_CACHE_ALIAS_CSRCFILE)

$(PK_CACHE_ALIAS_DIR)/build: FORCE
	$(Q)$(call PK_CACHE_ALIAS_sh,$(srctree))
