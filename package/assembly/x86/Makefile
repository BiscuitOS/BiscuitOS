x86_asm-$(CONFIG_PK_X86_ASM_MOV)			+= mov/
x86_asm-$(CONFIG_PK_X86_ASM_RDMSR)			+= rdmsr/
x86_asm-$(CONFIG_PK_X86_ASM_RDTSC)			+= rdtsc/
x86_asm-$(CONFIG_PK_X86_ASM_RDTSC_APP)			+= rdtsc-app/
x86_asm-$(CONFIG_PK_X86_ASM_WRMSR)			+= wrmsr/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/assembly/x86/%/Makefile, $(x86_asm-y))

include $(PACKAGE_MAKEDIR)
