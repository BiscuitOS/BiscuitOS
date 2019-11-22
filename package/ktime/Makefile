ktime-$(CONFIG_PK_KTIME_GET_TS64)		+= ktime_get_ts64/
ktime-$(CONFIG_PK_KTIME_GET_REAL_TS64)		+= ktime_get_real_ts64/
ktime-$(CONFIG_PK_KTIME_TIMESPEC64_SUB)		+= timespec64_sub/
ktime-$(CONFIG_PK_TIMER_MOD)			+= timer_module/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/ktime/%/Makefile, $(ktime-y))

include $(PACKAGE_MAKEDIR)
