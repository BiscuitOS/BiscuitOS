################################################
#
# put_cpu_var
#
################################################
PK_PUT_CPU_VAR_NAME        := put_cpu_var
PK_PUT_CPU_VAR_VERSION     := $(CONFIG_PK_PUT_CPU_VAR_VERSION)
PK_PUT_CPU_VAR_SITE        := $(CONFIG_PK_PUT_CPU_VAR_URL)
PK_PUT_CPU_VAR_GITHUB      := $(CONFIG_PK_PUT_CPU_VAR_GITHUB)
PK_PUT_CPU_VAR_SUBNAME     :=
PK_PUT_CPU_VAR_BUILDARCH   := $(CONFIG_PK_PUT_CPU_VAR_BUILDARCH)
PK_PUT_CPU_VAR_DIR         := $(srctree)/package/percpu/put_cpu_var
PK_PUT_CPU_VAR_PATCH       := $(PK_PUT_CPU_VAR_DIR)/patch
PK_PUT_CPU_VAR_BSBIT       := put_cpu_var-$(PK_PUT_CPU_VAR_VERSION).bsbit
PK_PUT_CPU_VAR_OUT         :=
PK_PUT_CPU_VAR_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PUT_CPU_VAR_TAR         := $(CONFIG_PK_PUT_CPU_VAR_TAR)
PK_PUT_CPU_VAR_PACKAGE     :=
PK_PUT_CPU_VAR_CONFIG      := $(CONFIG_PK_PUT_CPU_VAR_CONFIG)
SUB_TARGET                  += $(PK_PUT_CPU_VAR_DIR)/build

PK_PUT_CPU_VAR_sh = $(CONFIG_SHELL) $(PK_PUT_CPU_VAR_SCRIPTS) \
                 $1X \
                 $(PK_PUT_CPU_VAR_NAME)X \
                 $(PK_PUT_CPU_VAR_VERSION)X \
                 $(PK_PUT_CPU_VAR_SITE)X \
                 $(PK_PUT_CPU_VAR_GITHUB)X \
                 $(PK_PUT_CPU_VAR_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PUT_CPU_VAR_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PUT_CPU_VAR_SUBNAME)X \
                 $(CONFIG_PK_PUT_CPU_VAR_CONFIG)X \
                 $(CONFIG_PK_PUT_CPU_VAR_LIBPATH)X \
                 $(CONFIG_PK_PUT_CPU_VAR_CPPFLAGS)X \
                 $(CONFIG_PK_PUT_CPU_VAR_DPKCONFIG)X \
                 $(CONFIG_PK_PUT_CPU_VAR_CFLAGS)X \
                 $(CONFIG_PK_PUT_CPU_VAR_LDFLAGS)X \
                 $(CONFIG_PK_PUT_CPU_VAR_CXXFLAGS)X \
                 $(CONFIG_PK_PUT_CPU_VAR_ASFLAGS)X \
                 $(PK_PUT_CPU_VAR_BSBIT)X \
                 $(PK_PUT_CPU_VAR_BUILDARCH)X \
		 $(PK_PUT_CPU_VAR_CSRCFILE)X \
                 $(CONFIG_PK_PUT_CPU_VAR_SRCFILE)X \
                 $(CONFIG_PK_PUT_CPU_VAR_CSRCFILE)

$(PK_PUT_CPU_VAR_DIR)/build: FORCE
	$(Q)$(call PK_PUT_CPU_VAR_sh,$(srctree))
