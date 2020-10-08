################################################
#
# kernel-slab-shrink-base
#
################################################
PK_SLAB_SHRINK_DEMO_NAME        := kernel-slab-shrink-base
PK_SLAB_SHRINK_DEMO_VERSION     := $(CONFIG_PK_SLAB_SHRINK_DEMO_VERSION)
PK_SLAB_SHRINK_DEMO_SITE        := $(CONFIG_PK_SLAB_SHRINK_DEMO_URL)
PK_SLAB_SHRINK_DEMO_GITHUB      := $(CONFIG_PK_SLAB_SHRINK_DEMO_GITHUB)
PK_SLAB_SHRINK_DEMO_SUBNAME     :=
PK_SLAB_SHRINK_DEMO_BUILDARCH   := $(CONFIG_PK_SLAB_SHRINK_DEMO_BUILDARCH)
PK_SLAB_SHRINK_DEMO_DIR         := $(srctree)/package/MMU_shrink/kernel-slab-shrink-base
PK_SLAB_SHRINK_DEMO_PATCH       := $(PK_SLAB_SHRINK_DEMO_DIR)/patch
PK_SLAB_SHRINK_DEMO_BSBIT       := kernel-slab-shrink-base-$(PK_SLAB_SHRINK_DEMO_VERSION).bsbit
PK_SLAB_SHRINK_DEMO_OUT         :=
PK_SLAB_SHRINK_DEMO_SCRIPTS     := $(srctree)/scripts/package/package-kernel.sh
PK_SLAB_SHRINK_DEMO_TAR         := $(CONFIG_PK_SLAB_SHRINK_DEMO_TAR)
PK_SLAB_SHRINK_DEMO_PACKAGE     :=
PK_SLAB_SHRINK_DEMO_CONFIG      := $(CONFIG_PK_SLAB_SHRINK_DEMO_CONFIG)
SUB_TARGET                  += $(PK_SLAB_SHRINK_DEMO_DIR)/build

PK_SLAB_SHRINK_DEMO_sh = $(CONFIG_SHELL) $(PK_SLAB_SHRINK_DEMO_SCRIPTS) \
                 $1X \
                 $(PK_SLAB_SHRINK_DEMO_NAME)X \
                 $(PK_SLAB_SHRINK_DEMO_VERSION)X \
                 $(PK_SLAB_SHRINK_DEMO_SITE)X \
                 $(PK_SLAB_SHRINK_DEMO_GITHUB)X \
                 $(PK_SLAB_SHRINK_DEMO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_SLAB_SHRINK_DEMO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_SLAB_SHRINK_DEMO_SUBNAME)X \
                 $(CONFIG_PK_SLAB_SHRINK_DEMO_CONFIG)X \
                 $(CONFIG_PK_SLAB_SHRINK_DEMO_LIBPATH)X \
                 $(CONFIG_PK_SLAB_SHRINK_DEMO_CPPFLAGS)X \
                 $(CONFIG_PK_SLAB_SHRINK_DEMO_DPKCONFIG)X \
                 $(CONFIG_PK_SLAB_SHRINK_DEMO_CFLAGS)X \
                 $(CONFIG_PK_SLAB_SHRINK_DEMO_LDFLAGS)X \
                 $(CONFIG_PK_SLAB_SHRINK_DEMO_CXXFLAGS)X \
                 $(CONFIG_PK_SLAB_SHRINK_DEMO_ASFLAGS)X \
                 $(PK_SLAB_SHRINK_DEMO_BSBIT)X \
                 $(PK_SLAB_SHRINK_DEMO_BUILDARCH)X \
		 $(PK_SLAB_SHRINK_DEMO_CSRCFILE)X \
                 $(CONFIG_PK_SLAB_SHRINK_DEMO_SRCFILE)X \
                 $(CONFIG_PK_SLAB_SHRINK_DEMO_CSRCFILE)

$(PK_SLAB_SHRINK_DEMO_DIR)/build: FORCE
	$(Q)$(call PK_SLAB_SHRINK_DEMO_sh,$(srctree))
