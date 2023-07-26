################################################
#
# BiscuitOS-PAGING-P4D
#
################################################
PK_PAGING_P4D_NAME        := BiscuitOS-PAGING-P4D
PK_PAGING_P4D_VERSION     := $(CONFIG_PK_PAGING_P4D_VERSION)
PK_PAGING_P4D_SITE        := $(CONFIG_PK_PAGING_P4D_URL)
PK_PAGING_P4D_GITHUB      := $(CONFIG_PK_PAGING_P4D_GITHUB)
PK_PAGING_P4D_SUBNAME     :=
PK_PAGING_P4D_BUILDARCH   := $(CONFIG_PK_PAGING_P4D_BUILDARCH)
PK_PAGING_P4D_DIR         := $(srctree)/package/PAGING/BiscuitOS-PAGING-P4D
PK_PAGING_P4D_PATCH       := $(PK_PAGING_P4D_DIR)/patch
PK_PAGING_P4D_BSBIT       := BiscuitOS-PAGING-P4D-$(PK_PAGING_P4D_VERSION).bsbit
PK_PAGING_P4D_OUT         :=
PK_PAGING_P4D_SCRIPTS     := $(srctree)/scripts/package/package-kernel.sh
PK_PAGING_P4D_TAR         := $(CONFIG_PK_PAGING_P4D_TAR)
PK_PAGING_P4D_PACKAGE     :=
PK_PAGING_P4D_CONFIG      := $(CONFIG_PK_PAGING_P4D_CONFIG)
SUB_TARGET                  += $(PK_PAGING_P4D_DIR)/build

PK_PAGING_P4D_sh = $(CONFIG_SHELL) $(PK_PAGING_P4D_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_P4D_NAME)X \
                 $(PK_PAGING_P4D_VERSION)X \
                 $(PK_PAGING_P4D_SITE)X \
                 $(PK_PAGING_P4D_GITHUB)X \
                 $(PK_PAGING_P4D_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_P4D_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_P4D_SUBNAME)X \
                 $(CONFIG_PK_PAGING_P4D_CONFIG)X \
                 $(CONFIG_PK_PAGING_P4D_LIBPATH)X \
                 $(CONFIG_PK_PAGING_P4D_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_P4D_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_P4D_CFLAGS)X \
                 $(CONFIG_PK_PAGING_P4D_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_P4D_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_P4D_ASFLAGS)X \
                 $(PK_PAGING_P4D_BSBIT)X \
                 $(PK_PAGING_P4D_BUILDARCH)X \
		 $(PK_PAGING_P4D_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_P4D_SRCFILE)X \
                 $(CONFIG_PK_PAGING_P4D_CSRCFILE)

$(PK_PAGING_P4D_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_P4D_sh,$(srctree))
