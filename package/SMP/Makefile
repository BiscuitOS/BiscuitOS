SMP-$(CONFIG_PK_SMP_CALL_FUNCTION_SINGLE)	+= smp_call_function_single/
SMP-$(CONFIG_PK_ON_EACH_CPU)			+= on_each_cpu/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/SMP/%/Makefile, $(SMP-y))

include $(PACKAGE_MAKEDIR)
