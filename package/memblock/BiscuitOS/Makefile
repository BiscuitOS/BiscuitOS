################################################
#
# memblock_demo
#
################################################
PK_MEMBLOCK_DEMO_NAME        := memblock_demo
PK_MEMBLOCK_DEMO_VERSION     := $(CONFIG_PK_MEMBLOCK_DEMO_VERSION)
PK_MEMBLOCK_DEMO_SITE        := $(CONFIG_PK_MEMBLOCK_DEMO_URL)
PK_MEMBLOCK_DEMO_GITHUB      := $(CONFIG_PK_MEMBLOCK_DEMO_GITHUB)
PK_MEMBLOCK_DEMO_SUBNAME     :=
PK_MEMBLOCK_DEMO_BUILDARCH   := $(CONFIG_PK_MEMBLOCK_DEMO_BUILDARCH)
PK_MEMBLOCK_DEMO_DIR         := $(srctree)/package/memblock/memblock_demo
PK_MEMBLOCK_DEMO_PATCH       := $(PK_MEMBLOCK_DEMO_DIR)/patch
PK_MEMBLOCK_DEMO_BSBIT       := memblock_demo-$(PK_MEMBLOCK_DEMO_VERSION).bsbit
PK_MEMBLOCK_DEMO_OUT         :=
PK_MEMBLOCK_DEMO_SCRIPTS     := $(srctree)/scripts/package/package-kernel-any.sh
PK_MEMBLOCK_DEMO_TAR         := $(CONFIG_PK_MEMBLOCK_DEMO_TAR)
PK_MEMBLOCK_DEMO_PACKAGE     :=
PK_MEMBLOCK_DEMO_CONFIG      := $(CONFIG_PK_MEMBLOCK_DEMO_CONFIG)
SUB_TARGET                  += $(PK_MEMBLOCK_DEMO_DIR)/build

PK_MEMBLOCK_DEMO_sh = $(CONFIG_SHELL) $(PK_MEMBLOCK_DEMO_SCRIPTS) \
                 $1X \
                 $(PK_MEMBLOCK_DEMO_NAME)X \
                 $(PK_MEMBLOCK_DEMO_VERSION)X \
                 $(PK_MEMBLOCK_DEMO_SITE)X \
                 $(PK_MEMBLOCK_DEMO_GITHUB)X \
                 $(PK_MEMBLOCK_DEMO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MEMBLOCK_DEMO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MEMBLOCK_DEMO_SUBNAME)X \
                 $(CONFIG_PK_MEMBLOCK_DEMO_CONFIG)X \
                 $(CONFIG_PK_MEMBLOCK_DEMO_LIBPATH)X \
                 $(CONFIG_PK_MEMBLOCK_DEMO_CPPFLAGS)X \
                 $(CONFIG_PK_MEMBLOCK_DEMO_DPKCONFIG)X \
                 $(CONFIG_PK_MEMBLOCK_DEMO_CFLAGS)X \
                 $(CONFIG_PK_MEMBLOCK_DEMO_LDFLAGS)X \
                 $(CONFIG_PK_MEMBLOCK_DEMO_CXXFLAGS)X \
                 $(CONFIG_PK_MEMBLOCK_DEMO_ASFLAGS)X \
                 $(PK_MEMBLOCK_DEMO_BSBIT)X \
                 $(PK_MEMBLOCK_DEMO_BUILDARCH)X \
		 $(PK_MEMBLOCK_DEMO_CSRCFILE)X \
                 $(CONFIG_PK_MEMBLOCK_DEMO_SRCFILE)X \
                 $(CONFIG_PK_MEMBLOCK_DEMO_CSRCFILE)

$(PK_MEMBLOCK_DEMO_DIR)/build: FORCE
	$(Q)$(call PK_MEMBLOCK_DEMO_sh,$(srctree))
