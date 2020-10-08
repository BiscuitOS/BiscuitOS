kernel_notifier-$(CONFIG_PK_NOTIFIER_BASE)	+= kernel-notifier-base/
kernel_notifier-$(CONFIG_PK_NOTIFIER_REBOOT)	+= reboot-notifier/
kernel_notifier-$(CONFIG_PK_NOTIFIER_MMU)	+= mmu-notifier/
kernel_notifier-$(CONFIG_PK_NOTIFIER_MMU_USER)	+= mmu-userspace-notifier/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/notifier/%/Makefile, $(kernel_notifier-y))

include $(PACKAGE_MAKEDIR)
