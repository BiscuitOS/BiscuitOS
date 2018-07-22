##########################################
#
# To build BiscuitOS kernel
#
##########################################
BOS_KERNEL_NAME     := kernel
BOS_KERNEL_VERSION  := $(KERNEL_VERSION)
BOS_KERNEL_SITE     := https://github.com/BiscuitOS/Kernel.git
BOS_KERNEL_DIR      := $(srctree)/target/$(BOS_KERNEL_NAME)
BOS_KERNEL_SCRIPTS  := $(srctree)/scripts/kernel/kernel.sh
SUB_TARGET          += $(BOS_KERNEL_DIR)/compile

run_kernel_sh = $(CONFIG_SHELL) $(BOS_KERNEL_SCRIPTS) \
                $(BOS_KERNEL_VERSION) $(BOS_KERNEL_SITE) \
                $(srctree)

$(BOS_KERNEL_DIR)/compile: FORCE
	$(Q)$(call run_kernel_sh,make)

