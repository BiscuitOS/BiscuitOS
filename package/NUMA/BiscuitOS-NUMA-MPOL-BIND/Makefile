################################################
#
# BiscuitOS-NUMA-MPOL-BIND
#
################################################
PK_NUMA_MPOL_BIND_NAME        := BiscuitOS-NUMA-MPOL-BIND
PK_NUMA_MPOL_BIND_VERSION     := $(CONFIG_PK_NUMA_MPOL_BIND_VERSION)
PK_NUMA_MPOL_BIND_SITE        := $(CONFIG_PK_NUMA_MPOL_BIND_URL)
PK_NUMA_MPOL_BIND_GITHUB      := $(CONFIG_PK_NUMA_MPOL_BIND_GITHUB)
PK_NUMA_MPOL_BIND_SUBNAME     :=
PK_NUMA_MPOL_BIND_BUILDARCH   := $(CONFIG_PK_NUMA_MPOL_BIND_BUILDARCH)
PK_NUMA_MPOL_BIND_DIR         := $(srctree)/package/NUMA/BiscuitOS-NUMA-MPOL-BIND
PK_NUMA_MPOL_BIND_PATCH       := $(PK_NUMA_MPOL_BIND_DIR)/patch
PK_NUMA_MPOL_BIND_BSBIT       := BiscuitOS-NUMA-MPOL-BIND-$(PK_NUMA_MPOL_BIND_VERSION).bsbit
PK_NUMA_MPOL_BIND_OUT         :=
PK_NUMA_MPOL_BIND_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_NUMA_MPOL_BIND_TAR         := $(CONFIG_PK_NUMA_MPOL_BIND_TAR)
PK_NUMA_MPOL_BIND_PACKAGE     :=
PK_NUMA_MPOL_BIND_CONFIG      := $(CONFIG_PK_NUMA_MPOL_BIND_CONFIG)
SUB_TARGET                  += $(PK_NUMA_MPOL_BIND_DIR)/build

PK_NUMA_MPOL_BIND_sh = $(CONFIG_SHELL) $(PK_NUMA_MPOL_BIND_SCRIPTS) \
                 $1X \
                 $(PK_NUMA_MPOL_BIND_NAME)X \
                 $(PK_NUMA_MPOL_BIND_VERSION)X \
                 $(PK_NUMA_MPOL_BIND_SITE)X \
                 $(PK_NUMA_MPOL_BIND_GITHUB)X \
                 $(PK_NUMA_MPOL_BIND_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NUMA_MPOL_BIND_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NUMA_MPOL_BIND_SUBNAME)X \
                 $(CONFIG_PK_NUMA_MPOL_BIND_CONFIG)X \
                 $(CONFIG_PK_NUMA_MPOL_BIND_LIBPATH)X \
                 $(CONFIG_PK_NUMA_MPOL_BIND_CPPFLAGS)X \
                 $(CONFIG_PK_NUMA_MPOL_BIND_DPKCONFIG)X \
                 $(CONFIG_PK_NUMA_MPOL_BIND_CFLAGS)X \
                 $(CONFIG_PK_NUMA_MPOL_BIND_LDFLAGS)X \
                 $(CONFIG_PK_NUMA_MPOL_BIND_CXXFLAGS)X \
                 $(CONFIG_PK_NUMA_MPOL_BIND_ASFLAGS)X \
                 $(PK_NUMA_MPOL_BIND_BSBIT)X \
                 $(PK_NUMA_MPOL_BIND_BUILDARCH)X \
		 $(PK_NUMA_MPOL_BIND_CSRCFILE)X \
                 $(CONFIG_PK_NUMA_MPOL_BIND_SRCFILE)X \
                 $(CONFIG_PK_NUMA_MPOL_BIND_CSRCFILE)

$(PK_NUMA_MPOL_BIND_DIR)/build: FORCE
	$(Q)$(call PK_NUMA_MPOL_BIND_sh,$(srctree))
