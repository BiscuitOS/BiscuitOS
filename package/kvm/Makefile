kvm-$(CONFIG_PK_KVM_USERSPACE)		+= kvm_userspace/
kvm-$(CONFIG_PK_KVM_MODULE)		+= kvm_module/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/kvm/%/Makefile, $(kvm-y))

include $(PACKAGE_MAKEDIR)
