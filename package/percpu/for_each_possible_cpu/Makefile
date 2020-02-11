################################################
#
# for_each_possible_cpu
#
################################################
PK_FEPC_NAME        := for_each_possible_cpu
PK_FEPC_VERSION     := $(CONFIG_PK_FEPC_VERSION)
PK_FEPC_SITE        := $(CONFIG_PK_FEPC_URL)
PK_FEPC_GITHUB      := $(CONFIG_PK_FEPC_GITHUB)
PK_FEPC_SUBNAME     :=
PK_FEPC_BUILDARCH   := $(CONFIG_PK_FEPC_BUILDARCH)
PK_FEPC_DIR         := $(srctree)/package/percpu/for_each_possible_cpu
PK_FEPC_PATCH       := $(PK_FEPC_DIR)/patch
PK_FEPC_BSBIT       := for_each_possible_cpu-$(PK_FEPC_VERSION).bsbit
PK_FEPC_OUT         :=
PK_FEPC_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_FEPC_TAR         := $(CONFIG_PK_FEPC_TAR)
PK_FEPC_PACKAGE     :=
PK_FEPC_CONFIG      := $(CONFIG_PK_FEPC_CONFIG)
SUB_TARGET                  += $(PK_FEPC_DIR)/build

PK_FEPC_sh = $(CONFIG_SHELL) $(PK_FEPC_SCRIPTS) \
                 $1X \
                 $(PK_FEPC_NAME)X \
                 $(PK_FEPC_VERSION)X \
                 $(PK_FEPC_SITE)X \
                 $(PK_FEPC_GITHUB)X \
                 $(PK_FEPC_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_FEPC_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_FEPC_SUBNAME)X \
                 $(CONFIG_PK_FEPC_CONFIG)X \
                 $(CONFIG_PK_FEPC_LIBPATH)X \
                 $(CONFIG_PK_FEPC_CPPFLAGS)X \
                 $(CONFIG_PK_FEPC_DPKCONFIG)X \
                 $(CONFIG_PK_FEPC_CFLAGS)X \
                 $(CONFIG_PK_FEPC_LDFLAGS)X \
                 $(CONFIG_PK_FEPC_CXXFLAGS)X \
                 $(CONFIG_PK_FEPC_ASFLAGS)X \
                 $(PK_FEPC_BSBIT)X \
                 $(PK_FEPC_BUILDARCH)X \
		 $(PK_FEPC_CSRCFILE)X \
                 $(CONFIG_PK_FEPC_SRCFILE)X \
                 $(CONFIG_PK_FEPC_CSRCFILE)

$(PK_FEPC_DIR)/build: FORCE
	$(Q)$(call PK_FEPC_sh,$(srctree))
