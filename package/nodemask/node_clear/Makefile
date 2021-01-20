################################################
#
# node_clear
#
################################################
PK_NODE_CLEAR_NAME        := node_clear
PK_NODE_CLEAR_VERSION     := $(CONFIG_PK_NODE_CLEAR_VERSION)
PK_NODE_CLEAR_SITE        := $(CONFIG_PK_NODE_CLEAR_URL)
PK_NODE_CLEAR_GITHUB      := $(CONFIG_PK_NODE_CLEAR_GITHUB)
PK_NODE_CLEAR_SUBNAME     :=
PK_NODE_CLEAR_BUILDARCH   := $(CONFIG_PK_NODE_CLEAR_BUILDARCH)
PK_NODE_CLEAR_DIR         := $(srctree)/package/nodemask/node_clear
PK_NODE_CLEAR_PATCH       := $(PK_NODE_CLEAR_DIR)/patch
PK_NODE_CLEAR_BSBIT       := node_clear-$(PK_NODE_CLEAR_VERSION).bsbit
PK_NODE_CLEAR_OUT         :=
PK_NODE_CLEAR_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODE_CLEAR_TAR         := $(CONFIG_PK_NODE_CLEAR_TAR)
PK_NODE_CLEAR_PACKAGE     :=
PK_NODE_CLEAR_CONFIG      := $(CONFIG_PK_NODE_CLEAR_CONFIG)
SUB_TARGET                  += $(PK_NODE_CLEAR_DIR)/build

PK_NODE_CLEAR_sh = $(CONFIG_SHELL) $(PK_NODE_CLEAR_SCRIPTS) \
                 $1X \
                 $(PK_NODE_CLEAR_NAME)X \
                 $(PK_NODE_CLEAR_VERSION)X \
                 $(PK_NODE_CLEAR_SITE)X \
                 $(PK_NODE_CLEAR_GITHUB)X \
                 $(PK_NODE_CLEAR_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODE_CLEAR_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODE_CLEAR_SUBNAME)X \
                 $(CONFIG_PK_NODE_CLEAR_CONFIG)X \
                 $(CONFIG_PK_NODE_CLEAR_LIBPATH)X \
                 $(CONFIG_PK_NODE_CLEAR_CPPFLAGS)X \
                 $(CONFIG_PK_NODE_CLEAR_DPKCONFIG)X \
                 $(CONFIG_PK_NODE_CLEAR_CFLAGS)X \
                 $(CONFIG_PK_NODE_CLEAR_LDFLAGS)X \
                 $(CONFIG_PK_NODE_CLEAR_CXXFLAGS)X \
                 $(CONFIG_PK_NODE_CLEAR_ASFLAGS)X \
                 $(PK_NODE_CLEAR_BSBIT)X \
                 $(PK_NODE_CLEAR_BUILDARCH)X \
		 $(PK_NODE_CLEAR_CSRCFILE)X \
                 $(CONFIG_PK_NODE_CLEAR_SRCFILE)X \
                 $(CONFIG_PK_NODE_CLEAR_CSRCFILE)

$(PK_NODE_CLEAR_DIR)/build: FORCE
	$(Q)$(call PK_NODE_CLEAR_sh,$(srctree))
