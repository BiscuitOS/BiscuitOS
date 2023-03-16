################################################
#
# BiscuitOS-CACHE-RAM
#
################################################
PK_CACHE_RAM_NAME        := BiscuitOS-CACHE-RAM
PK_CACHE_RAM_VERSION     := $(CONFIG_PK_CACHE_RAM_VERSION)
PK_CACHE_RAM_SITE        := $(CONFIG_PK_CACHE_RAM_URL)
PK_CACHE_RAM_GITHUB      := $(CONFIG_PK_CACHE_RAM_GITHUB)
PK_CACHE_RAM_SUBNAME     :=
PK_CACHE_RAM_BUILDARCH   := $(CONFIG_PK_CACHE_RAM_BUILDARCH)
PK_CACHE_RAM_DIR         := $(srctree)/package/CACHE/BiscuitOS-CACHE-RAM
PK_CACHE_RAM_PATCH       := $(PK_CACHE_RAM_DIR)/patch
PK_CACHE_RAM_BSBIT       := BiscuitOS-CACHE-RAM-$(PK_CACHE_RAM_VERSION).bsbit
PK_CACHE_RAM_OUT         :=
PK_CACHE_RAM_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_CACHE_RAM_TAR         := $(CONFIG_PK_CACHE_RAM_TAR)
PK_CACHE_RAM_PACKAGE     :=
PK_CACHE_RAM_CONFIG      := $(CONFIG_PK_CACHE_RAM_CONFIG)
SUB_TARGET                  += $(PK_CACHE_RAM_DIR)/build

PK_CACHE_RAM_sh = $(CONFIG_SHELL) $(PK_CACHE_RAM_SCRIPTS) \
                 $1X \
                 $(PK_CACHE_RAM_NAME)X \
                 $(PK_CACHE_RAM_VERSION)X \
                 $(PK_CACHE_RAM_SITE)X \
                 $(PK_CACHE_RAM_GITHUB)X \
                 $(PK_CACHE_RAM_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CACHE_RAM_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CACHE_RAM_SUBNAME)X \
                 $(CONFIG_PK_CACHE_RAM_CONFIG)X \
                 $(CONFIG_PK_CACHE_RAM_LIBPATH)X \
                 $(CONFIG_PK_CACHE_RAM_CPPFLAGS)X \
                 $(CONFIG_PK_CACHE_RAM_DPKCONFIG)X \
                 $(CONFIG_PK_CACHE_RAM_CFLAGS)X \
                 $(CONFIG_PK_CACHE_RAM_LDFLAGS)X \
                 $(CONFIG_PK_CACHE_RAM_CXXFLAGS)X \
                 $(CONFIG_PK_CACHE_RAM_ASFLAGS)X \
                 $(PK_CACHE_RAM_BSBIT)X \
                 $(PK_CACHE_RAM_BUILDARCH)X \
		 $(PK_CACHE_RAM_CSRCFILE)X \
                 $(CONFIG_PK_CACHE_RAM_SRCFILE)X \
                 $(CONFIG_PK_CACHE_RAM_CSRCFILE)

$(PK_CACHE_RAM_DIR)/build: FORCE
	$(Q)$(call PK_CACHE_RAM_sh,$(srctree))
