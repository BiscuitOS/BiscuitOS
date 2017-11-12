##########################################
#
# To build BiscuitOS kernel
#
##########################################
BISCUITOS_NAME     := kernel
BISCUITOS_VERSION  := newest
BISCUITOS_SITE     := https://github.com/BiscuitOS/Kernel.git
BISCUITOS_DIR      := $(srctree)/target/$(BISCUITOS_NAME)
BISCUITOS_SCRIPTS  := $(srctree)/scripts/kernel/kernel.sh
SUB_TARGET         += $(BISCUITOS_DIR)/compile


ifdef CONFIG_KERNEL_VERSION_0_1_1
  BISCUITOS_VERSION = 0.1.1
endif
ifdef CONFIG_KERNEL_VERSION_0_2_2
  BISCUITOS_VERSION = 0.2.2
endif

run_kernel_sh = $(CONFIG_SHELL) $(BISCUITOS_SCRIPTS) \
                $(srctree) $(BISCUITOS_VERSION) \
                $(BISCUITOS_SITE) $1

$(BISCUITOS_DIR)/compile: FORCE
	$(Q)$(call run_kernel_sh,make)


