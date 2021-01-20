################################################
#
# nodes_andnot
#
################################################
PK_NODES_ANDNOT_NAME        := nodes_andnot
PK_NODES_ANDNOT_VERSION     := $(CONFIG_PK_NODES_ANDNOT_VERSION)
PK_NODES_ANDNOT_SITE        := $(CONFIG_PK_NODES_ANDNOT_URL)
PK_NODES_ANDNOT_GITHUB      := $(CONFIG_PK_NODES_ANDNOT_GITHUB)
PK_NODES_ANDNOT_SUBNAME     :=
PK_NODES_ANDNOT_BUILDARCH   := $(CONFIG_PK_NODES_ANDNOT_BUILDARCH)
PK_NODES_ANDNOT_DIR         := $(srctree)/package/nodemask/nodes_andnot
PK_NODES_ANDNOT_PATCH       := $(PK_NODES_ANDNOT_DIR)/patch
PK_NODES_ANDNOT_BSBIT       := nodes_andnot-$(PK_NODES_ANDNOT_VERSION).bsbit
PK_NODES_ANDNOT_OUT         :=
PK_NODES_ANDNOT_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODES_ANDNOT_TAR         := $(CONFIG_PK_NODES_ANDNOT_TAR)
PK_NODES_ANDNOT_PACKAGE     :=
PK_NODES_ANDNOT_CONFIG      := $(CONFIG_PK_NODES_ANDNOT_CONFIG)
SUB_TARGET                  += $(PK_NODES_ANDNOT_DIR)/build

PK_NODES_ANDNOT_sh = $(CONFIG_SHELL) $(PK_NODES_ANDNOT_SCRIPTS) \
                 $1X \
                 $(PK_NODES_ANDNOT_NAME)X \
                 $(PK_NODES_ANDNOT_VERSION)X \
                 $(PK_NODES_ANDNOT_SITE)X \
                 $(PK_NODES_ANDNOT_GITHUB)X \
                 $(PK_NODES_ANDNOT_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODES_ANDNOT_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODES_ANDNOT_SUBNAME)X \
                 $(CONFIG_PK_NODES_ANDNOT_CONFIG)X \
                 $(CONFIG_PK_NODES_ANDNOT_LIBPATH)X \
                 $(CONFIG_PK_NODES_ANDNOT_CPPFLAGS)X \
                 $(CONFIG_PK_NODES_ANDNOT_DPKCONFIG)X \
                 $(CONFIG_PK_NODES_ANDNOT_CFLAGS)X \
                 $(CONFIG_PK_NODES_ANDNOT_LDFLAGS)X \
                 $(CONFIG_PK_NODES_ANDNOT_CXXFLAGS)X \
                 $(CONFIG_PK_NODES_ANDNOT_ASFLAGS)X \
                 $(PK_NODES_ANDNOT_BSBIT)X \
                 $(PK_NODES_ANDNOT_BUILDARCH)X \
		 $(PK_NODES_ANDNOT_CSRCFILE)X \
                 $(CONFIG_PK_NODES_ANDNOT_SRCFILE)X \
                 $(CONFIG_PK_NODES_ANDNOT_CSRCFILE)

$(PK_NODES_ANDNOT_DIR)/build: FORCE
	$(Q)$(call PK_NODES_ANDNOT_sh,$(srctree))
