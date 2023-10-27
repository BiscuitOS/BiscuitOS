################################################
#
# BiscuitOS-PAGING-PF-UFFD
#
################################################
PK_PAGING_PF_UFFD_NAME        := BiscuitOS-PAGING-PF-UFFD
PK_PAGING_PF_UFFD_VERSION     := $(CONFIG_PK_PAGING_PF_UFFD_VERSION)
PK_PAGING_PF_UFFD_SITE        := $(CONFIG_PK_PAGING_PF_UFFD_URL)
PK_PAGING_PF_UFFD_GITHUB      := $(CONFIG_PK_PAGING_PF_UFFD_GITHUB)
PK_PAGING_PF_UFFD_SUBNAME     :=
PK_PAGING_PF_UFFD_BUILDARCH   := $(CONFIG_PK_PAGING_PF_UFFD_BUILDARCH)
PK_PAGING_PF_UFFD_DIR         := $(srctree)/package/PAGING/BiscuitOS-PAGING-PF-UFFD
PK_PAGING_PF_UFFD_PATCH       := $(PK_PAGING_PF_UFFD_DIR)/patch
PK_PAGING_PF_UFFD_BSBIT       := BiscuitOS-PAGING-PF-UFFD-$(PK_PAGING_PF_UFFD_VERSION).bsbit
PK_PAGING_PF_UFFD_OUT         :=
PK_PAGING_PF_UFFD_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_PAGING_PF_UFFD_TAR         := $(CONFIG_PK_PAGING_PF_UFFD_TAR)
PK_PAGING_PF_UFFD_PACKAGE     :=
PK_PAGING_PF_UFFD_CONFIG      := $(CONFIG_PK_PAGING_PF_UFFD_CONFIG)
SUB_TARGET                  += $(PK_PAGING_PF_UFFD_DIR)/build

PK_PAGING_PF_UFFD_sh = $(CONFIG_SHELL) $(PK_PAGING_PF_UFFD_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_PF_UFFD_NAME)X \
                 $(PK_PAGING_PF_UFFD_VERSION)X \
                 $(PK_PAGING_PF_UFFD_SITE)X \
                 $(PK_PAGING_PF_UFFD_GITHUB)X \
                 $(PK_PAGING_PF_UFFD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_PF_UFFD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_PF_UFFD_SUBNAME)X \
                 $(CONFIG_PK_PAGING_PF_UFFD_CONFIG)X \
                 $(CONFIG_PK_PAGING_PF_UFFD_LIBPATH)X \
                 $(CONFIG_PK_PAGING_PF_UFFD_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_PF_UFFD_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_PF_UFFD_CFLAGS)X \
                 $(CONFIG_PK_PAGING_PF_UFFD_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_PF_UFFD_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_PF_UFFD_ASFLAGS)X \
                 $(PK_PAGING_PF_UFFD_BSBIT)X \
                 $(PK_PAGING_PF_UFFD_BUILDARCH)X \
		 $(PK_PAGING_PF_UFFD_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_PF_UFFD_SRCFILE)X \
                 $(CONFIG_PK_PAGING_PF_UFFD_CSRCFILE)

$(PK_PAGING_PF_UFFD_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_PF_UFFD_sh,$(srctree))
