################################################
#
# nodes_xor
#
################################################
PK_NODES_XOR_NAME        := nodes_xor
PK_NODES_XOR_VERSION     := $(CONFIG_PK_NODES_XOR_VERSION)
PK_NODES_XOR_SITE        := $(CONFIG_PK_NODES_XOR_URL)
PK_NODES_XOR_GITHUB      := $(CONFIG_PK_NODES_XOR_GITHUB)
PK_NODES_XOR_SUBNAME     :=
PK_NODES_XOR_BUILDARCH   := $(CONFIG_PK_NODES_XOR_BUILDARCH)
PK_NODES_XOR_DIR         := $(srctree)/package/nodemask/nodes_xor
PK_NODES_XOR_PATCH       := $(PK_NODES_XOR_DIR)/patch
PK_NODES_XOR_BSBIT       := nodes_xor-$(PK_NODES_XOR_VERSION).bsbit
PK_NODES_XOR_OUT         :=
PK_NODES_XOR_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODES_XOR_TAR         := $(CONFIG_PK_NODES_XOR_TAR)
PK_NODES_XOR_PACKAGE     :=
PK_NODES_XOR_CONFIG      := $(CONFIG_PK_NODES_XOR_CONFIG)
SUB_TARGET                  += $(PK_NODES_XOR_DIR)/build

PK_NODES_XOR_sh = $(CONFIG_SHELL) $(PK_NODES_XOR_SCRIPTS) \
                 $1X \
                 $(PK_NODES_XOR_NAME)X \
                 $(PK_NODES_XOR_VERSION)X \
                 $(PK_NODES_XOR_SITE)X \
                 $(PK_NODES_XOR_GITHUB)X \
                 $(PK_NODES_XOR_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODES_XOR_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODES_XOR_SUBNAME)X \
                 $(CONFIG_PK_NODES_XOR_CONFIG)X \
                 $(CONFIG_PK_NODES_XOR_LIBPATH)X \
                 $(CONFIG_PK_NODES_XOR_CPPFLAGS)X \
                 $(CONFIG_PK_NODES_XOR_DPKCONFIG)X \
                 $(CONFIG_PK_NODES_XOR_CFLAGS)X \
                 $(CONFIG_PK_NODES_XOR_LDFLAGS)X \
                 $(CONFIG_PK_NODES_XOR_CXXFLAGS)X \
                 $(CONFIG_PK_NODES_XOR_ASFLAGS)X \
                 $(PK_NODES_XOR_BSBIT)X \
                 $(PK_NODES_XOR_BUILDARCH)X \
		 $(PK_NODES_XOR_CSRCFILE)X \
                 $(CONFIG_PK_NODES_XOR_SRCFILE)X \
                 $(CONFIG_PK_NODES_XOR_CSRCFILE)

$(PK_NODES_XOR_DIR)/build: FORCE
	$(Q)$(call PK_NODES_XOR_sh,$(srctree))
