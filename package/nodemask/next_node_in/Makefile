################################################
#
# next_node_in
#
################################################
PK_NEXT_NODE_IN_NAME        := next_node_in
PK_NEXT_NODE_IN_VERSION     := $(CONFIG_PK_NEXT_NODE_IN_VERSION)
PK_NEXT_NODE_IN_SITE        := $(CONFIG_PK_NEXT_NODE_IN_URL)
PK_NEXT_NODE_IN_GITHUB      := $(CONFIG_PK_NEXT_NODE_IN_GITHUB)
PK_NEXT_NODE_IN_SUBNAME     :=
PK_NEXT_NODE_IN_BUILDARCH   := $(CONFIG_PK_NEXT_NODE_IN_BUILDARCH)
PK_NEXT_NODE_IN_DIR         := $(srctree)/package/nodemask/next_node_in
PK_NEXT_NODE_IN_PATCH       := $(PK_NEXT_NODE_IN_DIR)/patch
PK_NEXT_NODE_IN_BSBIT       := next_node_in-$(PK_NEXT_NODE_IN_VERSION).bsbit
PK_NEXT_NODE_IN_OUT         :=
PK_NEXT_NODE_IN_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NEXT_NODE_IN_TAR         := $(CONFIG_PK_NEXT_NODE_IN_TAR)
PK_NEXT_NODE_IN_PACKAGE     :=
PK_NEXT_NODE_IN_CONFIG      := $(CONFIG_PK_NEXT_NODE_IN_CONFIG)
SUB_TARGET                  += $(PK_NEXT_NODE_IN_DIR)/build

PK_NEXT_NODE_IN_sh = $(CONFIG_SHELL) $(PK_NEXT_NODE_IN_SCRIPTS) \
                 $1X \
                 $(PK_NEXT_NODE_IN_NAME)X \
                 $(PK_NEXT_NODE_IN_VERSION)X \
                 $(PK_NEXT_NODE_IN_SITE)X \
                 $(PK_NEXT_NODE_IN_GITHUB)X \
                 $(PK_NEXT_NODE_IN_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NEXT_NODE_IN_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NEXT_NODE_IN_SUBNAME)X \
                 $(CONFIG_PK_NEXT_NODE_IN_CONFIG)X \
                 $(CONFIG_PK_NEXT_NODE_IN_LIBPATH)X \
                 $(CONFIG_PK_NEXT_NODE_IN_CPPFLAGS)X \
                 $(CONFIG_PK_NEXT_NODE_IN_DPKCONFIG)X \
                 $(CONFIG_PK_NEXT_NODE_IN_CFLAGS)X \
                 $(CONFIG_PK_NEXT_NODE_IN_LDFLAGS)X \
                 $(CONFIG_PK_NEXT_NODE_IN_CXXFLAGS)X \
                 $(CONFIG_PK_NEXT_NODE_IN_ASFLAGS)X \
                 $(PK_NEXT_NODE_IN_BSBIT)X \
                 $(PK_NEXT_NODE_IN_BUILDARCH)X \
		 $(PK_NEXT_NODE_IN_CSRCFILE)X \
                 $(CONFIG_PK_NEXT_NODE_IN_SRCFILE)X \
                 $(CONFIG_PK_NEXT_NODE_IN_CSRCFILE)

$(PK_NEXT_NODE_IN_DIR)/build: FORCE
	$(Q)$(call PK_NEXT_NODE_IN_sh,$(srctree))
