################################################
#
# BiscuitOS-PAGING-PT-CPR
#
################################################
PK_PAGING_PT_CPR_NAME        := BiscuitOS-PAGING-PT-CPR
PK_PAGING_PT_CPR_VERSION     := $(CONFIG_PK_PAGING_PT_CPR_VERSION)
PK_PAGING_PT_CPR_SITE        := $(CONFIG_PK_PAGING_PT_CPR_URL)
PK_PAGING_PT_CPR_GITHUB      := $(CONFIG_PK_PAGING_PT_CPR_GITHUB)
PK_PAGING_PT_CPR_SUBNAME     :=
PK_PAGING_PT_CPR_BUILDARCH   := $(CONFIG_PK_PAGING_PT_CPR_BUILDARCH)
PK_PAGING_PT_CPR_DIR         := $(srctree)/package/PAGING/BiscuitOS-PAGING-PT-CPR
PK_PAGING_PT_CPR_PATCH       := $(PK_PAGING_PT_CPR_DIR)/patch
PK_PAGING_PT_CPR_BSBIT       := BiscuitOS-PAGING-PT-CPR-$(PK_PAGING_PT_CPR_VERSION).bsbit
PK_PAGING_PT_CPR_OUT         :=
PK_PAGING_PT_CPR_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_PAGING_PT_CPR_TAR         := $(CONFIG_PK_PAGING_PT_CPR_TAR)
PK_PAGING_PT_CPR_PACKAGE     :=
PK_PAGING_PT_CPR_CONFIG      := $(CONFIG_PK_PAGING_PT_CPR_CONFIG)
SUB_TARGET                  += $(PK_PAGING_PT_CPR_DIR)/build

PK_PAGING_PT_CPR_sh = $(CONFIG_SHELL) $(PK_PAGING_PT_CPR_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_PT_CPR_NAME)X \
                 $(PK_PAGING_PT_CPR_VERSION)X \
                 $(PK_PAGING_PT_CPR_SITE)X \
                 $(PK_PAGING_PT_CPR_GITHUB)X \
                 $(PK_PAGING_PT_CPR_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_PT_CPR_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_PT_CPR_SUBNAME)X \
                 $(CONFIG_PK_PAGING_PT_CPR_CONFIG)X \
                 $(CONFIG_PK_PAGING_PT_CPR_LIBPATH)X \
                 $(CONFIG_PK_PAGING_PT_CPR_CPPFLAGS)X \
                 $(CONFIG_PK_PAGING_PT_CPR_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_PT_CPR_CFLAGS)X \
                 $(CONFIG_PK_PAGING_PT_CPR_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_PT_CPR_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_PT_CPR_ASFLAGS)X \
                 $(PK_PAGING_PT_CPR_BSBIT)X \
                 $(PK_PAGING_PT_CPR_BUILDARCH)X \
		 $(PK_PAGING_PT_CPR_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_PT_CPR_SRCFILE)X \
                 $(CONFIG_PK_PAGING_PT_CPR_CSRCFILE)

$(PK_PAGING_PT_CPR_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_PT_CPR_sh,$(srctree))
