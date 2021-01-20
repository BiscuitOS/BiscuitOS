################################################
#
# node_set_offline
#
################################################
PK_NODE_SET_OFFLINE_NAME        := node_set_offline
PK_NODE_SET_OFFLINE_VERSION     := $(CONFIG_PK_NODE_SET_OFFLINE_VERSION)
PK_NODE_SET_OFFLINE_SITE        := $(CONFIG_PK_NODE_SET_OFFLINE_URL)
PK_NODE_SET_OFFLINE_GITHUB      := $(CONFIG_PK_NODE_SET_OFFLINE_GITHUB)
PK_NODE_SET_OFFLINE_SUBNAME     :=
PK_NODE_SET_OFFLINE_BUILDARCH   := $(CONFIG_PK_NODE_SET_OFFLINE_BUILDARCH)
PK_NODE_SET_OFFLINE_DIR         := $(srctree)/package/nodemask/node_set_offline
PK_NODE_SET_OFFLINE_PATCH       := $(PK_NODE_SET_OFFLINE_DIR)/patch
PK_NODE_SET_OFFLINE_BSBIT       := node_set_offline-$(PK_NODE_SET_OFFLINE_VERSION).bsbit
PK_NODE_SET_OFFLINE_OUT         :=
PK_NODE_SET_OFFLINE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODE_SET_OFFLINE_TAR         := $(CONFIG_PK_NODE_SET_OFFLINE_TAR)
PK_NODE_SET_OFFLINE_PACKAGE     :=
PK_NODE_SET_OFFLINE_CONFIG      := $(CONFIG_PK_NODE_SET_OFFLINE_CONFIG)
SUB_TARGET                  += $(PK_NODE_SET_OFFLINE_DIR)/build

PK_NODE_SET_OFFLINE_sh = $(CONFIG_SHELL) $(PK_NODE_SET_OFFLINE_SCRIPTS) \
                 $1X \
                 $(PK_NODE_SET_OFFLINE_NAME)X \
                 $(PK_NODE_SET_OFFLINE_VERSION)X \
                 $(PK_NODE_SET_OFFLINE_SITE)X \
                 $(PK_NODE_SET_OFFLINE_GITHUB)X \
                 $(PK_NODE_SET_OFFLINE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODE_SET_OFFLINE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODE_SET_OFFLINE_SUBNAME)X \
                 $(CONFIG_PK_NODE_SET_OFFLINE_CONFIG)X \
                 $(CONFIG_PK_NODE_SET_OFFLINE_LIBPATH)X \
                 $(CONFIG_PK_NODE_SET_OFFLINE_CPPFLAGS)X \
                 $(CONFIG_PK_NODE_SET_OFFLINE_DPKCONFIG)X \
                 $(CONFIG_PK_NODE_SET_OFFLINE_CFLAGS)X \
                 $(CONFIG_PK_NODE_SET_OFFLINE_LDFLAGS)X \
                 $(CONFIG_PK_NODE_SET_OFFLINE_CXXFLAGS)X \
                 $(CONFIG_PK_NODE_SET_OFFLINE_ASFLAGS)X \
                 $(PK_NODE_SET_OFFLINE_BSBIT)X \
                 $(PK_NODE_SET_OFFLINE_BUILDARCH)X \
		 $(PK_NODE_SET_OFFLINE_CSRCFILE)X \
                 $(CONFIG_PK_NODE_SET_OFFLINE_SRCFILE)X \
                 $(CONFIG_PK_NODE_SET_OFFLINE_CSRCFILE)

$(PK_NODE_SET_OFFLINE_DIR)/build: FORCE
	$(Q)$(call PK_NODE_SET_OFFLINE_sh,$(srctree))
