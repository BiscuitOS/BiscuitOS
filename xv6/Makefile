################################################
#
# XV6 kernel
#
################################################
XV6_KERNEL_NAME       := xv6
XV6_KERNEL_VERSION    := $(CONFIG_XV6_VERSION)
XV6_KERNEL_SITE       :=
XV6_KERNEL_GITHUB     := https://github.com/mit-pdos/xv6-public
XV6_KERNEL_SUBNAME    := $(CONFIG_XV6_KERNEL_DL_NAME)
XV6_KERNEL_DIR        := $(srctree)/xv6
XV6_KERNEL_PATCH      := $(srctree)/xv6/patch
XV6_KERNEL_OUT        := 
XV6_KERNEL_SCRIPTS    := $(srctree)/scripts/linux/xv6.sh
XV6_KERNEL_TAR        := $(CONFIG_XV6_KERNEL_TAR_TYPE)
XV6_KERNEL_PACKAGE    := 
SUB_TARGET              += $(XV6_KERNEL_DIR)/build

XV6_KERNEL_sh = $(CONFIG_SHELL) $(XV6_KERNEL_SCRIPTS) \
               ${1}X $(XV6_KERNEL_NAME)X $(XV6_KERNEL_VERSION)X \
               $(XV6_KERNEL_SITE)X $(XV6_KERNEL_GITHUB)X \
               $(XV6_KERNEL_PATCH)X 5.0 \
	       1X $(CONFIG_MAIN_PROJ_NAME)X \
               $(XV6_KERNEL_TAR)X $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_XV6_KERNEL_CROSS_COMPILE)X $(XV6_KERNEL_SUBNAME)X \
               $(CONFIG_XV6_BUILD_HIST)X

$(XV6_KERNEL_DIR)/build: FORCE
	$(Q)$(call XV6_KERNEL_sh,$(srctree))
