x86_Regsea-$(CONFIG_PK_CPUID_DEFAULT)		+= CPUID-Default/
x86_Regsea-$(CONFIG_PK_CPUID_01H)		+= CPUID.01H/
x86_Regsea-$(CONFIG_PK_CPUID_80000008H)		+= CPUID.80000008H/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/Register/x86/CPUID/%/Makefile, $(x86_Regsea-y))

include $(PACKAGE_MAKEDIR)
