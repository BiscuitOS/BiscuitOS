DMA-$(CONFIG_PK_DMA_BUF_APP)	+= dma_buf_app/
DMA-$(CONFIG_PK_DMA_BUF_MOD)	+= dma_buf_module/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/DMA/%/Makefile, $(DMA-y))

include $(PACKAGE_MAKEDIR)
