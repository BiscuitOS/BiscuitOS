################################################
#
# BiscuitOS-PAGING-MISC
#
################################################
PK_PAGING_MISC_NAME        := BiscuitOS-PAGING-MISC
PK_PAGING_MISC_VERSION     := $(CONFIG_PK_PAGING_MISC_VERSION)
PK_PAGING_MISC_SITE        := $(CONFIG_PK_PAGING_MISC_URL)
PK_PAGING_MISC_GITHUB      := $(CONFIG_PK_PAGING_MISC_GITHUB)
PK_PAGING_MISC_SUBNAME     :=
PK_PAGING_MISC_BUILDARCH   := $(CONFIG_PK_PAGING_MISC_BUILDARCH)
PK_PAGING_MISC_DIR         := $(srctree)/package/PAGING/BiscuitOS-PAGING-MISC
PK_PAGING_MISC_PATCH       := $(PK_PAGING_MISC_DIR)/patch
PK_PAGING_MISC_BSBIT       := BiscuitOS-PAGING-MISC-$(PK_PAGING_MISC_VERSION).bsbit
PK_PAGING_MISC_OUT         :=
PK_PAGING_MISC_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PAGING_MISC_TAR         := $(CONFIG_PK_PAGING_MISC_TAR)
PK_PAGING_MISC_PACKAGE     :=
PK_PAGING_MISC_CONFIG      := $(CONFIG_PK_PAGING_MISC_CONFIG)
SUB_TARGET                  += $(PK_PAGING_MISC_DIR)/build

PK_PAGING_MISC_sh = $(CONFIG_SHELL) $(PK_PAGING_MISC_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_MISC_NAME)X \
                 $(PK_PAGING_MISC_VERSION)X \
                 $(PK_PAGING_MISC_SITE)X \
                 $(PK_PAGING_MISC_GITHUB)X \
                 $(PK_PAGING_MISC_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_MISC_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_MISC_SUBNAME)X \
                 $(CONFIG_PK_PAGING_MISC_CONFIG)X \
                 $(CONFIG_PK_PAGING_MISC_LIBPATH)X \
                 $(CONFIG_PK_PAGING_MISC_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_MISC_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_MISC_CFLAGS)X \
                 $(CONFIG_PK_PAGING_MISC_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_MISC_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_MISC_ASFLAGS)X \
                 $(PK_PAGING_MISC_BSBIT)X \
                 $(PK_PAGING_MISC_BUILDARCH)X \
		 $(PK_PAGING_MISC_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_MISC_SRCFILE)X \
                 $(CONFIG_PK_PAGING_MISC_CSRCFILE)

$(PK_PAGING_MISC_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_MISC_sh,$(srctree))
