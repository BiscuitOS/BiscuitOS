################################################
#
# on_each_cpu
#
################################################
PK_ON_EACH_CPU_NAME        := on_each_cpu
PK_ON_EACH_CPU_VERSION     := $(CONFIG_PK_ON_EACH_CPU_VERSION)
PK_ON_EACH_CPU_SITE        := $(CONFIG_PK_ON_EACH_CPU_URL)
PK_ON_EACH_CPU_GITHUB      := $(CONFIG_PK_ON_EACH_CPU_GITHUB)
PK_ON_EACH_CPU_SUBNAME     :=
PK_ON_EACH_CPU_BUILDARCH   := $(CONFIG_PK_ON_EACH_CPU_BUILDARCH)
PK_ON_EACH_CPU_DIR         := $(srctree)/package/SMP/on_each_cpu
PK_ON_EACH_CPU_PATCH       := $(PK_ON_EACH_CPU_DIR)/patch
PK_ON_EACH_CPU_BSBIT       := on_each_cpu-$(PK_ON_EACH_CPU_VERSION).bsbit
PK_ON_EACH_CPU_OUT         :=
PK_ON_EACH_CPU_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_ON_EACH_CPU_TAR         := $(CONFIG_PK_ON_EACH_CPU_TAR)
PK_ON_EACH_CPU_PACKAGE     :=
PK_ON_EACH_CPU_CONFIG      := $(CONFIG_PK_ON_EACH_CPU_CONFIG)
SUB_TARGET                  += $(PK_ON_EACH_CPU_DIR)/build

PK_ON_EACH_CPU_sh = $(CONFIG_SHELL) $(PK_ON_EACH_CPU_SCRIPTS) \
                 $1X \
                 $(PK_ON_EACH_CPU_NAME)X \
                 $(PK_ON_EACH_CPU_VERSION)X \
                 $(PK_ON_EACH_CPU_SITE)X \
                 $(PK_ON_EACH_CPU_GITHUB)X \
                 $(PK_ON_EACH_CPU_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_ON_EACH_CPU_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_ON_EACH_CPU_SUBNAME)X \
                 $(CONFIG_PK_ON_EACH_CPU_CONFIG)X \
                 $(CONFIG_PK_ON_EACH_CPU_LIBPATH)X \
                 $(CONFIG_PK_ON_EACH_CPU_CPPFLAGS)X \
                 $(CONFIG_PK_ON_EACH_CPU_DPKCONFIG)X \
                 $(CONFIG_PK_ON_EACH_CPU_CFLAGS)X \
                 $(CONFIG_PK_ON_EACH_CPU_LDFLAGS)X \
                 $(CONFIG_PK_ON_EACH_CPU_CXXFLAGS)X \
                 $(CONFIG_PK_ON_EACH_CPU_ASFLAGS)X \
                 $(PK_ON_EACH_CPU_BSBIT)X \
                 $(PK_ON_EACH_CPU_BUILDARCH)X \
		 $(PK_ON_EACH_CPU_CSRCFILE)X \
                 $(CONFIG_PK_ON_EACH_CPU_SRCFILE)X \
                 $(CONFIG_PK_ON_EACH_CPU_CSRCFILE)

$(PK_ON_EACH_CPU_DIR)/build: FORCE
	$(Q)$(call PK_ON_EACH_CPU_sh,$(srctree))
