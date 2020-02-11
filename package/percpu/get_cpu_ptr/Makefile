################################################
#
# get_cpu_ptr
#
################################################
PK_GET_CPU_PTR_NAME        := get_cpu_ptr
PK_GET_CPU_PTR_VERSION     := $(CONFIG_PK_GET_CPU_PTR_VERSION)
PK_GET_CPU_PTR_SITE        := $(CONFIG_PK_GET_CPU_PTR_URL)
PK_GET_CPU_PTR_GITHUB      := $(CONFIG_PK_GET_CPU_PTR_GITHUB)
PK_GET_CPU_PTR_SUBNAME     :=
PK_GET_CPU_PTR_BUILDARCH   := $(CONFIG_PK_GET_CPU_PTR_BUILDARCH)
PK_GET_CPU_PTR_DIR         := $(srctree)/package/percpu/get_cpu_ptr
PK_GET_CPU_PTR_PATCH       := $(PK_GET_CPU_PTR_DIR)/patch
PK_GET_CPU_PTR_BSBIT       := get_cpu_ptr-$(PK_GET_CPU_PTR_VERSION).bsbit
PK_GET_CPU_PTR_OUT         :=
PK_GET_CPU_PTR_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_GET_CPU_PTR_TAR         := $(CONFIG_PK_GET_CPU_PTR_TAR)
PK_GET_CPU_PTR_PACKAGE     :=
PK_GET_CPU_PTR_CONFIG      := $(CONFIG_PK_GET_CPU_PTR_CONFIG)
SUB_TARGET                  += $(PK_GET_CPU_PTR_DIR)/build

PK_GET_CPU_PTR_sh = $(CONFIG_SHELL) $(PK_GET_CPU_PTR_SCRIPTS) \
                 $1X \
                 $(PK_GET_CPU_PTR_NAME)X \
                 $(PK_GET_CPU_PTR_VERSION)X \
                 $(PK_GET_CPU_PTR_SITE)X \
                 $(PK_GET_CPU_PTR_GITHUB)X \
                 $(PK_GET_CPU_PTR_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_GET_CPU_PTR_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_GET_CPU_PTR_SUBNAME)X \
                 $(CONFIG_PK_GET_CPU_PTR_CONFIG)X \
                 $(CONFIG_PK_GET_CPU_PTR_LIBPATH)X \
                 $(CONFIG_PK_GET_CPU_PTR_CPPFLAGS)X \
                 $(CONFIG_PK_GET_CPU_PTR_DPKCONFIG)X \
                 $(CONFIG_PK_GET_CPU_PTR_CFLAGS)X \
                 $(CONFIG_PK_GET_CPU_PTR_LDFLAGS)X \
                 $(CONFIG_PK_GET_CPU_PTR_CXXFLAGS)X \
                 $(CONFIG_PK_GET_CPU_PTR_ASFLAGS)X \
                 $(PK_GET_CPU_PTR_BSBIT)X \
                 $(PK_GET_CPU_PTR_BUILDARCH)X \
		 $(PK_GET_CPU_PTR_CSRCFILE)X \
                 $(CONFIG_PK_GET_CPU_PTR_SRCFILE)X \
                 $(CONFIG_PK_GET_CPU_PTR_CSRCFILE)

$(PK_GET_CPU_PTR_DIR)/build: FORCE
	$(Q)$(call PK_GET_CPU_PTR_sh,$(srctree))
