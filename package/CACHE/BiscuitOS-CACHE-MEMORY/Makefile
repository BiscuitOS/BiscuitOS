################################################
#
# BiscuitOS-CACHE-MEMORY
#
################################################
PK_CACHE_MEMORY_NAME        := BiscuitOS-CACHE-MEMORY
PK_CACHE_MEMORY_VERSION     := $(CONFIG_PK_CACHE_MEMORY_VERSION)
PK_CACHE_MEMORY_SITE        := $(CONFIG_PK_CACHE_MEMORY_URL)
PK_CACHE_MEMORY_GITHUB      := $(CONFIG_PK_CACHE_MEMORY_GITHUB)
PK_CACHE_MEMORY_SUBNAME     :=
PK_CACHE_MEMORY_BUILDARCH   := $(CONFIG_PK_CACHE_MEMORY_BUILDARCH)
PK_CACHE_MEMORY_DIR         := $(srctree)/package/CACHE/BiscuitOS-CACHE-MEMORY
PK_CACHE_MEMORY_PATCH       := $(PK_CACHE_MEMORY_DIR)/patch
PK_CACHE_MEMORY_BSBIT       := BiscuitOS-CACHE-MEMORY-$(PK_CACHE_MEMORY_VERSION).bsbit
PK_CACHE_MEMORY_OUT         :=
PK_CACHE_MEMORY_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_CACHE_MEMORY_TAR         := $(CONFIG_PK_CACHE_MEMORY_TAR)
PK_CACHE_MEMORY_PACKAGE     :=
PK_CACHE_MEMORY_CONFIG      := $(CONFIG_PK_CACHE_MEMORY_CONFIG)
SUB_TARGET                  += $(PK_CACHE_MEMORY_DIR)/build

PK_CACHE_MEMORY_sh = $(CONFIG_SHELL) $(PK_CACHE_MEMORY_SCRIPTS) \
                 $1X \
                 $(PK_CACHE_MEMORY_NAME)X \
                 $(PK_CACHE_MEMORY_VERSION)X \
                 $(PK_CACHE_MEMORY_SITE)X \
                 $(PK_CACHE_MEMORY_GITHUB)X \
                 $(PK_CACHE_MEMORY_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CACHE_MEMORY_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CACHE_MEMORY_SUBNAME)X \
                 $(CONFIG_PK_CACHE_MEMORY_CONFIG)X \
                 $(CONFIG_PK_CACHE_MEMORY_LIBPATH)X \
                 $(CONFIG_PK_CACHE_MEMORY_CPPFLAGS)X \
                 $(CONFIG_PK_CACHE_MEMORY_DPKCONFIG)X \
                 $(CONFIG_PK_CACHE_MEMORY_CFLAGS)X \
                 $(CONFIG_PK_CACHE_MEMORY_LDFLAGS)X \
                 $(CONFIG_PK_CACHE_MEMORY_CXXFLAGS)X \
                 $(CONFIG_PK_CACHE_MEMORY_ASFLAGS)X \
                 $(PK_CACHE_MEMORY_BSBIT)X \
                 $(PK_CACHE_MEMORY_BUILDARCH)X \
		 $(PK_CACHE_MEMORY_CSRCFILE)X \
                 $(CONFIG_PK_CACHE_MEMORY_SRCFILE)X \
                 $(CONFIG_PK_CACHE_MEMORY_CSRCFILE)

$(PK_CACHE_MEMORY_DIR)/build: FORCE
	$(Q)$(call PK_CACHE_MEMORY_sh,$(srctree))
