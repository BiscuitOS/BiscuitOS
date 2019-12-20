################################################
#
# dma_buf_app
#
################################################
PK_DMA_BUF_APP_NAME        := dma_buf_app
PK_DMA_BUF_APP_VERSION     := $(CONFIG_PK_DMA_BUF_APP_VERSION)
PK_DMA_BUF_APP_SITE        := $(CONFIG_PK_DMA_BUF_APP_URL)
PK_DMA_BUF_APP_GITHUB      := $(CONFIG_PK_DMA_BUF_APP_GITHUB)
PK_DMA_BUF_APP_SUBNAME     :=
PK_DMA_BUF_APP_BUILDARCH   := $(CONFIG_PK_DMA_BUF_APP_BUILDARCH)
PK_DMA_BUF_APP_DIR         := $(srctree)/package/DMA/dma_buf_app
PK_DMA_BUF_APP_PATCH       := $(PK_DMA_BUF_APP_DIR)/patch
PK_DMA_BUF_APP_BSBIT       := dma_buf_app-$(PK_DMA_BUF_APP_VERSION).bsbit
PK_DMA_BUF_APP_OUT         :=
PK_DMA_BUF_APP_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_DMA_BUF_APP_TAR         := $(CONFIG_PK_DMA_BUF_APP_TAR)
PK_DMA_BUF_APP_PACKAGE     :=
PK_DMA_BUF_APP_CONFIG      := $(CONFIG_PK_DMA_BUF_APP_CONFIG)
SUB_TARGET                  += $(PK_DMA_BUF_APP_DIR)/build

PK_DMA_BUF_APP_sh = $(CONFIG_SHELL) $(PK_DMA_BUF_APP_SCRIPTS) \
                 $1X \
                 $(PK_DMA_BUF_APP_NAME)X \
                 $(PK_DMA_BUF_APP_VERSION)X \
                 $(PK_DMA_BUF_APP_SITE)X \
                 $(PK_DMA_BUF_APP_GITHUB)X \
                 $(PK_DMA_BUF_APP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_DMA_BUF_APP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_DMA_BUF_APP_SUBNAME)X \
                 $(CONFIG_PK_DMA_BUF_APP_CONFIG)X \
                 $(CONFIG_PK_DMA_BUF_APP_LIBPATH)X \
                 $(CONFIG_PK_DMA_BUF_APP_CPPFLAGS)X \
                 $(CONFIG_PK_DMA_BUF_APP_DPKCONFIG)X \
                 $(CONFIG_PK_DMA_BUF_APP_CFLAGS)X \
                 $(CONFIG_PK_DMA_BUF_APP_LDFLAGS)X \
                 $(CONFIG_PK_DMA_BUF_APP_CXXFLAGS)X \
                 $(CONFIG_PK_DMA_BUF_APP_ASFLAGS)X \
                 $(PK_DMA_BUF_APP_BSBIT)X \
                 $(PK_DMA_BUF_APP_BUILDARCH)X \
		 $(PK_DMA_BUF_APP_CSRCFILE)X \
                 $(CONFIG_PK_DMA_BUF_APP_SRCFILE)X \
                 $(CONFIG_PK_DMA_BUF_APP_CSRCFILE)

$(PK_DMA_BUF_APP_DIR)/build: FORCE
	$(Q)$(call PK_DMA_BUF_APP_sh,$(srctree))
