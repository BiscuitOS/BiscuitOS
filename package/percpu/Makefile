percpu-$(CONFIG_PK_PERCPU_BASE)			+= percpu/
percpu-$(CONFIG_PK_PER_CPU_F)			+= per_cpu/
percpu-$(CONFIG_PK_THIS_CPU_READ)		+= this_cpu_read/
percpu-$(CONFIG_PK_RAW_CPU_PTR)			+= raw_cpu_ptr/
percpu-$(CONFIG_PK_FEPC)			+= for_each_possible_cpu/
percpu-$(CONFIG_PK_ALLOC_PERCPU)		+= alloc_percpu/
percpu-$(CONFIG_PK_PER_CPU_PTR)			+= per_cpu_ptr/
percpu-$(CONFIG_PK_FREE_PERCPU)			+= free_percpu/
percpu-$(CONFIG_PK_GET_CPU_VAR)			+= get_cpu_var/
percpu-$(CONFIG_PK_PUT_CPU_VAR)			+= put_cpu_var/
percpu-$(CONFIG_PK_GET_CPU_PTR)			+= get_cpu_ptr/
percpu-$(CONFIG_PK_PUT_CPU_PTR)			+= put_cpu_ptr/
percpu-$(CONFIG_PK_DEFINE_PER_CPU)		+= DEFINE_PER_CPU/
percpu-$(CONFIG_PK_DECLARE_PER_CPU)		+= DECLARE_PER_CPU/
percpu-$(CONFIG_PK_DEFINE_PER_CPU_FIRST)	+= DEFINE_PER_CPU_FIRST/
percpu-$(CONFIG_PK_DECLARE_PER_CPU_FIRST)	+= DECLARE_PER_CPU_FIRST/
percpu-$(CONFIG_PK_DEFINE_PER_CPU_SHARED_ALIGNED)	+= DEFINE_PER_CPU_SHARED_ALIGNED/
percpu-$(CONFIG_PK_DECLARE_PER_CPU_SHARED_ALIGNED)	+= DECLARE_PER_CPU_SHARED_ALIGNED/
percpu-$(CONFIG_PK_DEFINE_PER_CPU_PAGE_ALIGNED)		+= DEFINE_PER_CPU_PAGE_ALIGNED/
percpu-$(CONFIG_PK_DECLARE_PER_CPU_PAGE_ALIGNED)	+= DECLARE_PER_CPU_PAGE_ALIGNED/
percpu-$(CONFIG_PK_UP_PERCPU_USERSPACE)		+= UP_PERCPU_userspace/
percpu-$(CONFIG_PK_SMP_PERCPU_USERSPACE)	+= SMP_PERCPU_userspace/
percpu-$(CONFIG_PK_PERCPU_COUNTER_INIT)		+= percpu_counter_init/
percpu-$(CONFIG_PK_PERCPU_COUNTER_DEC)		+= percpu_counter_dec/
percpu-$(CONFIG_PK_PERCPU_COUNTER_INC)		+= percpu_counter_inc/
percpu-$(CONFIG_PK_PERCPU_COUNTER_SUB)		+= percpu_counter_sub/
percpu-$(CONFIG_PK_PERCPU_COUNTER_SUM)		+= percpu_counter_sum/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/percpu/%/Makefile, $(percpu-y))

include $(PACKAGE_MAKEDIR)
