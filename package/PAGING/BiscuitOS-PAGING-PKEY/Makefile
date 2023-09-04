################################################
#
# BiscuitOS-PAGING-PKEY
#
################################################
PK_PAGING_PKEY_NAME        := BiscuitOS-PAGING-PKEY
PK_PAGING_PKEY_VERSION     := $(CONFIG_PK_PAGING_PKEY_VERSION)
PK_PAGING_PKEY_SITE        := $(CONFIG_PK_PAGING_PKEY_URL)
PK_PAGING_PKEY_GITHUB      := $(CONFIG_PK_PAGING_PKEY_GITHUB)
PK_PAGING_PKEY_SUBNAME     :=
PK_PAGING_PKEY_BUILDARCH   := $(CONFIG_PK_PAGING_PKEY_BUILDARCH)
PK_PAGING_PKEY_DIR         := $(srctree)/package/PAGING/BiscuitOS-PAGING-PKEY
PK_PAGING_PKEY_PATCH       := $(PK_PAGING_PKEY_DIR)/patch
PK_PAGING_PKEY_BSBIT       := BiscuitOS-PAGING-PKEY-$(PK_PAGING_PKEY_VERSION).bsbit
PK_PAGING_PKEY_OUT         :=
PK_PAGING_PKEY_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_PAGING_PKEY_TAR         := $(CONFIG_PK_PAGING_PKEY_TAR)
PK_PAGING_PKEY_PACKAGE     :=
PK_PAGING_PKEY_CONFIG      := $(CONFIG_PK_PAGING_PKEY_CONFIG)
SUB_TARGET                  += $(PK_PAGING_PKEY_DIR)/build

PK_PAGING_PKEY_sh = $(CONFIG_SHELL) $(PK_PAGING_PKEY_SCRIPTS) \
                 $1X \
                 $(PK_PAGING_PKEY_NAME)X \
                 $(PK_PAGING_PKEY_VERSION)X \
                 $(PK_PAGING_PKEY_SITE)X \
                 $(PK_PAGING_PKEY_GITHUB)X \
                 $(PK_PAGING_PKEY_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PAGING_PKEY_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PAGING_PKEY_SUBNAME)X \
                 $(CONFIG_PK_PAGING_PKEY_CONFIG)X \
                 $(CONFIG_PK_PAGING_PKEY_LIBPATH)X \
                 $(CONFIG_PK_PAGING_PKEY_CPPKEYLAGS)X \
                 $(CONFIG_PK_PAGING_PKEY_DPKCONFIG)X \
                 $(CONFIG_PK_PAGING_PKEY_CFLAGS)X \
                 $(CONFIG_PK_PAGING_PKEY_LDFLAGS)X \
                 $(CONFIG_PK_PAGING_PKEY_CXXFLAGS)X \
                 $(CONFIG_PK_PAGING_PKEY_ASFLAGS)X \
                 $(PK_PAGING_PKEY_BSBIT)X \
                 $(PK_PAGING_PKEY_BUILDARCH)X \
		 $(PK_PAGING_PKEY_CSRCFILE)X \
                 $(CONFIG_PK_PAGING_PKEY_SRCFILE)X \
                 $(CONFIG_PK_PAGING_PKEY_CSRCFILE)

$(PK_PAGING_PKEY_DIR)/build: FORCE
	$(Q)$(call PK_PAGING_PKEY_sh,$(srctree))
