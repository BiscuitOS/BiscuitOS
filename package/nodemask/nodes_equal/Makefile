################################################
#
# nodes_equal
#
################################################
PK_NODES_EQUAL_NAME        := nodes_equal
PK_NODES_EQUAL_VERSION     := $(CONFIG_PK_NODES_EQUAL_VERSION)
PK_NODES_EQUAL_SITE        := $(CONFIG_PK_NODES_EQUAL_URL)
PK_NODES_EQUAL_GITHUB      := $(CONFIG_PK_NODES_EQUAL_GITHUB)
PK_NODES_EQUAL_SUBNAME     :=
PK_NODES_EQUAL_BUILDARCH   := $(CONFIG_PK_NODES_EQUAL_BUILDARCH)
PK_NODES_EQUAL_DIR         := $(srctree)/package/nodemask/nodes_equal
PK_NODES_EQUAL_PATCH       := $(PK_NODES_EQUAL_DIR)/patch
PK_NODES_EQUAL_BSBIT       := nodes_equal-$(PK_NODES_EQUAL_VERSION).bsbit
PK_NODES_EQUAL_OUT         :=
PK_NODES_EQUAL_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODES_EQUAL_TAR         := $(CONFIG_PK_NODES_EQUAL_TAR)
PK_NODES_EQUAL_PACKAGE     :=
PK_NODES_EQUAL_CONFIG      := $(CONFIG_PK_NODES_EQUAL_CONFIG)
SUB_TARGET                  += $(PK_NODES_EQUAL_DIR)/build

PK_NODES_EQUAL_sh = $(CONFIG_SHELL) $(PK_NODES_EQUAL_SCRIPTS) \
                 $1X \
                 $(PK_NODES_EQUAL_NAME)X \
                 $(PK_NODES_EQUAL_VERSION)X \
                 $(PK_NODES_EQUAL_SITE)X \
                 $(PK_NODES_EQUAL_GITHUB)X \
                 $(PK_NODES_EQUAL_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODES_EQUAL_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODES_EQUAL_SUBNAME)X \
                 $(CONFIG_PK_NODES_EQUAL_CONFIG)X \
                 $(CONFIG_PK_NODES_EQUAL_LIBPATH)X \
                 $(CONFIG_PK_NODES_EQUAL_CPPFLAGS)X \
                 $(CONFIG_PK_NODES_EQUAL_DPKCONFIG)X \
                 $(CONFIG_PK_NODES_EQUAL_CFLAGS)X \
                 $(CONFIG_PK_NODES_EQUAL_LDFLAGS)X \
                 $(CONFIG_PK_NODES_EQUAL_CXXFLAGS)X \
                 $(CONFIG_PK_NODES_EQUAL_ASFLAGS)X \
                 $(PK_NODES_EQUAL_BSBIT)X \
                 $(PK_NODES_EQUAL_BUILDARCH)X \
		 $(PK_NODES_EQUAL_CSRCFILE)X \
                 $(CONFIG_PK_NODES_EQUAL_SRCFILE)X \
                 $(CONFIG_PK_NODES_EQUAL_CSRCFILE)

$(PK_NODES_EQUAL_DIR)/build: FORCE
	$(Q)$(call PK_NODES_EQUAL_sh,$(srctree))
