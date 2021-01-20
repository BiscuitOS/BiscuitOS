################################################
#
# nodes_and
#
################################################
PK_NODES_AND_NAME        := nodes_and
PK_NODES_AND_VERSION     := $(CONFIG_PK_NODES_AND_VERSION)
PK_NODES_AND_SITE        := $(CONFIG_PK_NODES_AND_URL)
PK_NODES_AND_GITHUB      := $(CONFIG_PK_NODES_AND_GITHUB)
PK_NODES_AND_SUBNAME     :=
PK_NODES_AND_BUILDARCH   := $(CONFIG_PK_NODES_AND_BUILDARCH)
PK_NODES_AND_DIR         := $(srctree)/package/nodemask/nodes_and
PK_NODES_AND_PATCH       := $(PK_NODES_AND_DIR)/patch
PK_NODES_AND_BSBIT       := nodes_and-$(PK_NODES_AND_VERSION).bsbit
PK_NODES_AND_OUT         :=
PK_NODES_AND_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODES_AND_TAR         := $(CONFIG_PK_NODES_AND_TAR)
PK_NODES_AND_PACKAGE     :=
PK_NODES_AND_CONFIG      := $(CONFIG_PK_NODES_AND_CONFIG)
SUB_TARGET                  += $(PK_NODES_AND_DIR)/build

PK_NODES_AND_sh = $(CONFIG_SHELL) $(PK_NODES_AND_SCRIPTS) \
                 $1X \
                 $(PK_NODES_AND_NAME)X \
                 $(PK_NODES_AND_VERSION)X \
                 $(PK_NODES_AND_SITE)X \
                 $(PK_NODES_AND_GITHUB)X \
                 $(PK_NODES_AND_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODES_AND_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODES_AND_SUBNAME)X \
                 $(CONFIG_PK_NODES_AND_CONFIG)X \
                 $(CONFIG_PK_NODES_AND_LIBPATH)X \
                 $(CONFIG_PK_NODES_AND_CPPFLAGS)X \
                 $(CONFIG_PK_NODES_AND_DPKCONFIG)X \
                 $(CONFIG_PK_NODES_AND_CFLAGS)X \
                 $(CONFIG_PK_NODES_AND_LDFLAGS)X \
                 $(CONFIG_PK_NODES_AND_CXXFLAGS)X \
                 $(CONFIG_PK_NODES_AND_ASFLAGS)X \
                 $(PK_NODES_AND_BSBIT)X \
                 $(PK_NODES_AND_BUILDARCH)X \
		 $(PK_NODES_AND_CSRCFILE)X \
                 $(CONFIG_PK_NODES_AND_SRCFILE)X \
                 $(CONFIG_PK_NODES_AND_CSRCFILE)

$(PK_NODES_AND_DIR)/build: FORCE
	$(Q)$(call PK_NODES_AND_sh,$(srctree))
