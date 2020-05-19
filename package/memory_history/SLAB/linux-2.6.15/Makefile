################################################
#
# SLAB linux 2.6.15
#
################################################
PK_SLAB_2_6_15_NAME        := BiscuitOS_SLAB
PK_SLAB_2_6_15_VERSION     := $(CONFIG_PK_SLAB_2_6_15_VERSION)
PK_SLAB_2_6_15_SITE        := $(CONFIG_PK_SLAB_2_6_15_URL)
PK_SLAB_2_6_15_GITHUB      := $(CONFIG_PK_SLAB_2_6_15_GITHUB)
PK_SLAB_2_6_15_SUBNAME     :=
PK_SLAB_2_6_15_BUILDARCH   := $(CONFIG_PK_SLAB_2_6_15_BUILDARCH)
PK_SLAB_2_6_15_DIR         := $(srctree)/package/memory_history/SLAB/linux-2.6.15
PK_SLAB_2_6_15_PATCH       := $(PK_SLAB_2_6_15_DIR)/patch
PK_SLAB_2_6_15_BSBIT       := BiscuitOS_SLAB-$(PK_SLAB_2_6_15_VERSION).bsbit
PK_SLAB_2_6_15_OUT         :=
PK_SLAB_2_6_15_SCRIPTS     := $(srctree)/scripts/package/package-memory.sh
PK_SLAB_2_6_15_TAR         := $(CONFIG_PK_SLAB_2_6_15_TAR)
PK_SLAB_2_6_15_PACKAGE     :=
PK_SLAB_2_6_15_CONFIG      := $(CONFIG_PK_SLAB_2_6_15_CONFIG)
SUB_TARGET                  += $(PK_SLAB_2_6_15_DIR)/build

PK_SLAB_2_6_15_sh = $(CONFIG_SHELL) $(PK_SLAB_2_6_15_SCRIPTS) \
                 $1X \
                 $(PK_SLAB_2_6_15_NAME)X \
                 $(PK_SLAB_2_6_15_VERSION)X \
                 $(PK_SLAB_2_6_15_SITE)X \
                 $(PK_SLAB_2_6_15_GITHUB)X \
                 $(PK_SLAB_2_6_15_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_SLAB_2_6_15_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_SLAB_2_6_15_SUBNAME)X \
                 $(CONFIG_PK_SLAB_2_6_15_CONFIG)X \
                 $(CONFIG_PK_SLAB_2_6_15_LIBPATH)X \
                 $(CONFIG_PK_SLAB_2_6_15_CPPFLAGS)X \
                 $(CONFIG_PK_SLAB_2_6_15_DPKCONFIG)X \
                 $(CONFIG_PK_SLAB_2_6_15_CFLAGS)X \
                 $(CONFIG_PK_SLAB_2_6_15_LDFLAGS)X \
                 $(CONFIG_PK_SLAB_2_6_15_CXXFLAGS)X \
                 $(CONFIG_PK_SLAB_2_6_15_ASFLAGS)X \
                 $(PK_SLAB_2_6_15_BSBIT)X \
                 $(PK_SLAB_2_6_15_BUILDARCH)X \
		 $(PK_SLAB_2_6_15_CSRCFILE)X \
                 $(CONFIG_PK_SLAB_2_6_15_SRCFILE)X \
                 $(CONFIG_PK_SLAB_2_6_15_CSRCFILE)

$(PK_SLAB_2_6_15_DIR)/build: FORCE
	$(Q)$(call PK_SLAB_2_6_15_sh,$(srctree))
