################################################
#
# BiscuitOS-PAGING-LM-SLAB
#
################################################
PK_PAGING_LM_SLAB_NAME        := BiscuitOS-PAGING-LM-SLAB
PK_PAGING_LM_SLAB_VERSION     := $(CONFIG_PK_PAGING_LM_SLAB_VERSION)
PK_PAGING_LM_SLAB_SITE        := $(CONFIG_PK_PAGING_LM_SLAB_URL)
PK_PAGING_LM_SLAB_GITHUB      := $(CONFIG_PK_PAGING_LM_SLAB_GITHUB)
PK_PAGING_LM_SLAB_SUBNAME     :=
PK_PAGING_LM_SLAB_BUILDARCH   := $(CONFIG_PK_PAGING_LM_SLAB_BUILDARCH)
PK_PAGING_LM_SLAB_DIR         := $(srctree)/package/PAGING/BiscuitOS-PAGING-LM-SLAB
PK_PAGING_LM_SLAB_PATCH       := $(PK_PAGING_LM_SLAB_DIR)/patch
PK_PAGING_LM_SLAB_BSBIT       := BiscuitOS-PAGING-LM-SLAB-$(PK_PAGING_LM_SLAB_VERSION).bsbit
PK_PAGING_LM_SLAB_OUT         :=
PK_PAGING_LM_SLAB_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PAGING_LM_SLAB_TAR         := $(CONFIG_PK_PAGING_LM_SLAB_TAR)
PK_PAGING_LM_SLAB_PACKAGE     :=
PK_PAGING_LM_SLAB_CONFIG      := $(CONFIG_PK_PAGING_LM_SLAB_CONFIG)
SUB_TARGET                  += $(PK_PAGING_LM_SLAB_DIR)/build

PK_PAGING_LM_SLAB_sh = $(CONFIG_SHELL) $(PK_PAGING_LM_SLAB_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_LM_SLAB_NAME)X \
                 $(PK_PAGING_LM_SLAB_VERSION)X \
                 $(PK_PAGING_LM_SLAB_SITE)X \
                 $(PK_PAGING_LM_SLAB_GITHUB)X \
                 $(PK_PAGING_LM_SLAB_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_LM_SLAB_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_LM_SLAB_SUBNAME)X \
                 $(CONFIG_PK_PAGING_LM_SLAB_CONFIG)X \
                 $(CONFIG_PK_PAGING_LM_SLAB_LIBPATH)X \
                 $(CONFIG_PK_PAGING_LM_SLAB_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_LM_SLAB_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_LM_SLAB_CFLAGS)X \
                 $(CONFIG_PK_PAGING_LM_SLAB_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_LM_SLAB_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_LM_SLAB_ASFLAGS)X \
                 $(PK_PAGING_LM_SLAB_BSBIT)X \
                 $(PK_PAGING_LM_SLAB_BUILDARCH)X \
		 $(PK_PAGING_LM_SLAB_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_LM_SLAB_SRCFILE)X \
                 $(CONFIG_PK_PAGING_LM_SLAB_CSRCFILE)

$(PK_PAGING_LM_SLAB_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_LM_SLAB_sh,$(srctree))
