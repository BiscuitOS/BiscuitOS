################################################
#
# BiscuitOS-CACHE-DMA-BUF
#
################################################
PK_CACHE_DMA_BUF_NAME        := BiscuitOS-CACHE-DMA-BUF
PK_CACHE_DMA_BUF_VERSION     := $(CONFIG_PK_CACHE_DMA_BUF_VERSION)
PK_CACHE_DMA_BUF_SITE        := $(CONFIG_PK_CACHE_DMA_BUF_URL)
PK_CACHE_DMA_BUF_GITHUB      := $(CONFIG_PK_CACHE_DMA_BUF_GITHUB)
PK_CACHE_DMA_BUF_SUBNAME     :=
PK_CACHE_DMA_BUF_BUILDARCH   := $(CONFIG_PK_CACHE_DMA_BUF_BUILDARCH)
PK_CACHE_DMA_BUF_DIR         := $(srctree)/package/CACHE/BiscuitOS-CACHE-DMA-BUF
PK_CACHE_DMA_BUF_PATCH       := $(PK_CACHE_DMA_BUF_DIR)/patch
PK_CACHE_DMA_BUF_BSBIT       := BiscuitOS-CACHE-DMA-BUF-$(PK_CACHE_DMA_BUF_VERSION).bsbit
PK_CACHE_DMA_BUF_OUT         :=
PK_CACHE_DMA_BUF_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_CACHE_DMA_BUF_TAR         := $(CONFIG_PK_CACHE_DMA_BUF_TAR)
PK_CACHE_DMA_BUF_PACKAGE     :=
PK_CACHE_DMA_BUF_CONFIG      := $(CONFIG_PK_CACHE_DMA_BUF_CONFIG)
SUB_TARGET                  += $(PK_CACHE_DMA_BUF_DIR)/build

PK_CACHE_DMA_BUF_sh = $(CONFIG_SHELL) $(PK_CACHE_DMA_BUF_SCRIPTS) \
                 $1X \
                 $(PK_CACHE_DMA_BUF_NAME)X \
                 $(PK_CACHE_DMA_BUF_VERSION)X \
                 $(PK_CACHE_DMA_BUF_SITE)X \
                 $(PK_CACHE_DMA_BUF_GITHUB)X \
                 $(PK_CACHE_DMA_BUF_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CACHE_DMA_BUF_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CACHE_DMA_BUF_SUBNAME)X \
                 $(CONFIG_PK_CACHE_DMA_BUF_CONFIG)X \
                 $(CONFIG_PK_CACHE_DMA_BUF_LIBPATH)X \
                 $(CONFIG_PK_CACHE_DMA_BUF_CPPFLAGS)X \
                 $(CONFIG_PK_CACHE_DMA_BUF_DPKCONFIG)X \
                 $(CONFIG_PK_CACHE_DMA_BUF_CFLAGS)X \
                 $(CONFIG_PK_CACHE_DMA_BUF_LDFLAGS)X \
                 $(CONFIG_PK_CACHE_DMA_BUF_CXXFLAGS)X \
                 $(CONFIG_PK_CACHE_DMA_BUF_ASFLAGS)X \
                 $(PK_CACHE_DMA_BUF_BSBIT)X \
                 $(PK_CACHE_DMA_BUF_BUILDARCH)X \
		 $(PK_CACHE_DMA_BUF_CSRCFILE)X \
                 $(CONFIG_PK_CACHE_DMA_BUF_SRCFILE)X \
                 $(CONFIG_PK_CACHE_DMA_BUF_CSRCFILE)

$(PK_CACHE_DMA_BUF_DIR)/build: FORCE
	$(Q)$(call PK_CACHE_DMA_BUF_sh,$(srctree))
