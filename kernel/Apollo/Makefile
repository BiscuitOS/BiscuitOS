################################################
#
# Apollo Guidance Computer
#
################################################
APOLLO_KERNEL_NAME       := Apollo
APOLLO_KERNEL_VERSION    := $(CONFIG_APOLLO_VERSION)
APOLLO_KERNEL_SITE       := https://github.com/virtualagc/virtualagc
APOLLO_KERNEL_GITHUB     := $(CONFIG_APOLLO_GITHUB)
APOLLO_KERNEL_SUBNAME    := $(CONFIG_APOLLO_KERNEL_DL_NAME)
APOLLO_KERNEL_DIR        := $(srctree)/Apollo
APOLLO_KERNEL_PATCH      := $(srctree)/Apollo/patch
APOLLO_KERNEL_OUT        := 
APOLLO_KERNEL_SCRIPTS    := $(srctree)/scripts/linux/Apollo.sh
APOLLO_KERNEL_TAR        := $(CONFIG_APOLLO_KERNEL_TAR_TYPE)
APOLLO_KERNEL_PACKAGE    := 
SUB_TARGET              += $(APOLLO_KERNEL_DIR)/build

APOLLO_KERNEL_sh = $(CONFIG_SHELL) $(APOLLO_KERNEL_SCRIPTS) \
               ${1}X $(APOLLO_KERNEL_NAME)X $(APOLLO_KERNEL_VERSION)X \
               $(APOLLO_KERNEL_SITE)X $(APOLLO_KERNEL_GITHUB)X \
               $(APOLLO_KERNEL_PATCH)X 5.0 \
	       1X $(CONFIG_MAIN_PROJ_NAME)X \
               $(APOLLO_KERNEL_TAR)X $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_APOLLO_KERNEL_CROSS_COMPILE)X $(APOLLO_KERNEL_SUBNAME)X \
               $(CONFIG_APOLLO_BUILD_HIST)X

$(APOLLO_KERNEL_DIR)/build: FORCE
	$(Q)$(call APOLLO_KERNEL_sh,$(srctree))
