arm-asm-$(CONFIG_PK_ARM_ASM_MOV)		+= mov/
arm-asm-$(CONFIG_PK_ARM_ASM_BIC)		+= bic/
arm-asm-$(CONFIG_PK_ARM_ASM_PUSHSECTION)	+= pushsection/
arm-asm-$(CONFIG_PK_ARM_ASM_POPSECTION)		+= popsection/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/arm-asm/%/Makefile, $(arm-asm-y))

include $(PACKAGE_MAKEDIR)
