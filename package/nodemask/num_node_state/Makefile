################################################
#
# num_node_state
#
################################################
PK_NUM_NODE_STATE_NAME        := num_node_state
PK_NUM_NODE_STATE_VERSION     := $(CONFIG_PK_NUM_NODE_STATE_VERSION)
PK_NUM_NODE_STATE_SITE        := $(CONFIG_PK_NUM_NODE_STATE_URL)
PK_NUM_NODE_STATE_GITHUB      := $(CONFIG_PK_NUM_NODE_STATE_GITHUB)
PK_NUM_NODE_STATE_SUBNAME     :=
PK_NUM_NODE_STATE_BUILDARCH   := $(CONFIG_PK_NUM_NODE_STATE_BUILDARCH)
PK_NUM_NODE_STATE_DIR         := $(srctree)/package/nodemask/num_node_state
PK_NUM_NODE_STATE_PATCH       := $(PK_NUM_NODE_STATE_DIR)/patch
PK_NUM_NODE_STATE_BSBIT       := num_node_state-$(PK_NUM_NODE_STATE_VERSION).bsbit
PK_NUM_NODE_STATE_OUT         :=
PK_NUM_NODE_STATE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NUM_NODE_STATE_TAR         := $(CONFIG_PK_NUM_NODE_STATE_TAR)
PK_NUM_NODE_STATE_PACKAGE     :=
PK_NUM_NODE_STATE_CONFIG      := $(CONFIG_PK_NUM_NODE_STATE_CONFIG)
SUB_TARGET                  += $(PK_NUM_NODE_STATE_DIR)/build

PK_NUM_NODE_STATE_sh = $(CONFIG_SHELL) $(PK_NUM_NODE_STATE_SCRIPTS) \
                 $1X \
                 $(PK_NUM_NODE_STATE_NAME)X \
                 $(PK_NUM_NODE_STATE_VERSION)X \
                 $(PK_NUM_NODE_STATE_SITE)X \
                 $(PK_NUM_NODE_STATE_GITHUB)X \
                 $(PK_NUM_NODE_STATE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NUM_NODE_STATE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NUM_NODE_STATE_SUBNAME)X \
                 $(CONFIG_PK_NUM_NODE_STATE_CONFIG)X \
                 $(CONFIG_PK_NUM_NODE_STATE_LIBPATH)X \
                 $(CONFIG_PK_NUM_NODE_STATE_CPPFLAGS)X \
                 $(CONFIG_PK_NUM_NODE_STATE_DPKCONFIG)X \
                 $(CONFIG_PK_NUM_NODE_STATE_CFLAGS)X \
                 $(CONFIG_PK_NUM_NODE_STATE_LDFLAGS)X \
                 $(CONFIG_PK_NUM_NODE_STATE_CXXFLAGS)X \
                 $(CONFIG_PK_NUM_NODE_STATE_ASFLAGS)X \
                 $(PK_NUM_NODE_STATE_BSBIT)X \
                 $(PK_NUM_NODE_STATE_BUILDARCH)X \
		 $(PK_NUM_NODE_STATE_CSRCFILE)X \
                 $(CONFIG_PK_NUM_NODE_STATE_SRCFILE)X \
                 $(CONFIG_PK_NUM_NODE_STATE_CSRCFILE)

$(PK_NUM_NODE_STATE_DIR)/build: FORCE
	$(Q)$(call PK_NUM_NODE_STATE_sh,$(srctree))
