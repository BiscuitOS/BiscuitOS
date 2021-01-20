################################################
#
# nodes_weight
#
################################################
PK_NODES_WEIGHT_NAME        := nodes_weight
PK_NODES_WEIGHT_VERSION     := $(CONFIG_PK_NODES_WEIGHT_VERSION)
PK_NODES_WEIGHT_SITE        := $(CONFIG_PK_NODES_WEIGHT_URL)
PK_NODES_WEIGHT_GITHUB      := $(CONFIG_PK_NODES_WEIGHT_GITHUB)
PK_NODES_WEIGHT_SUBNAME     :=
PK_NODES_WEIGHT_BUILDARCH   := $(CONFIG_PK_NODES_WEIGHT_BUILDARCH)
PK_NODES_WEIGHT_DIR         := $(srctree)/package/nodemask/nodes_weight
PK_NODES_WEIGHT_PATCH       := $(PK_NODES_WEIGHT_DIR)/patch
PK_NODES_WEIGHT_BSBIT       := nodes_weight-$(PK_NODES_WEIGHT_VERSION).bsbit
PK_NODES_WEIGHT_OUT         :=
PK_NODES_WEIGHT_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODES_WEIGHT_TAR         := $(CONFIG_PK_NODES_WEIGHT_TAR)
PK_NODES_WEIGHT_PACKAGE     :=
PK_NODES_WEIGHT_CONFIG      := $(CONFIG_PK_NODES_WEIGHT_CONFIG)
SUB_TARGET                  += $(PK_NODES_WEIGHT_DIR)/build

PK_NODES_WEIGHT_sh = $(CONFIG_SHELL) $(PK_NODES_WEIGHT_SCRIPTS) \
                 $1X \
                 $(PK_NODES_WEIGHT_NAME)X \
                 $(PK_NODES_WEIGHT_VERSION)X \
                 $(PK_NODES_WEIGHT_SITE)X \
                 $(PK_NODES_WEIGHT_GITHUB)X \
                 $(PK_NODES_WEIGHT_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODES_WEIGHT_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODES_WEIGHT_SUBNAME)X \
                 $(CONFIG_PK_NODES_WEIGHT_CONFIG)X \
                 $(CONFIG_PK_NODES_WEIGHT_LIBPATH)X \
                 $(CONFIG_PK_NODES_WEIGHT_CPPFLAGS)X \
                 $(CONFIG_PK_NODES_WEIGHT_DPKCONFIG)X \
                 $(CONFIG_PK_NODES_WEIGHT_CFLAGS)X \
                 $(CONFIG_PK_NODES_WEIGHT_LDFLAGS)X \
                 $(CONFIG_PK_NODES_WEIGHT_CXXFLAGS)X \
                 $(CONFIG_PK_NODES_WEIGHT_ASFLAGS)X \
                 $(PK_NODES_WEIGHT_BSBIT)X \
                 $(PK_NODES_WEIGHT_BUILDARCH)X \
		 $(PK_NODES_WEIGHT_CSRCFILE)X \
                 $(CONFIG_PK_NODES_WEIGHT_SRCFILE)X \
                 $(CONFIG_PK_NODES_WEIGHT_CSRCFILE)

$(PK_NODES_WEIGHT_DIR)/build: FORCE
	$(Q)$(call PK_NODES_WEIGHT_sh,$(srctree))
