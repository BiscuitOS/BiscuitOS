################################################
#
# node_set
#
################################################
PK_NODE_SET_NAME        := node_set
PK_NODE_SET_VERSION     := $(CONFIG_PK_NODE_SET_VERSION)
PK_NODE_SET_SITE        := $(CONFIG_PK_NODE_SET_URL)
PK_NODE_SET_GITHUB      := $(CONFIG_PK_NODE_SET_GITHUB)
PK_NODE_SET_SUBNAME     :=
PK_NODE_SET_BUILDARCH   := $(CONFIG_PK_NODE_SET_BUILDARCH)
PK_NODE_SET_DIR         := $(srctree)/package/nodemask/node_set
PK_NODE_SET_PATCH       := $(PK_NODE_SET_DIR)/patch
PK_NODE_SET_BSBIT       := node_set-$(PK_NODE_SET_VERSION).bsbit
PK_NODE_SET_OUT         :=
PK_NODE_SET_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODE_SET_TAR         := $(CONFIG_PK_NODE_SET_TAR)
PK_NODE_SET_PACKAGE     :=
PK_NODE_SET_CONFIG      := $(CONFIG_PK_NODE_SET_CONFIG)
SUB_TARGET                  += $(PK_NODE_SET_DIR)/build

PK_NODE_SET_sh = $(CONFIG_SHELL) $(PK_NODE_SET_SCRIPTS) \
                 $1X \
                 $(PK_NODE_SET_NAME)X \
                 $(PK_NODE_SET_VERSION)X \
                 $(PK_NODE_SET_SITE)X \
                 $(PK_NODE_SET_GITHUB)X \
                 $(PK_NODE_SET_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODE_SET_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODE_SET_SUBNAME)X \
                 $(CONFIG_PK_NODE_SET_CONFIG)X \
                 $(CONFIG_PK_NODE_SET_LIBPATH)X \
                 $(CONFIG_PK_NODE_SET_CPPFLAGS)X \
                 $(CONFIG_PK_NODE_SET_DPKCONFIG)X \
                 $(CONFIG_PK_NODE_SET_CFLAGS)X \
                 $(CONFIG_PK_NODE_SET_LDFLAGS)X \
                 $(CONFIG_PK_NODE_SET_CXXFLAGS)X \
                 $(CONFIG_PK_NODE_SET_ASFLAGS)X \
                 $(PK_NODE_SET_BSBIT)X \
                 $(PK_NODE_SET_BUILDARCH)X \
		 $(PK_NODE_SET_CSRCFILE)X \
                 $(CONFIG_PK_NODE_SET_SRCFILE)X \
                 $(CONFIG_PK_NODE_SET_CSRCFILE)

$(PK_NODE_SET_DIR)/build: FORCE
	$(Q)$(call PK_NODE_SET_sh,$(srctree))
