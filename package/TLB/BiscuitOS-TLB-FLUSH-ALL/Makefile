################################################
#
# BiscuitOS-TLB-FLUSH-ALL
#
################################################
PK_TLB_FLUSH_ALL_NAME        := BiscuitOS-TLB-FLUSH-ALL
PK_TLB_FLUSH_ALL_VERSION     := $(CONFIG_PK_TLB_FLUSH_ALL_VERSION)
PK_TLB_FLUSH_ALL_SITE        := $(CONFIG_PK_TLB_FLUSH_ALL_URL)
PK_TLB_FLUSH_ALL_GITHUB      := $(CONFIG_PK_TLB_FLUSH_ALL_GITHUB)
PK_TLB_FLUSH_ALL_SUBNAME     :=
PK_TLB_FLUSH_ALL_BUILDARCH   := $(CONFIG_PK_TLB_FLUSH_ALL_BUILDARCH)
PK_TLB_FLUSH_ALL_DIR         := $(srctree)/package/TLB/BiscuitOS-TLB-FLUSH-ALL
PK_TLB_FLUSH_ALL_PATCH       := $(PK_TLB_FLUSH_ALL_DIR)/patch
PK_TLB_FLUSH_ALL_BSBIT       := BiscuitOS-TLB-FLUSH-ALL-$(PK_TLB_FLUSH_ALL_VERSION).bsbit
PK_TLB_FLUSH_ALL_OUT         :=
PK_TLB_FLUSH_ALL_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_TLB_FLUSH_ALL_TAR         := $(CONFIG_PK_TLB_FLUSH_ALL_TAR)
PK_TLB_FLUSH_ALL_PACKAGE     :=
PK_TLB_FLUSH_ALL_CONFIG      := $(CONFIG_PK_TLB_FLUSH_ALL_CONFIG)
SUB_TARGET                  += $(PK_TLB_FLUSH_ALL_DIR)/build

PK_TLB_FLUSH_ALL_sh = $(CONFIG_SHELL) $(PK_TLB_FLUSH_ALL_SCRIPTS) \
                 $1X \
                 $(PK_TLB_FLUSH_ALL_NAME)X \
                 $(PK_TLB_FLUSH_ALL_VERSION)X \
                 $(PK_TLB_FLUSH_ALL_SITE)X \
                 $(PK_TLB_FLUSH_ALL_GITHUB)X \
                 $(PK_TLB_FLUSH_ALL_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_TLB_FLUSH_ALL_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_TLB_FLUSH_ALL_SUBNAME)X \
                 $(CONFIG_PK_TLB_FLUSH_ALL_CONFIG)X \
                 $(CONFIG_PK_TLB_FLUSH_ALL_LIBPATH)X \
                 $(CONFIG_PK_TLB_FLUSH_ALL_CPPFLAGS)X \
                 $(CONFIG_PK_TLB_FLUSH_ALL_DPKCONFIG)X \
                 $(CONFIG_PK_TLB_FLUSH_ALL_CFLAGS)X \
                 $(CONFIG_PK_TLB_FLUSH_ALL_LDFLAGS)X \
                 $(CONFIG_PK_TLB_FLUSH_ALL_CXXFLAGS)X \
                 $(CONFIG_PK_TLB_FLUSH_ALL_ASFLAGS)X \
                 $(PK_TLB_FLUSH_ALL_BSBIT)X \
                 $(PK_TLB_FLUSH_ALL_BUILDARCH)X \
		 $(PK_TLB_FLUSH_ALL_CSRCFILE)X \
                 $(CONFIG_PK_TLB_FLUSH_ALL_SRCFILE)X \
                 $(CONFIG_PK_TLB_FLUSH_ALL_CSRCFILE)

$(PK_TLB_FLUSH_ALL_DIR)/build: FORCE
	$(Q)$(call PK_TLB_FLUSH_ALL_sh,$(srctree))
