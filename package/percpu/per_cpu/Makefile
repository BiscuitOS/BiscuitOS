################################################
#
# per_cpu
#
################################################
PK_PER_CPU_F_NAME        := per_cpu
PK_PER_CPU_F_VERSION     := $(CONFIG_PK_PER_CPU_F_VERSION)
PK_PER_CPU_F_SITE        := $(CONFIG_PK_PER_CPU_F_URL)
PK_PER_CPU_F_GITHUB      := $(CONFIG_PK_PER_CPU_F_GITHUB)
PK_PER_CPU_F_SUBNAME     :=
PK_PER_CPU_F_BUILDARCH   := $(CONFIG_PK_PER_CPU_F_BUILDARCH)
PK_PER_CPU_F_DIR         := $(srctree)/package/percpu/per_cpu
PK_PER_CPU_F_PATCH       := $(PK_PER_CPU_F_DIR)/patch
PK_PER_CPU_F_BSBIT       := per_cpu-$(PK_PER_CPU_F_VERSION).bsbit
PK_PER_CPU_F_OUT         :=
PK_PER_CPU_F_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PER_CPU_F_TAR         := $(CONFIG_PK_PER_CPU_F_TAR)
PK_PER_CPU_F_PACKAGE     :=
PK_PER_CPU_F_CONFIG      := $(CONFIG_PK_PER_CPU_F_CONFIG)
SUB_TARGET                  += $(PK_PER_CPU_F_DIR)/build

PK_PER_CPU_F_sh = $(CONFIG_SHELL) $(PK_PER_CPU_F_SCRIPTS) \
                 $1X \
                 $(PK_PER_CPU_F_NAME)X \
                 $(PK_PER_CPU_F_VERSION)X \
                 $(PK_PER_CPU_F_SITE)X \
                 $(PK_PER_CPU_F_GITHUB)X \
                 $(PK_PER_CPU_F_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PER_CPU_F_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PER_CPU_F_SUBNAME)X \
                 $(CONFIG_PK_PER_CPU_F_CONFIG)X \
                 $(CONFIG_PK_PER_CPU_F_LIBPATH)X \
                 $(CONFIG_PK_PER_CPU_F_CPPFLAGS)X \
                 $(CONFIG_PK_PER_CPU_F_DPKCONFIG)X \
                 $(CONFIG_PK_PER_CPU_F_CFLAGS)X \
                 $(CONFIG_PK_PER_CPU_F_LDFLAGS)X \
                 $(CONFIG_PK_PER_CPU_F_CXXFLAGS)X \
                 $(CONFIG_PK_PER_CPU_F_ASFLAGS)X \
                 $(PK_PER_CPU_F_BSBIT)X \
                 $(PK_PER_CPU_F_BUILDARCH)X \
		 $(PK_PER_CPU_F_CSRCFILE)X \
                 $(CONFIG_PK_PER_CPU_F_SRCFILE)X \
                 $(CONFIG_PK_PER_CPU_F_CSRCFILE)

$(PK_PER_CPU_F_DIR)/build: FORCE
	$(Q)$(call PK_PER_CPU_F_sh,$(srctree))
