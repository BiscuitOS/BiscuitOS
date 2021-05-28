sysmap-$(CONFIG_PK_BISCUITOS_SYS_MMAP_EXAMPLE_00)	+= BiscuitOS-sys-mmap-example-00/
sysmap-$(CONFIG_PK_BISCUITOS_SYS_MMAP_EXAMPLE_01)	+= BiscuitOS-sys-mmap-example-01/
sysmap-$(CONFIG_PK_BISCUITOS_SYS_MMAP_EXAMPLE_02)	+= BiscuitOS-sys-mmap-example-02/
sysmap-$(CONFIG_PK_BISCUITOS_SYS_MMAP_EXAMPLE_03)	+= BiscuitOS-sys-mmap-example-03/
sysmap-$(CONFIG_PK_BISCUITOS_SYS_MMAP_EXAMPLE_04)	+= BiscuitOS-sys-mmap-example-04/
sysmap-$(CONFIG_PK_BISCUITOS_SYS_MMAP_EXAMPLE_05_U)	+= BiscuitOS-sys-mmap-example-05-u/
sysmap-$(CONFIG_PK_BISCUITOS_SYS_MMAP_EXAMPLE_05_K)	+= BiscuitOS-sys-mmap-example-05-k/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/memory-mapping/BiscuitOS-sys-mmap/%/Makefile, $(sysmap-y))

include $(PACKAGE_MAKEDIR)
