################################################
#
# node_online
#
################################################
PK_NODE_ONLINE_NAME        := node_online
PK_NODE_ONLINE_VERSION     := $(CONFIG_PK_NODE_ONLINE_VERSION)
PK_NODE_ONLINE_SITE        := $(CONFIG_PK_NODE_ONLINE_URL)
PK_NODE_ONLINE_GITHUB      := $(CONFIG_PK_NODE_ONLINE_GITHUB)
PK_NODE_ONLINE_SUBNAME     :=
PK_NODE_ONLINE_BUILDARCH   := $(CONFIG_PK_NODE_ONLINE_BUILDARCH)
PK_NODE_ONLINE_DIR         := $(srctree)/package/nodemask/node_online
PK_NODE_ONLINE_PATCH       := $(PK_NODE_ONLINE_DIR)/patch
PK_NODE_ONLINE_BSBIT       := node_online-$(PK_NODE_ONLINE_VERSION).bsbit
PK_NODE_ONLINE_OUT         :=
PK_NODE_ONLINE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODE_ONLINE_TAR         := $(CONFIG_PK_NODE_ONLINE_TAR)
PK_NODE_ONLINE_PACKAGE     :=
PK_NODE_ONLINE_CONFIG      := $(CONFIG_PK_NODE_ONLINE_CONFIG)
SUB_TARGET                  += $(PK_NODE_ONLINE_DIR)/build

PK_NODE_ONLINE_sh = $(CONFIG_SHELL) $(PK_NODE_ONLINE_SCRIPTS) \
                 $1X \
                 $(PK_NODE_ONLINE_NAME)X \
                 $(PK_NODE_ONLINE_VERSION)X \
                 $(PK_NODE_ONLINE_SITE)X \
                 $(PK_NODE_ONLINE_GITHUB)X \
                 $(PK_NODE_ONLINE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODE_ONLINE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODE_ONLINE_SUBNAME)X \
                 $(CONFIG_PK_NODE_ONLINE_CONFIG)X \
                 $(CONFIG_PK_NODE_ONLINE_LIBPATH)X \
                 $(CONFIG_PK_NODE_ONLINE_CPPFLAGS)X \
                 $(CONFIG_PK_NODE_ONLINE_DPKCONFIG)X \
                 $(CONFIG_PK_NODE_ONLINE_CFLAGS)X \
                 $(CONFIG_PK_NODE_ONLINE_LDFLAGS)X \
                 $(CONFIG_PK_NODE_ONLINE_CXXFLAGS)X \
                 $(CONFIG_PK_NODE_ONLINE_ASFLAGS)X \
                 $(PK_NODE_ONLINE_BSBIT)X \
                 $(PK_NODE_ONLINE_BUILDARCH)X \
		 $(PK_NODE_ONLINE_CSRCFILE)X \
                 $(CONFIG_PK_NODE_ONLINE_SRCFILE)X \
                 $(CONFIG_PK_NODE_ONLINE_CSRCFILE)

$(PK_NODE_ONLINE_DIR)/build: FORCE
	$(Q)$(call PK_NODE_ONLINE_sh,$(srctree))
