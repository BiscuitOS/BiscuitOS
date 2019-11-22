###############################################
#
# rbtree_app
#
################################################
PK_RBTREE_APP_NAME        := rbtree_app
PK_RBTREE_APP_VERSION     := $(CONFIG_PK_RBTREE_APP_VERSION)
PK_RBTREE_APP_SITE        := $(CONFIG_PK_RBTREE_APP_URL)
PK_RBTREE_APP_GITHUB      := $(CONFIG_PK_RBTREE_APP_GITHUB)
PK_RBTREE_APP_SUBNAME     :=
PK_RBTREE_APP_BUILDARCH   := $(CONFIG_PK_RBTREE_APP_BUILDARCH)
PK_RBTREE_APP_DIR         := $(srctree)/package/rbtree/rbtree_app
PK_RBTREE_APP_PATCH       := $(PK_RBTREE_APP_DIR)/patch
PK_RBTREE_APP_BSBIT       := rbtree_app-$(PK_RBTREE_APP_VERSION).bsbit
PK_RBTREE_APP_OUT         :=
PK_RBTREE_APP_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_RBTREE_APP_TAR         := $(CONFIG_PK_RBTREE_APP_TAR)
PK_RBTREE_APP_PACKAGE     :=
PK_RBTREE_APP_CONFIG      := $(CONFIG_PK_RBTREE_APP_CONFIG)
SUB_TARGET                  += $(PK_RBTREE_APP_DIR)/build

PK_RBTREE_APP_sh = $(CONFIG_SHELL) $(PK_RBTREE_APP_SCRIPTS) \
                 $1X \
                 $(PK_RBTREE_APP_NAME)X \
                 $(PK_RBTREE_APP_VERSION)X \
                 $(PK_RBTREE_APP_SITE)X \
                 $(PK_RBTREE_APP_GITHUB)X \
                 $(PK_RBTREE_APP_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_RBTREE_APP_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_RBTREE_APP_SUBNAME)X \
                 $(CONFIG_PK_RBTREE_APP_CONFIG)X \
                 $(CONFIG_PK_RBTREE_APP_LIBPATH)X \
                 $(CONFIG_PK_RBTREE_APP_CPPFLAGS)X \
                 $(CONFIG_PK_RBTREE_APP_DPKCONFIG)X \
                 $(CONFIG_PK_RBTREE_APP_CFLAGS)X \
                 $(CONFIG_PK_RBTREE_APP_LDFLAGS)X \
                 $(CONFIG_PK_RBTREE_APP_CXXFLAGS)X \
                 $(CONFIG_PK_RBTREE_APP_ASFLAGS)X \
                 $(PK_RBTREE_APP_BSBIT)X \
                 $(PK_RBTREE_APP_BUILDARCH)X \
		 $(PK_RBTREE_APP_CSRCFILE)X \
                 $(CONFIG_PK_RBTREE_APP_SRCFILE)X \
                 $(CONFIG_PK_RBTREE_APP_CSRCFILE)

$(PK_RBTREE_APP_DIR)/build: FORCE
	$(Q)$(call PK_RBTREE_APP_sh,$(srctree))
