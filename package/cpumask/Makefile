kernel_cpumask-$(CONFIG_PK_CPUMASK_BASE)	+= kernel-cpumask-base/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/cpumask/%/Makefile, $(kernel_cpumask-y))

include $(PACKAGE_MAKEDIR)
