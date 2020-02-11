################################################
#
# this_cpu_read
#
################################################
PK_THIS_CPU_READ_NAME        := this_cpu_read
PK_THIS_CPU_READ_VERSION     := $(CONFIG_PK_THIS_CPU_READ_VERSION)
PK_THIS_CPU_READ_SITE        := $(CONFIG_PK_THIS_CPU_READ_URL)
PK_THIS_CPU_READ_GITHUB      := $(CONFIG_PK_THIS_CPU_READ_GITHUB)
PK_THIS_CPU_READ_SUBNAME     :=
PK_THIS_CPU_READ_BUILDARCH   := $(CONFIG_PK_THIS_CPU_READ_BUILDARCH)
PK_THIS_CPU_READ_DIR         := $(srctree)/package/percpu/this_cpu_read
PK_THIS_CPU_READ_PATCH       := $(PK_THIS_CPU_READ_DIR)/patch
PK_THIS_CPU_READ_BSBIT       := this_cpu_read-$(PK_THIS_CPU_READ_VERSION).bsbit
PK_THIS_CPU_READ_OUT         :=
PK_THIS_CPU_READ_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_THIS_CPU_READ_TAR         := $(CONFIG_PK_THIS_CPU_READ_TAR)
PK_THIS_CPU_READ_PACKAGE     :=
PK_THIS_CPU_READ_CONFIG      := $(CONFIG_PK_THIS_CPU_READ_CONFIG)
SUB_TARGET                  += $(PK_THIS_CPU_READ_DIR)/build

PK_THIS_CPU_READ_sh = $(CONFIG_SHELL) $(PK_THIS_CPU_READ_SCRIPTS) \
                 $1X \
                 $(PK_THIS_CPU_READ_NAME)X \
                 $(PK_THIS_CPU_READ_VERSION)X \
                 $(PK_THIS_CPU_READ_SITE)X \
                 $(PK_THIS_CPU_READ_GITHUB)X \
                 $(PK_THIS_CPU_READ_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_THIS_CPU_READ_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_THIS_CPU_READ_SUBNAME)X \
                 $(CONFIG_PK_THIS_CPU_READ_CONFIG)X \
                 $(CONFIG_PK_THIS_CPU_READ_LIBPATH)X \
                 $(CONFIG_PK_THIS_CPU_READ_CPPFLAGS)X \
                 $(CONFIG_PK_THIS_CPU_READ_DPKCONFIG)X \
                 $(CONFIG_PK_THIS_CPU_READ_CFLAGS)X \
                 $(CONFIG_PK_THIS_CPU_READ_LDFLAGS)X \
                 $(CONFIG_PK_THIS_CPU_READ_CXXFLAGS)X \
                 $(CONFIG_PK_THIS_CPU_READ_ASFLAGS)X \
                 $(PK_THIS_CPU_READ_BSBIT)X \
                 $(PK_THIS_CPU_READ_BUILDARCH)X \
		 $(PK_THIS_CPU_READ_CSRCFILE)X \
                 $(CONFIG_PK_THIS_CPU_READ_SRCFILE)X \
                 $(CONFIG_PK_THIS_CPU_READ_CSRCFILE)

$(PK_THIS_CPU_READ_DIR)/build: FORCE
	$(Q)$(call PK_THIS_CPU_READ_sh,$(srctree))
