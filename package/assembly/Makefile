assembly-$(CONFIG_PK_ASSEMBLY_X86)	+= x86/
assembly-$(CONFIG_PK_ASSEMBLY_INLINE)	+= inline-asm/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/assembly/%/Makefile, $(assembly-y))

include $(PACKAGE_MAKEDIR)
