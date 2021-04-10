################################################
#
# BiscuitOS-Compact-kernel
#
################################################
PK_COMPACT_KERNEL_NAME        := BiscuitOS-Compact-kernel
PK_COMPACT_KERNEL_VERSION     := $(CONFIG_PK_COMPACT_KERNEL_VERSION)
PK_COMPACT_KERNEL_SITE        := $(CONFIG_PK_COMPACT_KERNEL_URL)
PK_COMPACT_KERNEL_GITHUB      := $(CONFIG_PK_COMPACT_KERNEL_GITHUB)
PK_COMPACT_KERNEL_SUBNAME     :=
PK_COMPACT_KERNEL_BUILDARCH   := $(CONFIG_PK_COMPACT_KERNEL_BUILDARCH)
PK_COMPACT_KERNEL_DIR         := $(srctree)/package/paging/BiscuitOS-Compact-kernel
PK_COMPACT_KERNEL_PATCH       := $(PK_COMPACT_KERNEL_DIR)/patch
PK_COMPACT_KERNEL_BSBIT       := BiscuitOS-Compact-kernel-$(PK_COMPACT_KERNEL_VERSION).bsbit
PK_COMPACT_KERNEL_OUT         :=
PK_COMPACT_KERNEL_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_COMPACT_KERNEL_TAR         := $(CONFIG_PK_COMPACT_KERNEL_TAR)
PK_COMPACT_KERNEL_PACKAGE     :=
PK_COMPACT_KERNEL_CONFIG      := $(CONFIG_PK_COMPACT_KERNEL_CONFIG)
SUB_TARGET                  += $(PK_COMPACT_KERNEL_DIR)/build

PK_COMPACT_KERNEL_sh = $(CONFIG_SHELL) $(PK_COMPACT_KERNEL_SCRIPTS) \
                 $1X \
                 $(PK_COMPACT_KERNEL_NAME)X \
                 $(PK_COMPACT_KERNEL_VERSION)X \
                 $(PK_COMPACT_KERNEL_SITE)X \
                 $(PK_COMPACT_KERNEL_GITHUB)X \
                 $(PK_COMPACT_KERNEL_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_COMPACT_KERNEL_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_COMPACT_KERNEL_SUBNAME)X \
                 $(CONFIG_PK_COMPACT_KERNEL_CONFIG)X \
                 $(CONFIG_PK_COMPACT_KERNEL_LIBPATH)X \
                 $(CONFIG_PK_COMPACT_KERNEL_CPPFLAGS)X \
                 $(CONFIG_PK_COMPACT_KERNEL_DPKCONFIG)X \
                 $(CONFIG_PK_COMPACT_KERNEL_CFLAGS)X \
                 $(CONFIG_PK_COMPACT_KERNEL_LDFLAGS)X \
                 $(CONFIG_PK_COMPACT_KERNEL_CXXFLAGS)X \
                 $(CONFIG_PK_COMPACT_KERNEL_ASFLAGS)X \
                 $(PK_COMPACT_KERNEL_BSBIT)X \
                 $(PK_COMPACT_KERNEL_BUILDARCH)X \
		 $(PK_COMPACT_KERNEL_CSRCFILE)X \
                 $(CONFIG_PK_COMPACT_KERNEL_SRCFILE)X \
                 $(CONFIG_PK_COMPACT_KERNEL_CSRCFILE)

$(PK_COMPACT_KERNEL_DIR)/build: FORCE
	$(Q)$(call PK_COMPACT_KERNEL_sh,$(srctree))
