################################################
#
# SLAB linux 2.6.12.3
#
################################################
PK_SLAB_2_6_12_3_NAME        := BiscuitOS_SLAB
PK_SLAB_2_6_12_3_VERSION     := $(CONFIG_PK_SLAB_2_6_12_3_VERSION)
PK_SLAB_2_6_12_3_SITE        := $(CONFIG_PK_SLAB_2_6_12_3_URL)
PK_SLAB_2_6_12_3_GITHUB      := $(CONFIG_PK_SLAB_2_6_12_3_GITHUB)
PK_SLAB_2_6_12_3_SUBNAME     :=
PK_SLAB_2_6_12_3_BUILDARCH   := $(CONFIG_PK_SLAB_2_6_12_3_BUILDARCH)
PK_SLAB_2_6_12_3_DIR         := $(srctree)/package/memory_history/SLAB/linux-2.6.12.3
PK_SLAB_2_6_12_3_PATCH       := $(PK_SLAB_2_6_12_3_DIR)/patch
PK_SLAB_2_6_12_3_BSBIT       := BiscuitOS_SLAB-$(PK_SLAB_2_6_12_3_VERSION).bsbit
PK_SLAB_2_6_12_3_OUT         :=
PK_SLAB_2_6_12_3_SCRIPTS     := $(srctree)/scripts/package/package-memory.sh
PK_SLAB_2_6_12_3_TAR         := $(CONFIG_PK_SLAB_2_6_12_3_TAR)
PK_SLAB_2_6_12_3_PACKAGE     :=
PK_SLAB_2_6_12_3_CONFIG      := $(CONFIG_PK_SLAB_2_6_12_3_CONFIG)
SUB_TARGET                  += $(PK_SLAB_2_6_12_3_DIR)/build

PK_SLAB_2_6_12_3_sh = $(CONFIG_SHELL) $(PK_SLAB_2_6_12_3_SCRIPTS) \
                 $1X \
                 $(PK_SLAB_2_6_12_3_NAME)X \
                 $(PK_SLAB_2_6_12_3_VERSION)X \
                 $(PK_SLAB_2_6_12_3_SITE)X \
                 $(PK_SLAB_2_6_12_3_GITHUB)X \
                 $(PK_SLAB_2_6_12_3_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_SLAB_2_6_12_3_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_SLAB_2_6_12_3_SUBNAME)X \
                 $(CONFIG_PK_SLAB_2_6_12_3_CONFIG)X \
                 $(CONFIG_PK_SLAB_2_6_12_3_LIBPATH)X \
                 $(CONFIG_PK_SLAB_2_6_12_3_CPPFLAGS)X \
                 $(CONFIG_PK_SLAB_2_6_12_3_DPKCONFIG)X \
                 $(CONFIG_PK_SLAB_2_6_12_3_CFLAGS)X \
                 $(CONFIG_PK_SLAB_2_6_12_3_LDFLAGS)X \
                 $(CONFIG_PK_SLAB_2_6_12_3_CXXFLAGS)X \
                 $(CONFIG_PK_SLAB_2_6_12_3_ASFLAGS)X \
                 $(PK_SLAB_2_6_12_3_BSBIT)X \
                 $(PK_SLAB_2_6_12_3_BUILDARCH)X \
		 $(PK_SLAB_2_6_12_3_CSRCFILE)X \
                 $(CONFIG_PK_SLAB_2_6_12_3_SRCFILE)X \
                 $(CONFIG_PK_SLAB_2_6_12_3_CSRCFILE)

$(PK_SLAB_2_6_12_3_DIR)/build: FORCE
	$(Q)$(call PK_SLAB_2_6_12_3_sh,$(srctree))
