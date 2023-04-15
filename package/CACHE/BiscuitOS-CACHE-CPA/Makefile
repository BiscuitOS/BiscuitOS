################################################
#
# BiscuitOS-CACHE-CPA
#
################################################
PK_CACHE_CPA_NAME        := BiscuitOS-CACHE-CPA
PK_CACHE_CPA_VERSION     := $(CONFIG_PK_CACHE_CPA_VERSION)
PK_CACHE_CPA_SITE        := $(CONFIG_PK_CACHE_CPA_URL)
PK_CACHE_CPA_GITHUB      := $(CONFIG_PK_CACHE_CPA_GITHUB)
PK_CACHE_CPA_SUBNAME     :=
PK_CACHE_CPA_BUILDARCH   := $(CONFIG_PK_CACHE_CPA_BUILDARCH)
PK_CACHE_CPA_DIR         := $(srctree)/package/CACHE/BiscuitOS-CACHE-CPA
PK_CACHE_CPA_PATCH       := $(PK_CACHE_CPA_DIR)/patch
PK_CACHE_CPA_BSBIT       := BiscuitOS-CACHE-CPA-$(PK_CACHE_CPA_VERSION).bsbit
PK_CACHE_CPA_OUT         :=
PK_CACHE_CPA_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_CACHE_CPA_TAR         := $(CONFIG_PK_CACHE_CPA_TAR)
PK_CACHE_CPA_PACKAGE     :=
PK_CACHE_CPA_CONFIG      := $(CONFIG_PK_CACHE_CPA_CONFIG)
SUB_TARGET                  += $(PK_CACHE_CPA_DIR)/build

PK_CACHE_CPA_sh = $(CONFIG_SHELL) $(PK_CACHE_CPA_SCRIPTS) \
                 $1X \
                 $(PK_CACHE_CPA_NAME)X \
                 $(PK_CACHE_CPA_VERSION)X \
                 $(PK_CACHE_CPA_SITE)X \
                 $(PK_CACHE_CPA_GITHUB)X \
                 $(PK_CACHE_CPA_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CACHE_CPA_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CACHE_CPA_SUBNAME)X \
                 $(CONFIG_PK_CACHE_CPA_CONFIG)X \
                 $(CONFIG_PK_CACHE_CPA_LIBPATH)X \
                 $(CONFIG_PK_CACHE_CPA_CPPFLAGS)X \
                 $(CONFIG_PK_CACHE_CPA_DPKCONFIG)X \
                 $(CONFIG_PK_CACHE_CPA_CFLAGS)X \
                 $(CONFIG_PK_CACHE_CPA_LDFLAGS)X \
                 $(CONFIG_PK_CACHE_CPA_CXXFLAGS)X \
                 $(CONFIG_PK_CACHE_CPA_ASFLAGS)X \
                 $(PK_CACHE_CPA_BSBIT)X \
                 $(PK_CACHE_CPA_BUILDARCH)X \
		 $(PK_CACHE_CPA_CSRCFILE)X \
                 $(CONFIG_PK_CACHE_CPA_SRCFILE)X \
                 $(CONFIG_PK_CACHE_CPA_CSRCFILE)

$(PK_CACHE_CPA_DIR)/build: FORCE
	$(Q)$(call PK_CACHE_CPA_sh,$(srctree))
