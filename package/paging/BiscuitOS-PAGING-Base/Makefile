################################################
#
# BiscuitOS-PAGING-Base
#
################################################
PK_PAGING_BASE_NAME        := BiscuitOS-PAGING-Base
PK_PAGING_BASE_VERSION     := $(CONFIG_PK_PAGING_BASE_VERSION)
PK_PAGING_BASE_SITE        := $(CONFIG_PK_PAGING_BASE_URL)
PK_PAGING_BASE_GITHUB      := $(CONFIG_PK_PAGING_BASE_GITHUB)
PK_PAGING_BASE_SUBNAME     :=
PK_PAGING_BASE_BUILDARCH   := $(CONFIG_PK_PAGING_BASE_BUILDARCH)
PK_PAGING_BASE_DIR         := $(srctree)/package/paging/BiscuitOS-PAGING-Base
PK_PAGING_BASE_PATCH       := $(PK_PAGING_BASE_DIR)/patch
PK_PAGING_BASE_BSBIT       := BiscuitOS-PAGING-Base-$(PK_PAGING_BASE_VERSION).bsbit
PK_PAGING_BASE_OUT         :=
PK_PAGING_BASE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PAGING_BASE_TAR         := $(CONFIG_PK_PAGING_BASE_TAR)
PK_PAGING_BASE_PACKAGE     :=
PK_PAGING_BASE_CONFIG      := $(CONFIG_PK_PAGING_BASE_CONFIG)
SUB_TARGET                  += $(PK_PAGING_BASE_DIR)/build

PK_PAGING_BASE_sh = $(CONFIG_SHELL) $(PK_PAGING_BASE_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_BASE_NAME)X \
                 $(PK_PAGING_BASE_VERSION)X \
                 $(PK_PAGING_BASE_SITE)X \
                 $(PK_PAGING_BASE_GITHUB)X \
                 $(PK_PAGING_BASE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_BASE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_BASE_SUBNAME)X \
                 $(CONFIG_PK_PAGING_BASE_CONFIG)X \
                 $(CONFIG_PK_PAGING_BASE_LIBPATH)X \
                 $(CONFIG_PK_PAGING_BASE_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_BASE_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_BASE_CFLAGS)X \
                 $(CONFIG_PK_PAGING_BASE_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_BASE_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_BASE_ASFLAGS)X \
                 $(PK_PAGING_BASE_BSBIT)X \
                 $(PK_PAGING_BASE_BUILDARCH)X \
		 $(PK_PAGING_BASE_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_BASE_SRCFILE)X \
                 $(CONFIG_PK_PAGING_BASE_CSRCFILE)

$(PK_PAGING_BASE_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_BASE_sh,$(srctree))
