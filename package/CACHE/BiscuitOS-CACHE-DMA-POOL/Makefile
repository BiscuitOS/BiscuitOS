################################################
#
# BiscuitOS-CACHE-DMA-POOL
#
################################################
PK_CACHE_DMA_POOL_NAME        := BiscuitOS-CACHE-DMA-POOL
PK_CACHE_DMA_POOL_VERSION     := $(CONFIG_PK_CACHE_DMA_POOL_VERSION)
PK_CACHE_DMA_POOL_SITE        := $(CONFIG_PK_CACHE_DMA_POOL_URL)
PK_CACHE_DMA_POOL_GITHUB      := $(CONFIG_PK_CACHE_DMA_POOL_GITHUB)
PK_CACHE_DMA_POOL_SUBNAME     :=
PK_CACHE_DMA_POOL_BUILDARCH   := $(CONFIG_PK_CACHE_DMA_POOL_BUILDARCH)
PK_CACHE_DMA_POOL_DIR         := $(srctree)/package/CACHE/BiscuitOS-CACHE-DMA-POOL
PK_CACHE_DMA_POOL_PATCH       := $(PK_CACHE_DMA_POOL_DIR)/patch
PK_CACHE_DMA_POOL_BSBIT       := BiscuitOS-CACHE-DMA-POOL-$(PK_CACHE_DMA_POOL_VERSION).bsbit
PK_CACHE_DMA_POOL_OUT         :=
PK_CACHE_DMA_POOL_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_CACHE_DMA_POOL_TAR         := $(CONFIG_PK_CACHE_DMA_POOL_TAR)
PK_CACHE_DMA_POOL_PACKAGE     :=
PK_CACHE_DMA_POOL_CONFIG      := $(CONFIG_PK_CACHE_DMA_POOL_CONFIG)
SUB_TARGET                  += $(PK_CACHE_DMA_POOL_DIR)/build

PK_CACHE_DMA_POOL_sh = $(CONFIG_SHELL) $(PK_CACHE_DMA_POOL_SCRIPTS) \
                 $1X \
                 $(PK_CACHE_DMA_POOL_NAME)X \
                 $(PK_CACHE_DMA_POOL_VERSION)X \
                 $(PK_CACHE_DMA_POOL_SITE)X \
                 $(PK_CACHE_DMA_POOL_GITHUB)X \
                 $(PK_CACHE_DMA_POOL_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CACHE_DMA_POOL_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CACHE_DMA_POOL_SUBNAME)X \
                 $(CONFIG_PK_CACHE_DMA_POOL_CONFIG)X \
                 $(CONFIG_PK_CACHE_DMA_POOL_LIBPATH)X \
                 $(CONFIG_PK_CACHE_DMA_POOL_CPPFLAGS)X \
                 $(CONFIG_PK_CACHE_DMA_POOL_DPKCONFIG)X \
                 $(CONFIG_PK_CACHE_DMA_POOL_CFLAGS)X \
                 $(CONFIG_PK_CACHE_DMA_POOL_LDFLAGS)X \
                 $(CONFIG_PK_CACHE_DMA_POOL_CXXFLAGS)X \
                 $(CONFIG_PK_CACHE_DMA_POOL_ASFLAGS)X \
                 $(PK_CACHE_DMA_POOL_BSBIT)X \
                 $(PK_CACHE_DMA_POOL_BUILDARCH)X \
		 $(PK_CACHE_DMA_POOL_CSRCFILE)X \
                 $(CONFIG_PK_CACHE_DMA_POOL_SRCFILE)X \
                 $(CONFIG_PK_CACHE_DMA_POOL_CSRCFILE)

$(PK_CACHE_DMA_POOL_DIR)/build: FORCE
	$(Q)$(call PK_CACHE_DMA_POOL_sh,$(srctree))
