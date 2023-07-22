################################################
#
# BiscuitOS-PAGING
#
################################################
PK_PAGING_DEMO_NAME        := BiscuitOS-PAGING
PK_PAGING_DEMO_VERSION     := $(CONFIG_PK_PAGING_DEMO_VERSION)
PK_PAGING_DEMO_SITE        := $(CONFIG_PK_PAGING_DEMO_URL)
PK_PAGING_DEMO_GITHUB      := $(CONFIG_PK_PAGING_DEMO_GITHUB)
PK_PAGING_DEMO_SUBNAME     :=
PK_PAGING_DEMO_BUILDARCH   := $(CONFIG_PK_PAGING_DEMO_BUILDARCH)
PK_PAGING_DEMO_DIR         := $(srctree)/package/PAGING/BiscuitOS-PAGING
PK_PAGING_DEMO_PATCH       := $(PK_PAGING_DEMO_DIR)/patch
PK_PAGING_DEMO_BSBIT       := BiscuitOS-PAGING-$(PK_PAGING_DEMO_VERSION).bsbit
PK_PAGING_DEMO_OUT         :=
PK_PAGING_DEMO_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_PAGING_DEMO_TAR         := $(CONFIG_PK_PAGING_DEMO_TAR)
PK_PAGING_DEMO_PACKAGE     :=
PK_PAGING_DEMO_CONFIG      := $(CONFIG_PK_PAGING_DEMO_CONFIG)
SUB_TARGET                  += $(PK_PAGING_DEMO_DIR)/build

PK_PAGING_DEMO_sh = $(CONFIG_SHELL) $(PK_PAGING_DEMO_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_DEMO_NAME)X \
                 $(PK_PAGING_DEMO_VERSION)X \
                 $(PK_PAGING_DEMO_SITE)X \
                 $(PK_PAGING_DEMO_GITHUB)X \
                 $(PK_PAGING_DEMO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_DEMO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_DEMO_SUBNAME)X \
                 $(CONFIG_PK_PAGING_DEMO_CONFIG)X \
                 $(CONFIG_PK_PAGING_DEMO_LIBPATH)X \
                 $(CONFIG_PK_PAGING_DEMO_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_DEMO_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_DEMO_CFLAGS)X \
                 $(CONFIG_PK_PAGING_DEMO_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_DEMO_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_DEMO_ASFLAGS)X \
                 $(PK_PAGING_DEMO_BSBIT)X \
                 $(PK_PAGING_DEMO_BUILDARCH)X \
		 $(PK_PAGING_DEMO_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_DEMO_SRCFILE)X \
                 $(CONFIG_PK_PAGING_DEMO_CSRCFILE)

$(PK_PAGING_DEMO_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_DEMO_sh,$(srctree))
