################################################
#
# nodes_shift_left
#
################################################
PK_NODES_SHIFT_LEFT_NAME        := nodes_shift_left
PK_NODES_SHIFT_LEFT_VERSION     := $(CONFIG_PK_NODES_SHIFT_LEFT_VERSION)
PK_NODES_SHIFT_LEFT_SITE        := $(CONFIG_PK_NODES_SHIFT_LEFT_URL)
PK_NODES_SHIFT_LEFT_GITHUB      := $(CONFIG_PK_NODES_SHIFT_LEFT_GITHUB)
PK_NODES_SHIFT_LEFT_SUBNAME     :=
PK_NODES_SHIFT_LEFT_BUILDARCH   := $(CONFIG_PK_NODES_SHIFT_LEFT_BUILDARCH)
PK_NODES_SHIFT_LEFT_DIR         := $(srctree)/package/nodemask/nodes_shift_left
PK_NODES_SHIFT_LEFT_PATCH       := $(PK_NODES_SHIFT_LEFT_DIR)/patch
PK_NODES_SHIFT_LEFT_BSBIT       := nodes_shift_left-$(PK_NODES_SHIFT_LEFT_VERSION).bsbit
PK_NODES_SHIFT_LEFT_OUT         :=
PK_NODES_SHIFT_LEFT_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_NODES_SHIFT_LEFT_TAR         := $(CONFIG_PK_NODES_SHIFT_LEFT_TAR)
PK_NODES_SHIFT_LEFT_PACKAGE     :=
PK_NODES_SHIFT_LEFT_CONFIG      := $(CONFIG_PK_NODES_SHIFT_LEFT_CONFIG)
SUB_TARGET                  += $(PK_NODES_SHIFT_LEFT_DIR)/build

PK_NODES_SHIFT_LEFT_sh = $(CONFIG_SHELL) $(PK_NODES_SHIFT_LEFT_SCRIPTS) \
                 $1X \
                 $(PK_NODES_SHIFT_LEFT_NAME)X \
                 $(PK_NODES_SHIFT_LEFT_VERSION)X \
                 $(PK_NODES_SHIFT_LEFT_SITE)X \
                 $(PK_NODES_SHIFT_LEFT_GITHUB)X \
                 $(PK_NODES_SHIFT_LEFT_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_NODES_SHIFT_LEFT_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_NODES_SHIFT_LEFT_SUBNAME)X \
                 $(CONFIG_PK_NODES_SHIFT_LEFT_CONFIG)X \
                 $(CONFIG_PK_NODES_SHIFT_LEFT_LIBPATH)X \
                 $(CONFIG_PK_NODES_SHIFT_LEFT_CPPFLAGS)X \
                 $(CONFIG_PK_NODES_SHIFT_LEFT_DPKCONFIG)X \
                 $(CONFIG_PK_NODES_SHIFT_LEFT_CFLAGS)X \
                 $(CONFIG_PK_NODES_SHIFT_LEFT_LDFLAGS)X \
                 $(CONFIG_PK_NODES_SHIFT_LEFT_CXXFLAGS)X \
                 $(CONFIG_PK_NODES_SHIFT_LEFT_ASFLAGS)X \
                 $(PK_NODES_SHIFT_LEFT_BSBIT)X \
                 $(PK_NODES_SHIFT_LEFT_BUILDARCH)X \
		 $(PK_NODES_SHIFT_LEFT_CSRCFILE)X \
                 $(CONFIG_PK_NODES_SHIFT_LEFT_SRCFILE)X \
                 $(CONFIG_PK_NODES_SHIFT_LEFT_CSRCFILE)

$(PK_NODES_SHIFT_LEFT_DIR)/build: FORCE
	$(Q)$(call PK_NODES_SHIFT_LEFT_sh,$(srctree))
