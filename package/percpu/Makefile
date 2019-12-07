percpu-$(CONFIG_PK_PERCPU_COUNTER_INIT)	+= percpu_counter_init/
percpu-$(CONFIG_PK_PERCPU_COUNTER_DEC)	+= percpu_counter_dec/
percpu-$(CONFIG_PK_PERCPU_COUNTER_INC)	+= percpu_counter_inc/
percpu-$(CONFIG_PK_PERCPU_COUNTER_SUB)	+= percpu_counter_sub/
percpu-$(CONFIG_PK_PERCPU_COUNTER_SUM)	+= percpu_counter_sum/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/percpu/%/Makefile, $(percpu-y))

include $(PACKAGE_MAKEDIR)
