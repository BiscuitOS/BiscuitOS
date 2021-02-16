x86_Reg-$(CONFIG_PK_X86_CR0)		+= CR0/
x86_Reg-$(CONFIG_PK_X86_CR3)		+= CR3/
x86_Reg-$(CONFIG_PK_X86_CR4)		+= CR4/
x86_Reg-$(CONFIG_PK_X86_MSR)		+= MSR/
x86_Reg-$(CONFIG_PK_X86_EFLAGS)		+= EFLAGS/
x86_Reg-$(CONFIG_PK_X86_CPUID)		+= CPUID/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/Register/x86/%/Makefile, $(x86_Reg-y))

include $(PACKAGE_MAKEDIR)
