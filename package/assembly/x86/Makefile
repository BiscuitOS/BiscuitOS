x86_asm-$(CONFIG_PK_X86_ASM_MOV)			+= mov/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/assembly/x86/%/Makefile, $(x86_asm-y))

include $(PACKAGE_MAKEDIR)
