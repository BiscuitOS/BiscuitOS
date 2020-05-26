################################################
#
# MMU linux 2.6.16
#
################################################
PK_MMU_2_6_16_NAME        := BiscuitOS_MMU
PK_MMU_2_6_16_VERSION     := $(CONFIG_PK_MMU_2_6_16_VERSION)
PK_MMU_2_6_16_SITE        := $(CONFIG_PK_MMU_2_6_16_URL)
PK_MMU_2_6_16_GITHUB      := $(CONFIG_PK_MMU_2_6_16_GITHUB)
PK_MMU_2_6_16_SUBNAME     :=
PK_MMU_2_6_16_BUILDARCH   := $(CONFIG_PK_MMU_2_6_16_BUILDARCH)
PK_MMU_2_6_16_DIR         := $(srctree)/package/memory_history/MMU/linux-2.6.16
PK_MMU_2_6_16_PATCH       := $(PK_MMU_2_6_16_DIR)/patch
PK_MMU_2_6_16_BSBIT       := BiscuitOS_MMU-$(PK_MMU_2_6_16_VERSION).bsbit
PK_MMU_2_6_16_OUT         :=
PK_MMU_2_6_16_SCRIPTS     := $(srctree)/scripts/package/package-memory.sh
PK_MMU_2_6_16_TAR         := $(CONFIG_PK_MMU_2_6_16_TAR)
PK_MMU_2_6_16_PACKAGE     :=
PK_MMU_2_6_16_CONFIG      := $(CONFIG_PK_MMU_2_6_16_CONFIG)
SUB_TARGET                  += $(PK_MMU_2_6_16_DIR)/build

PK_MMU_2_6_16_sh = $(CONFIG_SHELL) $(PK_MMU_2_6_16_SCRIPTS) \
                 $1X \
                 $(PK_MMU_2_6_16_NAME)X \
                 $(PK_MMU_2_6_16_VERSION)X \
                 $(PK_MMU_2_6_16_SITE)X \
                 $(PK_MMU_2_6_16_GITHUB)X \
                 $(PK_MMU_2_6_16_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MMU_2_6_16_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MMU_2_6_16_SUBNAME)X \
                 $(CONFIG_PK_MMU_2_6_16_CONFIG)X \
                 $(CONFIG_PK_MMU_2_6_16_LIBPATH)X \
                 $(CONFIG_PK_MMU_2_6_16_CPPFLAGS)X \
                 $(CONFIG_PK_MMU_2_6_16_DPKCONFIG)X \
                 $(CONFIG_PK_MMU_2_6_16_CFLAGS)X \
                 $(CONFIG_PK_MMU_2_6_16_LDFLAGS)X \
                 $(CONFIG_PK_MMU_2_6_16_CXXFLAGS)X \
                 $(CONFIG_PK_MMU_2_6_16_ASFLAGS)X \
                 $(PK_MMU_2_6_16_BSBIT)X \
                 $(PK_MMU_2_6_16_BUILDARCH)X \
		 $(PK_MMU_2_6_16_CSRCFILE)X \
                 $(CONFIG_PK_MMU_2_6_16_SRCFILE)X \
                 $(CONFIG_PK_MMU_2_6_16_CSRCFILE)

$(PK_MMU_2_6_16_DIR)/build: FORCE
	$(Q)$(call PK_MMU_2_6_16_sh,$(srctree))
