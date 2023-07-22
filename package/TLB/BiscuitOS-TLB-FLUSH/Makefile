################################################
#
# BiscuitOS-TLB-FLUSH
#
################################################
PK_TLB_FLUSH_NAME        := BiscuitOS-TLB-FLUSH
PK_TLB_FLUSH_VERSION     := $(CONFIG_PK_TLB_FLUSH_VERSION)
PK_TLB_FLUSH_SITE        := $(CONFIG_PK_TLB_FLUSH_URL)
PK_TLB_FLUSH_GITHUB      := $(CONFIG_PK_TLB_FLUSH_GITHUB)
PK_TLB_FLUSH_SUBNAME     :=
PK_TLB_FLUSH_BUILDARCH   := $(CONFIG_PK_TLB_FLUSH_BUILDARCH)
PK_TLB_FLUSH_DIR         := $(srctree)/package/TLB/BiscuitOS-TLB-FLUSH
PK_TLB_FLUSH_PATCH       := $(PK_TLB_FLUSH_DIR)/patch
PK_TLB_FLUSH_BSBIT       := BiscuitOS-TLB-FLUSH-$(PK_TLB_FLUSH_VERSION).bsbit
PK_TLB_FLUSH_OUT         :=
PK_TLB_FLUSH_SCRIPTS     := $(srctree)/scripts/package/package-kernel.sh
PK_TLB_FLUSH_TAR         := $(CONFIG_PK_TLB_FLUSH_TAR)
PK_TLB_FLUSH_PACKAGE     :=
PK_TLB_FLUSH_CONFIG      := $(CONFIG_PK_TLB_FLUSH_CONFIG)
SUB_TARGET                  += $(PK_TLB_FLUSH_DIR)/build

PK_TLB_FLUSH_sh = $(CONFIG_SHELL) $(PK_TLB_FLUSH_SCRIPTS) \
                 $1X \
                 $(PK_TLB_FLUSH_NAME)X \
                 $(PK_TLB_FLUSH_VERSION)X \
                 $(PK_TLB_FLUSH_SITE)X \
                 $(PK_TLB_FLUSH_GITHUB)X \
                 $(PK_TLB_FLUSH_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_TLB_FLUSH_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_TLB_FLUSH_SUBNAME)X \
                 $(CONFIG_PK_TLB_FLUSH_CONFIG)X \
                 $(CONFIG_PK_TLB_FLUSH_LIBPATH)X \
                 $(CONFIG_PK_TLB_FLUSH_CPPFLAGS)X \
                 $(CONFIG_PK_TLB_FLUSH_DPKCONFIG)X \
                 $(CONFIG_PK_TLB_FLUSH_CFLAGS)X \
                 $(CONFIG_PK_TLB_FLUSH_LDFLAGS)X \
                 $(CONFIG_PK_TLB_FLUSH_CXXFLAGS)X \
                 $(CONFIG_PK_TLB_FLUSH_ASFLAGS)X \
                 $(PK_TLB_FLUSH_BSBIT)X \
                 $(PK_TLB_FLUSH_BUILDARCH)X \
		 $(PK_TLB_FLUSH_CSRCFILE)X \
                 $(CONFIG_PK_TLB_FLUSH_SRCFILE)X \
                 $(CONFIG_PK_TLB_FLUSH_CSRCFILE)

$(PK_TLB_FLUSH_DIR)/build: FORCE
	$(Q)$(call PK_TLB_FLUSH_sh,$(srctree))
