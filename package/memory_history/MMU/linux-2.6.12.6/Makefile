################################################
#
# MMU linux 2.6.12.6
#
################################################
PK_MMU_2_6_12_6_NAME        := BiscuitOS_MMU
PK_MMU_2_6_12_6_VERSION     := $(CONFIG_PK_MMU_2_6_12_6_VERSION)
PK_MMU_2_6_12_6_SITE        := $(CONFIG_PK_MMU_2_6_12_6_URL)
PK_MMU_2_6_12_6_GITHUB      := $(CONFIG_PK_MMU_2_6_12_6_GITHUB)
PK_MMU_2_6_12_6_SUBNAME     :=
PK_MMU_2_6_12_6_BUILDARCH   := $(CONFIG_PK_MMU_2_6_12_6_BUILDARCH)
PK_MMU_2_6_12_6_DIR         := $(srctree)/package/memory_history/MMU/linux-2.6.12.6
PK_MMU_2_6_12_6_PATCH       := $(PK_MMU_2_6_12_6_DIR)/patch
PK_MMU_2_6_12_6_BSBIT       := BiscuitOS_MMU-$(PK_MMU_2_6_12_6_VERSION).bsbit
PK_MMU_2_6_12_6_OUT         :=
PK_MMU_2_6_12_6_SCRIPTS     := $(srctree)/scripts/package/package-memory.sh
PK_MMU_2_6_12_6_TAR         := $(CONFIG_PK_MMU_2_6_12_6_TAR)
PK_MMU_2_6_12_6_PACKAGE     :=
PK_MMU_2_6_12_6_CONFIG      := $(CONFIG_PK_MMU_2_6_12_6_CONFIG)
SUB_TARGET                  += $(PK_MMU_2_6_12_6_DIR)/build

PK_MMU_2_6_12_6_sh = $(CONFIG_SHELL) $(PK_MMU_2_6_12_6_SCRIPTS) \
                 $1X \
                 $(PK_MMU_2_6_12_6_NAME)X \
                 $(PK_MMU_2_6_12_6_VERSION)X \
                 $(PK_MMU_2_6_12_6_SITE)X \
                 $(PK_MMU_2_6_12_6_GITHUB)X \
                 $(PK_MMU_2_6_12_6_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MMU_2_6_12_6_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MMU_2_6_12_6_SUBNAME)X \
                 $(CONFIG_PK_MMU_2_6_12_6_CONFIG)X \
                 $(CONFIG_PK_MMU_2_6_12_6_LIBPATH)X \
                 $(CONFIG_PK_MMU_2_6_12_6_CPPFLAGS)X \
                 $(CONFIG_PK_MMU_2_6_12_6_DPKCONFIG)X \
                 $(CONFIG_PK_MMU_2_6_12_6_CFLAGS)X \
                 $(CONFIG_PK_MMU_2_6_12_6_LDFLAGS)X \
                 $(CONFIG_PK_MMU_2_6_12_6_CXXFLAGS)X \
                 $(CONFIG_PK_MMU_2_6_12_6_ASFLAGS)X \
                 $(PK_MMU_2_6_12_6_BSBIT)X \
                 $(PK_MMU_2_6_12_6_BUILDARCH)X \
		 $(PK_MMU_2_6_12_6_CSRCFILE)X \
                 $(CONFIG_PK_MMU_2_6_12_6_SRCFILE)X \
                 $(CONFIG_PK_MMU_2_6_12_6_CSRCFILE)

$(PK_MMU_2_6_12_6_DIR)/build: FORCE
	$(Q)$(call PK_MMU_2_6_12_6_sh,$(srctree))
