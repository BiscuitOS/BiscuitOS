################################################
#
# node_state
#
################################################
PK_NODE_STATE_NAME        := node_state
PK_NODE_STATE_VERSION     := $(CONFIG_PK_NODE_STATE_VERSION)
PK_NODE_STATE_SITE        := $(CONFIG_PK_NODE_STATE_URL)
PK_NODE_STATE_GITHUB      := $(CONFIG_PK_NODE_STATE_GITHUB)
PK_NODE_STATE_SUBNAME     :=
PK_NODE_STATE_BUILDARCH   := $(CONFIG_PK_NODE_STATE_BUILDARCH)
PK_NODE_STATE_DIR         := $(srctree)/package/nodemask/node_state
PK_NODE_STATE_PATCH       := $(PK_NODE_STATE_DIR)/patch
PK_NODE_STATE_BSBIT       := node_state-$(PK_NODE_STATE_VERSION).bsbit
PK_NODE_STATE_OUT         :=
PK_NODE_STATE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODE_STATE_TAR         := $(CONFIG_PK_NODE_STATE_TAR)
PK_NODE_STATE_PACKAGE     :=
PK_NODE_STATE_CONFIG      := $(CONFIG_PK_NODE_STATE_CONFIG)
SUB_TARGET                  += $(PK_NODE_STATE_DIR)/build

PK_NODE_STATE_sh = $(CONFIG_SHELL) $(PK_NODE_STATE_SCRIPTS) \
                 $1X \
                 $(PK_NODE_STATE_NAME)X \
                 $(PK_NODE_STATE_VERSION)X \
                 $(PK_NODE_STATE_SITE)X \
                 $(PK_NODE_STATE_GITHUB)X \
                 $(PK_NODE_STATE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODE_STATE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODE_STATE_SUBNAME)X \
                 $(CONFIG_PK_NODE_STATE_CONFIG)X \
                 $(CONFIG_PK_NODE_STATE_LIBPATH)X \
                 $(CONFIG_PK_NODE_STATE_CPPFLAGS)X \
                 $(CONFIG_PK_NODE_STATE_DPKCONFIG)X \
                 $(CONFIG_PK_NODE_STATE_CFLAGS)X \
                 $(CONFIG_PK_NODE_STATE_LDFLAGS)X \
                 $(CONFIG_PK_NODE_STATE_CXXFLAGS)X \
                 $(CONFIG_PK_NODE_STATE_ASFLAGS)X \
                 $(PK_NODE_STATE_BSBIT)X \
                 $(PK_NODE_STATE_BUILDARCH)X \
		 $(PK_NODE_STATE_CSRCFILE)X \
                 $(CONFIG_PK_NODE_STATE_SRCFILE)X \
                 $(CONFIG_PK_NODE_STATE_CSRCFILE)

$(PK_NODE_STATE_DIR)/build: FORCE
	$(Q)$(call PK_NODE_STATE_sh,$(srctree))
