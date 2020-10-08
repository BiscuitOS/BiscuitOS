################################################
#
# MMU-notifier
#
################################################
PK_NOTIFIER_MMU_NAME        := MMU-notifier
PK_NOTIFIER_MMU_VERSION     := $(CONFIG_PK_NOTIFIER_MMU_VERSION)
PK_NOTIFIER_MMU_SITE        := $(CONFIG_PK_NOTIFIER_MMU_URL)
PK_NOTIFIER_MMU_GITHUB      := $(CONFIG_PK_NOTIFIER_MMU_GITHUB)
PK_NOTIFIER_MMU_SUBNAME     :=
PK_NOTIFIER_MMU_BUILDARCH   := $(CONFIG_PK_NOTIFIER_MMU_BUILDARCH)
PK_NOTIFIER_MMU_DIR         := $(srctree)/package/notifier/mmu-notifier
PK_NOTIFIER_MMU_PATCH       := $(PK_NOTIFIER_MMU_DIR)/patch
PK_NOTIFIER_MMU_BSBIT       := MMU-notifier-$(PK_NOTIFIER_MMU_VERSION).bsbit
PK_NOTIFIER_MMU_OUT         :=
PK_NOTIFIER_MMU_SCRIPTS     := $(srctree)/scripts/package/package-kernel.sh
PK_NOTIFIER_MMU_TAR         := $(CONFIG_PK_NOTIFIER_MMU_TAR)
PK_NOTIFIER_MMU_PACKAGE     :=
PK_NOTIFIER_MMU_CONFIG      := $(CONFIG_PK_NOTIFIER_MMU_CONFIG)
SUB_TARGET                  += $(PK_NOTIFIER_MMU_DIR)/build

PK_NOTIFIER_MMU_sh = $(CONFIG_SHELL) $(PK_NOTIFIER_MMU_SCRIPTS) \
                 $1X \
                 $(PK_NOTIFIER_MMU_NAME)X \
                 $(PK_NOTIFIER_MMU_VERSION)X \
                 $(PK_NOTIFIER_MMU_SITE)X \
                 $(PK_NOTIFIER_MMU_GITHUB)X \
                 $(PK_NOTIFIER_MMU_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NOTIFIER_MMU_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NOTIFIER_MMU_SUBNAME)X \
                 $(CONFIG_PK_NOTIFIER_MMU_CONFIG)X \
                 $(CONFIG_PK_NOTIFIER_MMU_LIBPATH)X \
                 $(CONFIG_PK_NOTIFIER_MMU_CPPFLAGS)X \
                 $(CONFIG_PK_NOTIFIER_MMU_DPKCONFIG)X \
                 $(CONFIG_PK_NOTIFIER_MMU_CFLAGS)X \
                 $(CONFIG_PK_NOTIFIER_MMU_LDFLAGS)X \
                 $(CONFIG_PK_NOTIFIER_MMU_CXXFLAGS)X \
                 $(CONFIG_PK_NOTIFIER_MMU_ASFLAGS)X \
                 $(PK_NOTIFIER_MMU_BSBIT)X \
                 $(PK_NOTIFIER_MMU_BUILDARCH)X \
		 $(PK_NOTIFIER_MMU_CSRCFILE)X \
                 $(CONFIG_PK_NOTIFIER_MMU_SRCFILE)X \
                 $(CONFIG_PK_NOTIFIER_MMU_CSRCFILE)

$(PK_NOTIFIER_MMU_DIR)/build: FORCE
	$(Q)$(call PK_NOTIFIER_MMU_sh,$(srctree))
