################################################
#
# mm_bs
#
################################################
PK_MM_BS_NAME        := mm_bs
PK_MM_BS_VERSION     := $(CONFIG_PK_MM_BS_VERSION)
PK_MM_BS_SITE        := $(CONFIG_PK_MM_BS_URL)
PK_MM_BS_GITHUB      := $(CONFIG_PK_MM_BS_GITHUB)
PK_MM_BS_SUBNAME     :=
PK_MM_BS_BUILDARCH   := $(CONFIG_PK_MM_BS_BUILDARCH)
PK_MM_BS_DIR         := $(srctree)/package/memory_history/mm/mm_bs
PK_MM_BS_PATCH       := $(PK_MM_BS_DIR)/patch
PK_MM_BS_BSBIT       := mm_bs-$(PK_MM_BS_VERSION).bsbit
PK_MM_BS_OUT         :=
PK_MM_BS_SCRIPTS     := $(srctree)/scripts/package/package-memory.sh
PK_MM_BS_TAR         := $(CONFIG_PK_MM_BS_TAR)
PK_MM_BS_PACKAGE     :=
PK_MM_BS_CONFIG      := $(CONFIG_PK_MM_BS_CONFIG)
SUB_TARGET                  += $(PK_MM_BS_DIR)/build

PK_MM_BS_sh = $(CONFIG_SHELL) $(PK_MM_BS_SCRIPTS) \
                 $1X \
                 $(PK_MM_BS_NAME)X \
                 $(PK_MM_BS_VERSION)X \
                 $(PK_MM_BS_SITE)X \
                 $(PK_MM_BS_GITHUB)X \
                 $(PK_MM_BS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_MM_BS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_MM_BS_SUBNAME)X \
                 $(CONFIG_PK_MM_BS_CONFIG)X \
                 $(CONFIG_PK_MM_BS_LIBPATH)X \
                 $(CONFIG_PK_MM_BS_CPPFLAGS)X \
                 $(CONFIG_PK_MM_BS_DPKCONFIG)X \
                 $(CONFIG_PK_MM_BS_CFLAGS)X \
                 $(CONFIG_PK_MM_BS_LDFLAGS)X \
                 $(CONFIG_PK_MM_BS_CXXFLAGS)X \
                 $(CONFIG_PK_MM_BS_ASFLAGS)X \
                 $(PK_MM_BS_BSBIT)X \
                 $(PK_MM_BS_BUILDARCH)X \
		 $(PK_MM_BS_CSRCFILE)X \
                 $(CONFIG_PK_MM_BS_SRCFILE)X \
                 $(CONFIG_PK_MM_BS_CSRCFILE)

$(PK_MM_BS_DIR)/build: FORCE
	$(Q)$(call PK_MM_BS_sh,$(srctree))
