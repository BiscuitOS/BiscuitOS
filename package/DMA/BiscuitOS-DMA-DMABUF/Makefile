################################################
#
# BiscuitOS-DMA-DMABUF
#
################################################
PK_DMA_DMABUF_NAME        := BiscuitOS-DMA-DMABUF
PK_DMA_DMABUF_VERSION     := $(CONFIG_PK_DMA_DMABUF_VERSION)
PK_DMA_DMABUF_SITE        := $(CONFIG_PK_DMA_DMABUF_URL)
PK_DMA_DMABUF_GITHUB      := $(CONFIG_PK_DMA_DMABUF_GITHUB)
PK_DMA_DMABUF_SUBNAME     :=
PK_DMA_DMABUF_BUILDARCH   := $(CONFIG_PK_DMA_DMABUF_BUILDARCH)
PK_DMA_DMABUF_DIR         := $(srctree)/package/DMA/BiscuitOS-DMA-DMABUF
PK_DMA_DMABUF_PATCH       := $(PK_DMA_DMABUF_DIR)/patch
PK_DMA_DMABUF_BSBIT       := BiscuitOS-DMA-DMABUF-$(PK_DMA_DMABUF_VERSION).bsbit
PK_DMA_DMABUF_OUT         :=
PK_DMA_DMABUF_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_DMA_DMABUF_TAR         := $(CONFIG_PK_DMA_DMABUF_TAR)
PK_DMA_DMABUF_PACKAGE     :=
PK_DMA_DMABUF_CONFIG      := $(CONFIG_PK_DMA_DMABUF_CONFIG)
SUB_TARGET                  += $(PK_DMA_DMABUF_DIR)/build

PK_DMA_DMABUF_sh = $(CONFIG_SHELL) $(PK_DMA_DMABUF_SCRIPTS) \
                 $1X \
                 $(PK_DMA_DMABUF_NAME)X \
                 $(PK_DMA_DMABUF_VERSION)X \
                 $(PK_DMA_DMABUF_SITE)X \
                 $(PK_DMA_DMABUF_GITHUB)X \
                 $(PK_DMA_DMABUF_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_DMA_DMABUF_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_DMA_DMABUF_SUBNAME)X \
                 $(CONFIG_PK_DMA_DMABUF_CONFIG)X \
                 $(CONFIG_PK_DMA_DMABUF_LIBPATH)X \
                 $(CONFIG_PK_DMA_DMABUF_CPPFLAGS)X \
                 $(CONFIG_PK_DMA_DMABUF_DPKCONFIG)X \
                 $(CONFIG_PK_DMA_DMABUF_CFLAGS)X \
                 $(CONFIG_PK_DMA_DMABUF_LDFLAGS)X \
                 $(CONFIG_PK_DMA_DMABUF_CXXFLAGS)X \
                 $(CONFIG_PK_DMA_DMABUF_ASFLAGS)X \
                 $(PK_DMA_DMABUF_BSBIT)X \
                 $(PK_DMA_DMABUF_BUILDARCH)X \
		 $(PK_DMA_DMABUF_CSRCFILE)X \
                 $(CONFIG_PK_DMA_DMABUF_SRCFILE)X \
                 $(CONFIG_PK_DMA_DMABUF_CSRCFILE)

$(PK_DMA_DMABUF_DIR)/build: FORCE
	$(Q)$(call PK_DMA_DMABUF_sh,$(srctree))
