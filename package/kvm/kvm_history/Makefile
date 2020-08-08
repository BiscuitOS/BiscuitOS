KVM_history-$(CONFIG_PK_KVM_2_6_20)			+= linux-2.6.20/
KVM_history-$(CONFIG_PK_KVM_U_2_6_20)			+= userspace-2.6.20/
KVM_history-$(CONFIG_PK_KVM_2_6_32)			+= linux-2.6.32/
KVM_history-$(CONFIG_PK_KVM_U_2_6_32)			+= userspace-2.6.32/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/kvm/kvm_history/%/Makefile, $(KVM_history-y))

include $(PACKAGE_MAKEDIR)
