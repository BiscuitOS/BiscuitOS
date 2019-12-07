################################################
#
# rb_link_node
#
################################################
PK_RB_LINK_NODE_NAME        := rb_link_node
PK_RB_LINK_NODE_VERSION     := $(CONFIG_PK_RB_LINK_NODE_VERSION)
PK_RB_LINK_NODE_SITE        := $(CONFIG_PK_RB_LINK_NODE_URL)
PK_RB_LINK_NODE_GITHUB      := $(CONFIG_PK_RB_LINK_NODE_GITHUB)
PK_RB_LINK_NODE_SUBNAME     :=
PK_RB_LINK_NODE_BUILDARCH   := $(CONFIG_PK_RB_LINK_NODE_BUILDARCH)
PK_RB_LINK_NODE_DIR         := $(srctree)/package/rbtree/rb_link_node
PK_RB_LINK_NODE_PATCH       := $(PK_RB_LINK_NODE_DIR)/patch
PK_RB_LINK_NODE_BSBIT       := rb_link_node-$(PK_RB_LINK_NODE_VERSION).bsbit
PK_RB_LINK_NODE_OUT         :=
PK_RB_LINK_NODE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_RB_LINK_NODE_TAR         := $(CONFIG_PK_RB_LINK_NODE_TAR)
PK_RB_LINK_NODE_PACKAGE     :=
PK_RB_LINK_NODE_CONFIG      := $(CONFIG_PK_RB_LINK_NODE_CONFIG)
SUB_TARGET                  += $(PK_RB_LINK_NODE_DIR)/build

PK_RB_LINK_NODE_sh = $(CONFIG_SHELL) $(PK_RB_LINK_NODE_SCRIPTS) \
                 $1X \
                 $(PK_RB_LINK_NODE_NAME)X \
                 $(PK_RB_LINK_NODE_VERSION)X \
                 $(PK_RB_LINK_NODE_SITE)X \
                 $(PK_RB_LINK_NODE_GITHUB)X \
                 $(PK_RB_LINK_NODE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_RB_LINK_NODE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_RB_LINK_NODE_SUBNAME)X \
                 $(CONFIG_PK_RB_LINK_NODE_CONFIG)X \
                 $(CONFIG_PK_RB_LINK_NODE_LIBPATH)X \
                 $(CONFIG_PK_RB_LINK_NODE_CPPFLAGS)X \
                 $(CONFIG_PK_RB_LINK_NODE_DPKCONFIG)X \
                 $(CONFIG_PK_RB_LINK_NODE_CFLAGS)X \
                 $(CONFIG_PK_RB_LINK_NODE_LDFLAGS)X \
                 $(CONFIG_PK_RB_LINK_NODE_CXXFLAGS)X \
                 $(CONFIG_PK_RB_LINK_NODE_ASFLAGS)X \
                 $(PK_RB_LINK_NODE_BSBIT)X \
                 $(PK_RB_LINK_NODE_BUILDARCH)X \
		 $(PK_RB_LINK_NODE_CSRCFILE)X \
                 $(CONFIG_PK_RB_LINK_NODE_SRCFILE)X \
                 $(CONFIG_PK_RB_LINK_NODE_CSRCFILE)

$(PK_RB_LINK_NODE_DIR)/build: FORCE
	$(Q)$(call PK_RB_LINK_NODE_sh,$(srctree))
