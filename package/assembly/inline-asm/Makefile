inline_asm-$(CONFIG_PK_INLINE_ASM_DEMO)			+= demo/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/assembly/inline-asm/%/Makefile, $(inline_asm-y))

include $(PACKAGE_MAKEDIR)
