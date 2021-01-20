################################################
#
# first_node
#
################################################
PK_FIRST_NODE_NAME        := first_node
PK_FIRST_NODE_VERSION     := $(CONFIG_PK_FIRST_NODE_VERSION)
PK_FIRST_NODE_SITE        := $(CONFIG_PK_FIRST_NODE_URL)
PK_FIRST_NODE_GITHUB      := $(CONFIG_PK_FIRST_NODE_GITHUB)
PK_FIRST_NODE_SUBNAME     :=
PK_FIRST_NODE_BUILDARCH   := $(CONFIG_PK_FIRST_NODE_BUILDARCH)
PK_FIRST_NODE_DIR         := $(srctree)/package/nodemask/first_node
PK_FIRST_NODE_PATCH       := $(PK_FIRST_NODE_DIR)/patch
PK_FIRST_NODE_BSBIT       := first_node-$(PK_FIRST_NODE_VERSION).bsbit
PK_FIRST_NODE_OUT         :=
PK_FIRST_NODE_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_FIRST_NODE_TAR         := $(CONFIG_PK_FIRST_NODE_TAR)
PK_FIRST_NODE_PACKAGE     :=
PK_FIRST_NODE_CONFIG      := $(CONFIG_PK_FIRST_NODE_CONFIG)
SUB_TARGET                  += $(PK_FIRST_NODE_DIR)/build

PK_FIRST_NODE_sh = $(CONFIG_SHELL) $(PK_FIRST_NODE_SCRIPTS) \
                 $1X \
                 $(PK_FIRST_NODE_NAME)X \
                 $(PK_FIRST_NODE_VERSION)X \
                 $(PK_FIRST_NODE_SITE)X \
                 $(PK_FIRST_NODE_GITHUB)X \
                 $(PK_FIRST_NODE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_FIRST_NODE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_FIRST_NODE_SUBNAME)X \
                 $(CONFIG_PK_FIRST_NODE_CONFIG)X \
                 $(CONFIG_PK_FIRST_NODE_LIBPATH)X \
                 $(CONFIG_PK_FIRST_NODE_CPPFLAGS)X \
                 $(CONFIG_PK_FIRST_NODE_DPKCONFIG)X \
                 $(CONFIG_PK_FIRST_NODE_CFLAGS)X \
                 $(CONFIG_PK_FIRST_NODE_LDFLAGS)X \
                 $(CONFIG_PK_FIRST_NODE_CXXFLAGS)X \
                 $(CONFIG_PK_FIRST_NODE_ASFLAGS)X \
                 $(PK_FIRST_NODE_BSBIT)X \
                 $(PK_FIRST_NODE_BUILDARCH)X \
		 $(PK_FIRST_NODE_CSRCFILE)X \
                 $(CONFIG_PK_FIRST_NODE_SRCFILE)X \
                 $(CONFIG_PK_FIRST_NODE_CSRCFILE)

$(PK_FIRST_NODE_DIR)/build: FORCE
	$(Q)$(call PK_FIRST_NODE_sh,$(srctree))
