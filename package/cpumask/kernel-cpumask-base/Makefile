################################################
#
# kernel-cpumask-base
#
################################################
PK_CPUMASK_BASE_NAME        := kernel-cpumask-base
PK_CPUMASK_BASE_VERSION     := $(CONFIG_PK_CPUMASK_BASE_VERSION)
PK_CPUMASK_BASE_SITE        := $(CONFIG_PK_CPUMASK_BASE_URL)
PK_CPUMASK_BASE_GITHUB      := $(CONFIG_PK_CPUMASK_BASE_GITHUB)
PK_CPUMASK_BASE_SUBNAME     :=
PK_CPUMASK_BASE_BUILDARCH   := $(CONFIG_PK_CPUMASK_BASE_BUILDARCH)
PK_CPUMASK_BASE_DIR         := $(srctree)/package/cpumask/kernel-cpumask-base
PK_CPUMASK_BASE_PATCH       := $(PK_CPUMASK_BASE_DIR)/patch
PK_CPUMASK_BASE_BSBIT       := kernel-cpumask-base-$(PK_CPUMASK_BASE_VERSION).bsbit
PK_CPUMASK_BASE_OUT         :=
PK_CPUMASK_BASE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_CPUMASK_BASE_TAR         := $(CONFIG_PK_CPUMASK_BASE_TAR)
PK_CPUMASK_BASE_PACKAGE     :=
PK_CPUMASK_BASE_CONFIG      := $(CONFIG_PK_CPUMASK_BASE_CONFIG)
SUB_TARGET                  += $(PK_CPUMASK_BASE_DIR)/build

PK_CPUMASK_BASE_sh = $(CONFIG_SHELL) $(PK_CPUMASK_BASE_SCRIPTS) \
                 $1X \
                 $(PK_CPUMASK_BASE_NAME)X \
                 $(PK_CPUMASK_BASE_VERSION)X \
                 $(PK_CPUMASK_BASE_SITE)X \
                 $(PK_CPUMASK_BASE_GITHUB)X \
                 $(PK_CPUMASK_BASE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_CPUMASK_BASE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_CPUMASK_BASE_SUBNAME)X \
                 $(CONFIG_PK_CPUMASK_BASE_CONFIG)X \
                 $(CONFIG_PK_CPUMASK_BASE_LIBPATH)X \
                 $(CONFIG_PK_CPUMASK_BASE_CPPFLAGS)X \
                 $(CONFIG_PK_CPUMASK_BASE_DPKCONFIG)X \
                 $(CONFIG_PK_CPUMASK_BASE_CFLAGS)X \
                 $(CONFIG_PK_CPUMASK_BASE_LDFLAGS)X \
                 $(CONFIG_PK_CPUMASK_BASE_CXXFLAGS)X \
                 $(CONFIG_PK_CPUMASK_BASE_ASFLAGS)X \
                 $(PK_CPUMASK_BASE_BSBIT)X \
                 $(PK_CPUMASK_BASE_BUILDARCH)X \
		 $(PK_CPUMASK_BASE_CSRCFILE)X \
                 $(CONFIG_PK_CPUMASK_BASE_SRCFILE)X \
                 $(CONFIG_PK_CPUMASK_BASE_CSRCFILE)

$(PK_CPUMASK_BASE_DIR)/build: FORCE
	$(Q)$(call PK_CPUMASK_BASE_sh,$(srctree))
