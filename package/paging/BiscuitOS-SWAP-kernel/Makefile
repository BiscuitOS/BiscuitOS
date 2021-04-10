################################################
#
# BiscuitOS-SWAP-kernel
#
################################################
PK_SWAP_KERNEL_NAME        := BiscuitOS-SWAP-kernel
PK_SWAP_KERNEL_VERSION     := $(CONFIG_PK_SWAP_KERNEL_VERSION)
PK_SWAP_KERNEL_SITE        := $(CONFIG_PK_SWAP_KERNEL_URL)
PK_SWAP_KERNEL_GITHUB      := $(CONFIG_PK_SWAP_KERNEL_GITHUB)
PK_SWAP_KERNEL_SUBNAME     :=
PK_SWAP_KERNEL_BUILDARCH   := $(CONFIG_PK_SWAP_KERNEL_BUILDARCH)
PK_SWAP_KERNEL_DIR         := $(srctree)/package/paging/BiscuitOS-SWAP-kernel
PK_SWAP_KERNEL_PATCH       := $(PK_SWAP_KERNEL_DIR)/patch
PK_SWAP_KERNEL_BSBIT       := BiscuitOS-SWAP-kernel-$(PK_SWAP_KERNEL_VERSION).bsbit
PK_SWAP_KERNEL_OUT         :=
PK_SWAP_KERNEL_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_SWAP_KERNEL_TAR         := $(CONFIG_PK_SWAP_KERNEL_TAR)
PK_SWAP_KERNEL_PACKAGE     :=
PK_SWAP_KERNEL_CONFIG      := $(CONFIG_PK_SWAP_KERNEL_CONFIG)
SUB_TARGET                  += $(PK_SWAP_KERNEL_DIR)/build

PK_SWAP_KERNEL_sh = $(CONFIG_SHELL) $(PK_SWAP_KERNEL_SCRIPTS) \
                 $1X \
                 $(PK_SWAP_KERNEL_NAME)X \
                 $(PK_SWAP_KERNEL_VERSION)X \
                 $(PK_SWAP_KERNEL_SITE)X \
                 $(PK_SWAP_KERNEL_GITHUB)X \
                 $(PK_SWAP_KERNEL_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_SWAP_KERNEL_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_SWAP_KERNEL_SUBNAME)X \
                 $(CONFIG_PK_SWAP_KERNEL_CONFIG)X \
                 $(CONFIG_PK_SWAP_KERNEL_LIBPATH)X \
                 $(CONFIG_PK_SWAP_KERNEL_CPPFLAGS)X \
                 $(CONFIG_PK_SWAP_KERNEL_DPKCONFIG)X \
                 $(CONFIG_PK_SWAP_KERNEL_CFLAGS)X \
                 $(CONFIG_PK_SWAP_KERNEL_LDFLAGS)X \
                 $(CONFIG_PK_SWAP_KERNEL_CXXFLAGS)X \
                 $(CONFIG_PK_SWAP_KERNEL_ASFLAGS)X \
                 $(PK_SWAP_KERNEL_BSBIT)X \
                 $(PK_SWAP_KERNEL_BUILDARCH)X \
		 $(PK_SWAP_KERNEL_CSRCFILE)X \
                 $(CONFIG_PK_SWAP_KERNEL_SRCFILE)X \
                 $(CONFIG_PK_SWAP_KERNEL_CSRCFILE)

$(PK_SWAP_KERNEL_DIR)/build: FORCE
	$(Q)$(call PK_SWAP_KERNEL_sh,$(srctree))
