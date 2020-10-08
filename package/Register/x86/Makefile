x86_Reg-$(CONFIG_PK_X86_MSR_IA32_VMX_PINBASED_CTLS)	+= MSR_IA32_VMX_PINBASED_CTLS/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/Register/x86/%/Makefile, $(x86_Reg-y))

include $(PACKAGE_MAKEDIR)
