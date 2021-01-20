################################################
#
# next_online_node
#
################################################
PK_NEXT_ONLINE_NODE_NAME        := next_online_node
PK_NEXT_ONLINE_NODE_VERSION     := $(CONFIG_PK_NEXT_ONLINE_NODE_VERSION)
PK_NEXT_ONLINE_NODE_SITE        := $(CONFIG_PK_NEXT_ONLINE_NODE_URL)
PK_NEXT_ONLINE_NODE_GITHUB      := $(CONFIG_PK_NEXT_ONLINE_NODE_GITHUB)
PK_NEXT_ONLINE_NODE_SUBNAME     :=
PK_NEXT_ONLINE_NODE_BUILDARCH   := $(CONFIG_PK_NEXT_ONLINE_NODE_BUILDARCH)
PK_NEXT_ONLINE_NODE_DIR         := $(srctree)/package/nodemask/next_online_node
PK_NEXT_ONLINE_NODE_PATCH       := $(PK_NEXT_ONLINE_NODE_DIR)/patch
PK_NEXT_ONLINE_NODE_BSBIT       := next_online_node-$(PK_NEXT_ONLINE_NODE_VERSION).bsbit
PK_NEXT_ONLINE_NODE_OUT         :=
PK_NEXT_ONLINE_NODE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NEXT_ONLINE_NODE_TAR         := $(CONFIG_PK_NEXT_ONLINE_NODE_TAR)
PK_NEXT_ONLINE_NODE_PACKAGE     :=
PK_NEXT_ONLINE_NODE_CONFIG      := $(CONFIG_PK_NEXT_ONLINE_NODE_CONFIG)
SUB_TARGET                  += $(PK_NEXT_ONLINE_NODE_DIR)/build

PK_NEXT_ONLINE_NODE_sh = $(CONFIG_SHELL) $(PK_NEXT_ONLINE_NODE_SCRIPTS) \
                 $1X \
                 $(PK_NEXT_ONLINE_NODE_NAME)X \
                 $(PK_NEXT_ONLINE_NODE_VERSION)X \
                 $(PK_NEXT_ONLINE_NODE_SITE)X \
                 $(PK_NEXT_ONLINE_NODE_GITHUB)X \
                 $(PK_NEXT_ONLINE_NODE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NEXT_ONLINE_NODE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NEXT_ONLINE_NODE_SUBNAME)X \
                 $(CONFIG_PK_NEXT_ONLINE_NODE_CONFIG)X \
                 $(CONFIG_PK_NEXT_ONLINE_NODE_LIBPATH)X \
                 $(CONFIG_PK_NEXT_ONLINE_NODE_CPPFLAGS)X \
                 $(CONFIG_PK_NEXT_ONLINE_NODE_DPKCONFIG)X \
                 $(CONFIG_PK_NEXT_ONLINE_NODE_CFLAGS)X \
                 $(CONFIG_PK_NEXT_ONLINE_NODE_LDFLAGS)X \
                 $(CONFIG_PK_NEXT_ONLINE_NODE_CXXFLAGS)X \
                 $(CONFIG_PK_NEXT_ONLINE_NODE_ASFLAGS)X \
                 $(PK_NEXT_ONLINE_NODE_BSBIT)X \
                 $(PK_NEXT_ONLINE_NODE_BUILDARCH)X \
		 $(PK_NEXT_ONLINE_NODE_CSRCFILE)X \
                 $(CONFIG_PK_NEXT_ONLINE_NODE_SRCFILE)X \
                 $(CONFIG_PK_NEXT_ONLINE_NODE_CSRCFILE)

$(PK_NEXT_ONLINE_NODE_DIR)/build: FORCE
	$(Q)$(call PK_NEXT_ONLINE_NODE_sh,$(srctree))
