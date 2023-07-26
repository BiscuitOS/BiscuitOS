################################################
#
# BiscuitOS-PAGING-PGD
#
################################################
PK_PAGING_PGD_NAME        := BiscuitOS-PAGING-PGD
PK_PAGING_PGD_VERSION     := $(CONFIG_PK_PAGING_PGD_VERSION)
PK_PAGING_PGD_SITE        := $(CONFIG_PK_PAGING_PGD_URL)
PK_PAGING_PGD_GITHUB      := $(CONFIG_PK_PAGING_PGD_GITHUB)
PK_PAGING_PGD_SUBNAME     :=
PK_PAGING_PGD_BUILDARCH   := $(CONFIG_PK_PAGING_PGD_BUILDARCH)
PK_PAGING_PGD_DIR         := $(srctree)/package/PAGING/BiscuitOS-PAGING-PGD
PK_PAGING_PGD_PATCH       := $(PK_PAGING_PGD_DIR)/patch
PK_PAGING_PGD_BSBIT       := BiscuitOS-PAGING-PGD-$(PK_PAGING_PGD_VERSION).bsbit
PK_PAGING_PGD_OUT         :=
PK_PAGING_PGD_SCRIPTS     := $(srctree)/scripts/package/package-kernel.sh
PK_PAGING_PGD_TAR         := $(CONFIG_PK_PAGING_PGD_TAR)
PK_PAGING_PGD_PACKAGE     :=
PK_PAGING_PGD_CONFIG      := $(CONFIG_PK_PAGING_PGD_CONFIG)
SUB_TARGET                  += $(PK_PAGING_PGD_DIR)/build

PK_PAGING_PGD_sh = $(CONFIG_SHELL) $(PK_PAGING_PGD_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_PGD_NAME)X \
                 $(PK_PAGING_PGD_VERSION)X \
                 $(PK_PAGING_PGD_SITE)X \
                 $(PK_PAGING_PGD_GITHUB)X \
                 $(PK_PAGING_PGD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_PGD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_PGD_SUBNAME)X \
                 $(CONFIG_PK_PAGING_PGD_CONFIG)X \
                 $(CONFIG_PK_PAGING_PGD_LIBPATH)X \
                 $(CONFIG_PK_PAGING_PGD_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_PGD_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_PGD_CFLAGS)X \
                 $(CONFIG_PK_PAGING_PGD_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_PGD_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_PGD_ASFLAGS)X \
                 $(PK_PAGING_PGD_BSBIT)X \
                 $(PK_PAGING_PGD_BUILDARCH)X \
		 $(PK_PAGING_PGD_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_PGD_SRCFILE)X \
                 $(CONFIG_PK_PAGING_PGD_CSRCFILE)

$(PK_PAGING_PGD_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_PGD_sh,$(srctree))
