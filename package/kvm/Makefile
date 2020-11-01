kvm-$(CONFIG_PK_KVM_USERSPACE)		+= kvm_userspace/
kvm-$(CONFIG_PK_KVM_MODULE)		+= kvm_module/
kvm-$(CONFIG_PK_KVM_HISTORY)		+= kvm_history/
kvm-$(CONFIG_PK_BISCUITOS_UKVM)		+= BiscuitOS-UKVM/
kvm-$(CONFIG_PK_BISCUITOS_UKVM_2M)	+= BiscuitOS-UKVM-2M/
kvm-$(CONFIG_PK_BISCUITOS_QEMU_KVM)	+= BiscuitOS-qemu-kvm/
kvm-$(CONFIG_PK_BISCUITOS_UKVM_SMAP_KERNEL)	+= BiscuitOS-UKVM-SMAP-kernel/
kvm-$(CONFIG_PK_BISCUITOS_UKVM_SMAP_USER)	+= BiscuitOS-UKVM-SMAP-userspace/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/kvm/%/Makefile, $(kvm-y))

include $(PACKAGE_MAKEDIR)
