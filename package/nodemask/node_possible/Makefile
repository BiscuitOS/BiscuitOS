################################################
#
# node_possible
#
################################################
PK_NODE_POSSIBLE_NAME        := node_possible
PK_NODE_POSSIBLE_VERSION     := $(CONFIG_PK_NODE_POSSIBLE_VERSION)
PK_NODE_POSSIBLE_SITE        := $(CONFIG_PK_NODE_POSSIBLE_URL)
PK_NODE_POSSIBLE_GITHUB      := $(CONFIG_PK_NODE_POSSIBLE_GITHUB)
PK_NODE_POSSIBLE_SUBNAME     :=
PK_NODE_POSSIBLE_BUILDARCH   := $(CONFIG_PK_NODE_POSSIBLE_BUILDARCH)
PK_NODE_POSSIBLE_DIR         := $(srctree)/package/nodemask/node_possible
PK_NODE_POSSIBLE_PATCH       := $(PK_NODE_POSSIBLE_DIR)/patch
PK_NODE_POSSIBLE_BSBIT       := node_possible-$(PK_NODE_POSSIBLE_VERSION).bsbit
PK_NODE_POSSIBLE_OUT         :=
PK_NODE_POSSIBLE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODE_POSSIBLE_TAR         := $(CONFIG_PK_NODE_POSSIBLE_TAR)
PK_NODE_POSSIBLE_PACKAGE     :=
PK_NODE_POSSIBLE_CONFIG      := $(CONFIG_PK_NODE_POSSIBLE_CONFIG)
SUB_TARGET                  += $(PK_NODE_POSSIBLE_DIR)/build

PK_NODE_POSSIBLE_sh = $(CONFIG_SHELL) $(PK_NODE_POSSIBLE_SCRIPTS) \
                 $1X \
                 $(PK_NODE_POSSIBLE_NAME)X \
                 $(PK_NODE_POSSIBLE_VERSION)X \
                 $(PK_NODE_POSSIBLE_SITE)X \
                 $(PK_NODE_POSSIBLE_GITHUB)X \
                 $(PK_NODE_POSSIBLE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODE_POSSIBLE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODE_POSSIBLE_SUBNAME)X \
                 $(CONFIG_PK_NODE_POSSIBLE_CONFIG)X \
                 $(CONFIG_PK_NODE_POSSIBLE_LIBPATH)X \
                 $(CONFIG_PK_NODE_POSSIBLE_CPPFLAGS)X \
                 $(CONFIG_PK_NODE_POSSIBLE_DPKCONFIG)X \
                 $(CONFIG_PK_NODE_POSSIBLE_CFLAGS)X \
                 $(CONFIG_PK_NODE_POSSIBLE_LDFLAGS)X \
                 $(CONFIG_PK_NODE_POSSIBLE_CXXFLAGS)X \
                 $(CONFIG_PK_NODE_POSSIBLE_ASFLAGS)X \
                 $(PK_NODE_POSSIBLE_BSBIT)X \
                 $(PK_NODE_POSSIBLE_BUILDARCH)X \
		 $(PK_NODE_POSSIBLE_CSRCFILE)X \
                 $(CONFIG_PK_NODE_POSSIBLE_SRCFILE)X \
                 $(CONFIG_PK_NODE_POSSIBLE_CSRCFILE)

$(PK_NODE_POSSIBLE_DIR)/build: FORCE
	$(Q)$(call PK_NODE_POSSIBLE_sh,$(srctree))
