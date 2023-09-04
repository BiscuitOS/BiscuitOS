################################################
#
# BiscuitOS-PAGING-PF
#
################################################
PK_PAGING_PF_NAME        := BiscuitOS-PAGING-PF
PK_PAGING_PF_VERSION     := $(CONFIG_PK_PAGING_PF_VERSION)
PK_PAGING_PF_SITE        := $(CONFIG_PK_PAGING_PF_URL)
PK_PAGING_PF_GITHUB      := $(CONFIG_PK_PAGING_PF_GITHUB)
PK_PAGING_PF_SUBNAME     :=
PK_PAGING_PF_BUILDARCH   := $(CONFIG_PK_PAGING_PF_BUILDARCH)
PK_PAGING_PF_DIR         := $(srctree)/package/PAGING/BiscuitOS-PAGING-PF
PK_PAGING_PF_PATCH       := $(PK_PAGING_PF_DIR)/patch
PK_PAGING_PF_BSBIT       := BiscuitOS-PAGING-PF-$(PK_PAGING_PF_VERSION).bsbit
PK_PAGING_PF_OUT         :=
PK_PAGING_PF_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_PAGING_PF_TAR         := $(CONFIG_PK_PAGING_PF_TAR)
PK_PAGING_PF_PACKAGE     :=
PK_PAGING_PF_CONFIG      := $(CONFIG_PK_PAGING_PF_CONFIG)
SUB_TARGET                  += $(PK_PAGING_PF_DIR)/build

PK_PAGING_PF_sh = $(CONFIG_SHELL) $(PK_PAGING_PF_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_PF_NAME)X \
                 $(PK_PAGING_PF_VERSION)X \
                 $(PK_PAGING_PF_SITE)X \
                 $(PK_PAGING_PF_GITHUB)X \
                 $(PK_PAGING_PF_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_PF_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_PF_SUBNAME)X \
                 $(CONFIG_PK_PAGING_PF_CONFIG)X \
                 $(CONFIG_PK_PAGING_PF_LIBPATH)X \
                 $(CONFIG_PK_PAGING_PF_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_PF_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_PF_CFLAGS)X \
                 $(CONFIG_PK_PAGING_PF_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_PF_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_PF_ASFLAGS)X \
                 $(PK_PAGING_PF_BSBIT)X \
                 $(PK_PAGING_PF_BUILDARCH)X \
		 $(PK_PAGING_PF_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_PF_SRCFILE)X \
                 $(CONFIG_PK_PAGING_PF_CSRCFILE)

$(PK_PAGING_PF_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_PF_sh,$(srctree))
