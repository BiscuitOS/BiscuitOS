power_manager-$(CONFIG_PK_PM_SUSPEND_BASE)	+= suspend-base/
power_manager-$(CONFIG_PK_PM_RESUME_BASE)	+= resume-base/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/power_manager/%/Makefile, $(power_manager-y))

include $(PACKAGE_MAKEDIR)
