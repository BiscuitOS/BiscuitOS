################################################
#
# FIXMAP linux 2.6.12.1
#
################################################
PK_FIXMAP_2_6_12_1_NAME        := BiscuitOS_FIXMAP
PK_FIXMAP_2_6_12_1_VERSION     := $(CONFIG_PK_FIXMAP_2_6_12_1_VERSION)
PK_FIXMAP_2_6_12_1_SITE        := $(CONFIG_PK_FIXMAP_2_6_12_1_URL)
PK_FIXMAP_2_6_12_1_GITHUB      := $(CONFIG_PK_FIXMAP_2_6_12_1_GITHUB)
PK_FIXMAP_2_6_12_1_SUBNAME     :=
PK_FIXMAP_2_6_12_1_BUILDARCH   := $(CONFIG_PK_FIXMAP_2_6_12_1_BUILDARCH)
PK_FIXMAP_2_6_12_1_DIR         := $(srctree)/package/memory_history/FIXMAP/linux-2.6.12.1
PK_FIXMAP_2_6_12_1_PATCH       := $(PK_FIXMAP_2_6_12_1_DIR)/patch
PK_FIXMAP_2_6_12_1_BSBIT       := BiscuitOS_FIXMAP-$(PK_FIXMAP_2_6_12_1_VERSION).bsbit
PK_FIXMAP_2_6_12_1_OUT         :=
PK_FIXMAP_2_6_12_1_SCRIPTS     := $(srctree)/scripts/package/package-memory.sh
PK_FIXMAP_2_6_12_1_TAR         := $(CONFIG_PK_FIXMAP_2_6_12_1_TAR)
PK_FIXMAP_2_6_12_1_PACKAGE     :=
PK_FIXMAP_2_6_12_1_CONFIG      := $(CONFIG_PK_FIXMAP_2_6_12_1_CONFIG)
SUB_TARGET                  += $(PK_FIXMAP_2_6_12_1_DIR)/build

PK_FIXMAP_2_6_12_1_sh = $(CONFIG_SHELL) $(PK_FIXMAP_2_6_12_1_SCRIPTS) \
                 $1X \
                 $(PK_FIXMAP_2_6_12_1_NAME)X \
                 $(PK_FIXMAP_2_6_12_1_VERSION)X \
                 $(PK_FIXMAP_2_6_12_1_SITE)X \
                 $(PK_FIXMAP_2_6_12_1_GITHUB)X \
                 $(PK_FIXMAP_2_6_12_1_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_FIXMAP_2_6_12_1_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_FIXMAP_2_6_12_1_SUBNAME)X \
                 $(CONFIG_PK_FIXMAP_2_6_12_1_CONFIG)X \
                 $(CONFIG_PK_FIXMAP_2_6_12_1_LIBPATH)X \
                 $(CONFIG_PK_FIXMAP_2_6_12_1_CPPFLAGS)X \
                 $(CONFIG_PK_FIXMAP_2_6_12_1_DPKCONFIG)X \
                 $(CONFIG_PK_FIXMAP_2_6_12_1_CFLAGS)X \
                 $(CONFIG_PK_FIXMAP_2_6_12_1_LDFLAGS)X \
                 $(CONFIG_PK_FIXMAP_2_6_12_1_CXXFLAGS)X \
                 $(CONFIG_PK_FIXMAP_2_6_12_1_ASFLAGS)X \
                 $(PK_FIXMAP_2_6_12_1_BSBIT)X \
                 $(PK_FIXMAP_2_6_12_1_BUILDARCH)X \
		 $(PK_FIXMAP_2_6_12_1_CSRCFILE)X \
                 $(CONFIG_PK_FIXMAP_2_6_12_1_SRCFILE)X \
                 $(CONFIG_PK_FIXMAP_2_6_12_1_CSRCFILE)

$(PK_FIXMAP_2_6_12_1_DIR)/build: FORCE
	$(Q)$(call PK_FIXMAP_2_6_12_1_sh,$(srctree))
