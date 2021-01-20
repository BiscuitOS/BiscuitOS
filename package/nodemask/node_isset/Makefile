################################################
#
# node_isset
#
################################################
PK_NODE_ISSET_NAME        := node_isset
PK_NODE_ISSET_VERSION     := $(CONFIG_PK_NODE_ISSET_VERSION)
PK_NODE_ISSET_SITE        := $(CONFIG_PK_NODE_ISSET_URL)
PK_NODE_ISSET_GITHUB      := $(CONFIG_PK_NODE_ISSET_GITHUB)
PK_NODE_ISSET_SUBNAME     :=
PK_NODE_ISSET_BUILDARCH   := $(CONFIG_PK_NODE_ISSET_BUILDARCH)
PK_NODE_ISSET_DIR         := $(srctree)/package/nodemask/node_isset
PK_NODE_ISSET_PATCH       := $(PK_NODE_ISSET_DIR)/patch
PK_NODE_ISSET_BSBIT       := node_isset-$(PK_NODE_ISSET_VERSION).bsbit
PK_NODE_ISSET_OUT         :=
PK_NODE_ISSET_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODE_ISSET_TAR         := $(CONFIG_PK_NODE_ISSET_TAR)
PK_NODE_ISSET_PACKAGE     :=
PK_NODE_ISSET_CONFIG      := $(CONFIG_PK_NODE_ISSET_CONFIG)
SUB_TARGET                  += $(PK_NODE_ISSET_DIR)/build

PK_NODE_ISSET_sh = $(CONFIG_SHELL) $(PK_NODE_ISSET_SCRIPTS) \
                 $1X \
                 $(PK_NODE_ISSET_NAME)X \
                 $(PK_NODE_ISSET_VERSION)X \
                 $(PK_NODE_ISSET_SITE)X \
                 $(PK_NODE_ISSET_GITHUB)X \
                 $(PK_NODE_ISSET_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODE_ISSET_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODE_ISSET_SUBNAME)X \
                 $(CONFIG_PK_NODE_ISSET_CONFIG)X \
                 $(CONFIG_PK_NODE_ISSET_LIBPATH)X \
                 $(CONFIG_PK_NODE_ISSET_CPPFLAGS)X \
                 $(CONFIG_PK_NODE_ISSET_DPKCONFIG)X \
                 $(CONFIG_PK_NODE_ISSET_CFLAGS)X \
                 $(CONFIG_PK_NODE_ISSET_LDFLAGS)X \
                 $(CONFIG_PK_NODE_ISSET_CXXFLAGS)X \
                 $(CONFIG_PK_NODE_ISSET_ASFLAGS)X \
                 $(PK_NODE_ISSET_BSBIT)X \
                 $(PK_NODE_ISSET_BUILDARCH)X \
		 $(PK_NODE_ISSET_CSRCFILE)X \
                 $(CONFIG_PK_NODE_ISSET_SRCFILE)X \
                 $(CONFIG_PK_NODE_ISSET_CSRCFILE)

$(PK_NODE_ISSET_DIR)/build: FORCE
	$(Q)$(call PK_NODE_ISSET_sh,$(srctree))
