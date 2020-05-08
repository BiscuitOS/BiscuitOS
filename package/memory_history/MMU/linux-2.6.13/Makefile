################################################
#
# MMU linux 2.6.13
#
################################################
PK_MMU_2_6_13_NAME        := BiscuitOS_MMU
PK_MMU_2_6_13_VERSION     := $(CONFIG_PK_MMU_2_6_13_VERSION)
PK_MMU_2_6_13_SITE        := $(CONFIG_PK_MMU_2_6_13_URL)
PK_MMU_2_6_13_GITHUB      := $(CONFIG_PK_MMU_2_6_13_GITHUB)
PK_MMU_2_6_13_SUBNAME     :=
PK_MMU_2_6_13_BUILDARCH   := $(CONFIG_PK_MMU_2_6_13_BUILDARCH)
PK_MMU_2_6_13_DIR         := $(srctree)/package/memory_history/MMU/linux-2.6.13
PK_MMU_2_6_13_PATCH       := $(PK_MMU_2_6_13_DIR)/patch
PK_MMU_2_6_13_BSBIT       := BiscuitOS_MMU-$(PK_MMU_2_6_13_VERSION).bsbit
PK_MMU_2_6_13_OUT         :=
PK_MMU_2_6_13_SCRIPTS     := $(srctree)/scripts/package/package-memory.sh
PK_MMU_2_6_13_TAR         := $(CONFIG_PK_MMU_2_6_13_TAR)
PK_MMU_2_6_13_PACKAGE     :=
PK_MMU_2_6_13_CONFIG      := $(CONFIG_PK_MMU_2_6_13_CONFIG)
SUB_TARGET                  += $(PK_MMU_2_6_13_DIR)/build

PK_MMU_2_6_13_sh = $(CONFIG_SHELL) $(PK_MMU_2_6_13_SCRIPTS) \
                 $1X \
                 $(PK_MMU_2_6_13_NAME)X \
                 $(PK_MMU_2_6_13_VERSION)X \
                 $(PK_MMU_2_6_13_SITE)X \
                 $(PK_MMU_2_6_13_GITHUB)X \
                 $(PK_MMU_2_6_13_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MMU_2_6_13_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MMU_2_6_13_SUBNAME)X \
                 $(CONFIG_PK_MMU_2_6_13_CONFIG)X \
                 $(CONFIG_PK_MMU_2_6_13_LIBPATH)X \
                 $(CONFIG_PK_MMU_2_6_13_CPPFLAGS)X \
                 $(CONFIG_PK_MMU_2_6_13_DPKCONFIG)X \
                 $(CONFIG_PK_MMU_2_6_13_CFLAGS)X \
                 $(CONFIG_PK_MMU_2_6_13_LDFLAGS)X \
                 $(CONFIG_PK_MMU_2_6_13_CXXFLAGS)X \
                 $(CONFIG_PK_MMU_2_6_13_ASFLAGS)X \
                 $(PK_MMU_2_6_13_BSBIT)X \
                 $(PK_MMU_2_6_13_BUILDARCH)X \
		 $(PK_MMU_2_6_13_CSRCFILE)X \
                 $(CONFIG_PK_MMU_2_6_13_SRCFILE)X \
                 $(CONFIG_PK_MMU_2_6_13_CSRCFILE)

$(PK_MMU_2_6_13_DIR)/build: FORCE
	$(Q)$(call PK_MMU_2_6_13_sh,$(srctree))
