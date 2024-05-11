################################################
#
# BiscuitOS-BUDDY-GFP-DMA
#
################################################
PK_BUDDY_GFP_DMA_NAME        := BiscuitOS-BUDDY-GFP-DMA
PK_BUDDY_GFP_DMA_VERSION     := $(CONFIG_PK_BUDDY_GFP_DMA_VERSION)
PK_BUDDY_GFP_DMA_SITE        := $(CONFIG_PK_BUDDY_GFP_DMA_URL)
PK_BUDDY_GFP_DMA_GITHUB      := $(CONFIG_PK_BUDDY_GFP_DMA_GITHUB)
PK_BUDDY_GFP_DMA_SUBNAME     :=
PK_BUDDY_GFP_DMA_BUILDARCH   := $(CONFIG_PK_BUDDY_GFP_DMA_BUILDARCH)
PK_BUDDY_GFP_DMA_DIR         := $(srctree)/package/BUDDY-ALLOCATOR/BiscuitOS-BUDDY-GFP-DMA
PK_BUDDY_GFP_DMA_PATCH       := $(PK_BUDDY_GFP_DMA_DIR)/patch
PK_BUDDY_GFP_DMA_BSBIT       := BiscuitOS-BUDDY-GFP-DMA-$(PK_BUDDY_GFP_DMA_VERSION).bsbit
PK_BUDDY_GFP_DMA_OUT         :=
PK_BUDDY_GFP_DMA_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_BUDDY_GFP_DMA_TAR         := $(CONFIG_PK_BUDDY_GFP_DMA_TAR)
PK_BUDDY_GFP_DMA_PACKAGE     :=
PK_BUDDY_GFP_DMA_CONFIG      := $(CONFIG_PK_BUDDY_GFP_DMA_CONFIG)
SUB_TARGET                  += $(PK_BUDDY_GFP_DMA_DIR)/build

PK_BUDDY_GFP_DMA_sh = $(CONFIG_SHELL) $(PK_BUDDY_GFP_DMA_SCRIPTS) \
                 $1X \
                 $(PK_BUDDY_GFP_DMA_NAME)X \
                 $(PK_BUDDY_GFP_DMA_VERSION)X \
                 $(PK_BUDDY_GFP_DMA_SITE)X \
                 $(PK_BUDDY_GFP_DMA_GITHUB)X \
                 $(PK_BUDDY_GFP_DMA_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BUDDY_GFP_DMA_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BUDDY_GFP_DMA_SUBNAME)X \
                 $(CONFIG_PK_BUDDY_GFP_DMA_CONFIG)X \
                 $(CONFIG_PK_BUDDY_GFP_DMA_LIBPATH)X \
                 $(CONFIG_PK_BUDDY_GFP_DMA_CPPFLAGS)X \
                 $(CONFIG_PK_BUDDY_GFP_DMA_DPKCONFIG)X \
                 $(CONFIG_PK_BUDDY_GFP_DMA_CFLAGS)X \
                 $(CONFIG_PK_BUDDY_GFP_DMA_LDFLAGS)X \
                 $(CONFIG_PK_BUDDY_GFP_DMA_CXXFLAGS)X \
                 $(CONFIG_PK_BUDDY_GFP_DMA_ASFLAGS)X \
                 $(PK_BUDDY_GFP_DMA_BSBIT)X \
                 $(PK_BUDDY_GFP_DMA_BUILDARCH)X \
		 $(PK_BUDDY_GFP_DMA_CSRCFILE)X \
                 $(CONFIG_PK_BUDDY_GFP_DMA_SRCFILE)X \
                 $(CONFIG_PK_BUDDY_GFP_DMA_CSRCFILE)

$(PK_BUDDY_GFP_DMA_DIR)/build: FORCE
	$(Q)$(call PK_BUDDY_GFP_DMA_sh,$(srctree))
