################################################
#
# for_each_node_mask
#
################################################
PK_FOR_EACH_NODE_MASK_NAME        := for_each_node_mask
PK_FOR_EACH_NODE_MASK_VERSION     := $(CONFIG_PK_FOR_EACH_NODE_MASK_VERSION)
PK_FOR_EACH_NODE_MASK_SITE        := $(CONFIG_PK_FOR_EACH_NODE_MASK_URL)
PK_FOR_EACH_NODE_MASK_GITHUB      := $(CONFIG_PK_FOR_EACH_NODE_MASK_GITHUB)
PK_FOR_EACH_NODE_MASK_SUBNAME     :=
PK_FOR_EACH_NODE_MASK_BUILDARCH   := $(CONFIG_PK_FOR_EACH_NODE_MASK_BUILDARCH)
PK_FOR_EACH_NODE_MASK_DIR         := $(srctree)/package/nodemask/for_each_node_mask
PK_FOR_EACH_NODE_MASK_PATCH       := $(PK_FOR_EACH_NODE_MASK_DIR)/patch
PK_FOR_EACH_NODE_MASK_BSBIT       := for_each_node_mask-$(PK_FOR_EACH_NODE_MASK_VERSION).bsbit
PK_FOR_EACH_NODE_MASK_OUT         :=
PK_FOR_EACH_NODE_MASK_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_FOR_EACH_NODE_MASK_TAR         := $(CONFIG_PK_FOR_EACH_NODE_MASK_TAR)
PK_FOR_EACH_NODE_MASK_PACKAGE     :=
PK_FOR_EACH_NODE_MASK_CONFIG      := $(CONFIG_PK_FOR_EACH_NODE_MASK_CONFIG)
SUB_TARGET                  += $(PK_FOR_EACH_NODE_MASK_DIR)/build

PK_FOR_EACH_NODE_MASK_sh = $(CONFIG_SHELL) $(PK_FOR_EACH_NODE_MASK_SCRIPTS) \
                 $1X \
                 $(PK_FOR_EACH_NODE_MASK_NAME)X \
                 $(PK_FOR_EACH_NODE_MASK_VERSION)X \
                 $(PK_FOR_EACH_NODE_MASK_SITE)X \
                 $(PK_FOR_EACH_NODE_MASK_GITHUB)X \
                 $(PK_FOR_EACH_NODE_MASK_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_FOR_EACH_NODE_MASK_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_FOR_EACH_NODE_MASK_SUBNAME)X \
                 $(CONFIG_PK_FOR_EACH_NODE_MASK_CONFIG)X \
                 $(CONFIG_PK_FOR_EACH_NODE_MASK_LIBPATH)X \
                 $(CONFIG_PK_FOR_EACH_NODE_MASK_CPPFLAGS)X \
                 $(CONFIG_PK_FOR_EACH_NODE_MASK_DPKCONFIG)X \
                 $(CONFIG_PK_FOR_EACH_NODE_MASK_CFLAGS)X \
                 $(CONFIG_PK_FOR_EACH_NODE_MASK_LDFLAGS)X \
                 $(CONFIG_PK_FOR_EACH_NODE_MASK_CXXFLAGS)X \
                 $(CONFIG_PK_FOR_EACH_NODE_MASK_ASFLAGS)X \
                 $(PK_FOR_EACH_NODE_MASK_BSBIT)X \
                 $(PK_FOR_EACH_NODE_MASK_BUILDARCH)X \
		 $(PK_FOR_EACH_NODE_MASK_CSRCFILE)X \
                 $(CONFIG_PK_FOR_EACH_NODE_MASK_SRCFILE)X \
                 $(CONFIG_PK_FOR_EACH_NODE_MASK_CSRCFILE)

$(PK_FOR_EACH_NODE_MASK_DIR)/build: FORCE
	$(Q)$(call PK_FOR_EACH_NODE_MASK_sh,$(srctree))
