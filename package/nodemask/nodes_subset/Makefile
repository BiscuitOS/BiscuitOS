################################################
#
# nodes_subset
#
################################################
PK_NODES_SUBSET_NAME        := nodes_subset
PK_NODES_SUBSET_VERSION     := $(CONFIG_PK_NODES_SUBSET_VERSION)
PK_NODES_SUBSET_SITE        := $(CONFIG_PK_NODES_SUBSET_URL)
PK_NODES_SUBSET_GITHUB      := $(CONFIG_PK_NODES_SUBSET_GITHUB)
PK_NODES_SUBSET_SUBNAME     :=
PK_NODES_SUBSET_BUILDARCH   := $(CONFIG_PK_NODES_SUBSET_BUILDARCH)
PK_NODES_SUBSET_DIR         := $(srctree)/package/nodemask/nodes_subset
PK_NODES_SUBSET_PATCH       := $(PK_NODES_SUBSET_DIR)/patch
PK_NODES_SUBSET_BSBIT       := nodes_subset-$(PK_NODES_SUBSET_VERSION).bsbit
PK_NODES_SUBSET_OUT         :=
PK_NODES_SUBSET_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODES_SUBSET_TAR         := $(CONFIG_PK_NODES_SUBSET_TAR)
PK_NODES_SUBSET_PACKAGE     :=
PK_NODES_SUBSET_CONFIG      := $(CONFIG_PK_NODES_SUBSET_CONFIG)
SUB_TARGET                  += $(PK_NODES_SUBSET_DIR)/build

PK_NODES_SUBSET_sh = $(CONFIG_SHELL) $(PK_NODES_SUBSET_SCRIPTS) \
                 $1X \
                 $(PK_NODES_SUBSET_NAME)X \
                 $(PK_NODES_SUBSET_VERSION)X \
                 $(PK_NODES_SUBSET_SITE)X \
                 $(PK_NODES_SUBSET_GITHUB)X \
                 $(PK_NODES_SUBSET_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODES_SUBSET_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODES_SUBSET_SUBNAME)X \
                 $(CONFIG_PK_NODES_SUBSET_CONFIG)X \
                 $(CONFIG_PK_NODES_SUBSET_LIBPATH)X \
                 $(CONFIG_PK_NODES_SUBSET_CPPFLAGS)X \
                 $(CONFIG_PK_NODES_SUBSET_DPKCONFIG)X \
                 $(CONFIG_PK_NODES_SUBSET_CFLAGS)X \
                 $(CONFIG_PK_NODES_SUBSET_LDFLAGS)X \
                 $(CONFIG_PK_NODES_SUBSET_CXXFLAGS)X \
                 $(CONFIG_PK_NODES_SUBSET_ASFLAGS)X \
                 $(PK_NODES_SUBSET_BSBIT)X \
                 $(PK_NODES_SUBSET_BUILDARCH)X \
		 $(PK_NODES_SUBSET_CSRCFILE)X \
                 $(CONFIG_PK_NODES_SUBSET_SRCFILE)X \
                 $(CONFIG_PK_NODES_SUBSET_CSRCFILE)

$(PK_NODES_SUBSET_DIR)/build: FORCE
	$(Q)$(call PK_NODES_SUBSET_sh,$(srctree))
