################################################
#
# BiscuitOS-PAGING-PUD
#
################################################
PK_PAGING_PUD_NAME        := BiscuitOS-PAGING-PUD
PK_PAGING_PUD_VERSION     := $(CONFIG_PK_PAGING_PUD_VERSION)
PK_PAGING_PUD_SITE        := $(CONFIG_PK_PAGING_PUD_URL)
PK_PAGING_PUD_GITHUB      := $(CONFIG_PK_PAGING_PUD_GITHUB)
PK_PAGING_PUD_SUBNAME     :=
PK_PAGING_PUD_BUILDARCH   := $(CONFIG_PK_PAGING_PUD_BUILDARCH)
PK_PAGING_PUD_DIR         := $(srctree)/package/PAGING/BiscuitOS-PAGING-PUD
PK_PAGING_PUD_PATCH       := $(PK_PAGING_PUD_DIR)/patch
PK_PAGING_PUD_BSBIT       := BiscuitOS-PAGING-PUD-$(PK_PAGING_PUD_VERSION).bsbit
PK_PAGING_PUD_OUT         :=
PK_PAGING_PUD_SCRIPTS     := $(srctree)/scripts/package/package-kernel.sh
PK_PAGING_PUD_TAR         := $(CONFIG_PK_PAGING_PUD_TAR)
PK_PAGING_PUD_PACKAGE     :=
PK_PAGING_PUD_CONFIG      := $(CONFIG_PK_PAGING_PUD_CONFIG)
SUB_TARGET                  += $(PK_PAGING_PUD_DIR)/build

PK_PAGING_PUD_sh = $(CONFIG_SHELL) $(PK_PAGING_PUD_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_PUD_NAME)X \
                 $(PK_PAGING_PUD_VERSION)X \
                 $(PK_PAGING_PUD_SITE)X \
                 $(PK_PAGING_PUD_GITHUB)X \
                 $(PK_PAGING_PUD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_PUD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_PUD_SUBNAME)X \
                 $(CONFIG_PK_PAGING_PUD_CONFIG)X \
                 $(CONFIG_PK_PAGING_PUD_LIBPATH)X \
                 $(CONFIG_PK_PAGING_PUD_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_PUD_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_PUD_CFLAGS)X \
                 $(CONFIG_PK_PAGING_PUD_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_PUD_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_PUD_ASFLAGS)X \
                 $(PK_PAGING_PUD_BSBIT)X \
                 $(PK_PAGING_PUD_BUILDARCH)X \
		 $(PK_PAGING_PUD_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_PUD_SRCFILE)X \
                 $(CONFIG_PK_PAGING_PUD_CSRCFILE)

$(PK_PAGING_PUD_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_PUD_sh,$(srctree))
