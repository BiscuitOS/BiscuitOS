################################################
#
# kernel-notifier-base
#
################################################
PK_NOTIFIER_BASE_NAME        := kernel-notifier-base
PK_NOTIFIER_BASE_VERSION     := $(CONFIG_PK_NOTIFIER_BASE_VERSION)
PK_NOTIFIER_BASE_SITE        := $(CONFIG_PK_NOTIFIER_BASE_URL)
PK_NOTIFIER_BASE_GITHUB      := $(CONFIG_PK_NOTIFIER_BASE_GITHUB)
PK_NOTIFIER_BASE_SUBNAME     :=
PK_NOTIFIER_BASE_BUILDARCH   := $(CONFIG_PK_NOTIFIER_BASE_BUILDARCH)
PK_NOTIFIER_BASE_DIR         := $(srctree)/package/notifier/kernel-notifier-base
PK_NOTIFIER_BASE_PATCH       := $(PK_NOTIFIER_BASE_DIR)/patch
PK_NOTIFIER_BASE_BSBIT       := kernel-notifier-base-$(PK_NOTIFIER_BASE_VERSION).bsbit
PK_NOTIFIER_BASE_OUT         :=
PK_NOTIFIER_BASE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NOTIFIER_BASE_TAR         := $(CONFIG_PK_NOTIFIER_BASE_TAR)
PK_NOTIFIER_BASE_PACKAGE     :=
PK_NOTIFIER_BASE_CONFIG      := $(CONFIG_PK_NOTIFIER_BASE_CONFIG)
SUB_TARGET                  += $(PK_NOTIFIER_BASE_DIR)/build

PK_NOTIFIER_BASE_sh = $(CONFIG_SHELL) $(PK_NOTIFIER_BASE_SCRIPTS) \
                 $1X \
                 $(PK_NOTIFIER_BASE_NAME)X \
                 $(PK_NOTIFIER_BASE_VERSION)X \
                 $(PK_NOTIFIER_BASE_SITE)X \
                 $(PK_NOTIFIER_BASE_GITHUB)X \
                 $(PK_NOTIFIER_BASE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NOTIFIER_BASE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NOTIFIER_BASE_SUBNAME)X \
                 $(CONFIG_PK_NOTIFIER_BASE_CONFIG)X \
                 $(CONFIG_PK_NOTIFIER_BASE_LIBPATH)X \
                 $(CONFIG_PK_NOTIFIER_BASE_CPPFLAGS)X \
                 $(CONFIG_PK_NOTIFIER_BASE_DPKCONFIG)X \
                 $(CONFIG_PK_NOTIFIER_BASE_CFLAGS)X \
                 $(CONFIG_PK_NOTIFIER_BASE_LDFLAGS)X \
                 $(CONFIG_PK_NOTIFIER_BASE_CXXFLAGS)X \
                 $(CONFIG_PK_NOTIFIER_BASE_ASFLAGS)X \
                 $(PK_NOTIFIER_BASE_BSBIT)X \
                 $(PK_NOTIFIER_BASE_BUILDARCH)X \
		 $(PK_NOTIFIER_BASE_CSRCFILE)X \
                 $(CONFIG_PK_NOTIFIER_BASE_SRCFILE)X \
                 $(CONFIG_PK_NOTIFIER_BASE_CSRCFILE)

$(PK_NOTIFIER_BASE_DIR)/build: FORCE
	$(Q)$(call PK_NOTIFIER_BASE_sh,$(srctree))
