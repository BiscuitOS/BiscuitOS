x86_Regs-$(CONFIG_PK_MSR_IA32_EFER)		+= MSR-IA32_EFER/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/Register/x86/MSR/%/Makefile, $(x86_Regs-y))

include $(PACKAGE_MAKEDIR)
