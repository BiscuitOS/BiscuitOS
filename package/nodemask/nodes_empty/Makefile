################################################
#
# nodes_empty
#
################################################
PK_NODES_EMPTY_NAME        := nodes_empty
PK_NODES_EMPTY_VERSION     := $(CONFIG_PK_NODES_EMPTY_VERSION)
PK_NODES_EMPTY_SITE        := $(CONFIG_PK_NODES_EMPTY_URL)
PK_NODES_EMPTY_GITHUB      := $(CONFIG_PK_NODES_EMPTY_GITHUB)
PK_NODES_EMPTY_SUBNAME     :=
PK_NODES_EMPTY_BUILDARCH   := $(CONFIG_PK_NODES_EMPTY_BUILDARCH)
PK_NODES_EMPTY_DIR         := $(srctree)/package/nodemask/nodes_empty
PK_NODES_EMPTY_PATCH       := $(PK_NODES_EMPTY_DIR)/patch
PK_NODES_EMPTY_BSBIT       := nodes_empty-$(PK_NODES_EMPTY_VERSION).bsbit
PK_NODES_EMPTY_OUT         :=
PK_NODES_EMPTY_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODES_EMPTY_TAR         := $(CONFIG_PK_NODES_EMPTY_TAR)
PK_NODES_EMPTY_PACKAGE     :=
PK_NODES_EMPTY_CONFIG      := $(CONFIG_PK_NODES_EMPTY_CONFIG)
SUB_TARGET                  += $(PK_NODES_EMPTY_DIR)/build

PK_NODES_EMPTY_sh = $(CONFIG_SHELL) $(PK_NODES_EMPTY_SCRIPTS) \
                 $1X \
                 $(PK_NODES_EMPTY_NAME)X \
                 $(PK_NODES_EMPTY_VERSION)X \
                 $(PK_NODES_EMPTY_SITE)X \
                 $(PK_NODES_EMPTY_GITHUB)X \
                 $(PK_NODES_EMPTY_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODES_EMPTY_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODES_EMPTY_SUBNAME)X \
                 $(CONFIG_PK_NODES_EMPTY_CONFIG)X \
                 $(CONFIG_PK_NODES_EMPTY_LIBPATH)X \
                 $(CONFIG_PK_NODES_EMPTY_CPPFLAGS)X \
                 $(CONFIG_PK_NODES_EMPTY_DPKCONFIG)X \
                 $(CONFIG_PK_NODES_EMPTY_CFLAGS)X \
                 $(CONFIG_PK_NODES_EMPTY_LDFLAGS)X \
                 $(CONFIG_PK_NODES_EMPTY_CXXFLAGS)X \
                 $(CONFIG_PK_NODES_EMPTY_ASFLAGS)X \
                 $(PK_NODES_EMPTY_BSBIT)X \
                 $(PK_NODES_EMPTY_BUILDARCH)X \
		 $(PK_NODES_EMPTY_CSRCFILE)X \
                 $(CONFIG_PK_NODES_EMPTY_SRCFILE)X \
                 $(CONFIG_PK_NODES_EMPTY_CSRCFILE)

$(PK_NODES_EMPTY_DIR)/build: FORCE
	$(Q)$(call PK_NODES_EMPTY_sh,$(srctree))
