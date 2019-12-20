################################################
#
# open_pathlen
#
################################################
PK_OPEN_PATHLEN_NAME        := open_pathlen
PK_OPEN_PATHLEN_VERSION     := $(CONFIG_PK_OPEN_PATHLEN_VERSION)
PK_OPEN_PATHLEN_SITE        := $(CONFIG_PK_OPEN_PATHLEN_URL)
PK_OPEN_PATHLEN_GITHUB      := $(CONFIG_PK_OPEN_PATHLEN_GITHUB)
PK_OPEN_PATHLEN_SUBNAME     :=
PK_OPEN_PATHLEN_BUILDARCH   := $(CONFIG_PK_OPEN_PATHLEN_BUILDARCH)
PK_OPEN_PATHLEN_DIR         := $(srctree)/package/syscall/open/open_pathlen
PK_OPEN_PATHLEN_PATCH       := $(PK_OPEN_PATHLEN_DIR)/patch
PK_OPEN_PATHLEN_BSBIT       := open_pathlen-$(PK_OPEN_PATHLEN_VERSION).bsbit
PK_OPEN_PATHLEN_OUT         :=
PK_OPEN_PATHLEN_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_OPEN_PATHLEN_TAR         := $(CONFIG_PK_OPEN_PATHLEN_TAR)
PK_OPEN_PATHLEN_PACKAGE     :=
PK_OPEN_PATHLEN_CONFIG      := $(CONFIG_PK_OPEN_PATHLEN_CONFIG)
SUB_TARGET                  += $(PK_OPEN_PATHLEN_DIR)/build

PK_OPEN_PATHLEN_sh = $(CONFIG_SHELL) $(PK_OPEN_PATHLEN_SCRIPTS) \
                 $1X \
                 $(PK_OPEN_PATHLEN_NAME)X \
                 $(PK_OPEN_PATHLEN_VERSION)X \
                 $(PK_OPEN_PATHLEN_SITE)X \
                 $(PK_OPEN_PATHLEN_GITHUB)X \
                 $(PK_OPEN_PATHLEN_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_OPEN_PATHLEN_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_OPEN_PATHLEN_SUBNAME)X \
                 $(CONFIG_PK_OPEN_PATHLEN_CONFIG)X \
                 $(CONFIG_PK_OPEN_PATHLEN_LIBPATH)X \
                 $(CONFIG_PK_OPEN_PATHLEN_CPPFLAGS)X \
                 $(CONFIG_PK_OPEN_PATHLEN_DPKCONFIG)X \
                 $(CONFIG_PK_OPEN_PATHLEN_CFLAGS)X \
                 $(CONFIG_PK_OPEN_PATHLEN_LDFLAGS)X \
                 $(CONFIG_PK_OPEN_PATHLEN_CXXFLAGS)X \
                 $(CONFIG_PK_OPEN_PATHLEN_ASFLAGS)X \
                 $(PK_OPEN_PATHLEN_BSBIT)X \
                 $(PK_OPEN_PATHLEN_BUILDARCH)X \
		 $(PK_OPEN_PATHLEN_CSRCFILE)X \
                 $(CONFIG_PK_OPEN_PATHLEN_SRCFILE)X \
                 $(CONFIG_PK_OPEN_PATHLEN_CSRCFILE)

$(PK_OPEN_PATHLEN_DIR)/build: FORCE
	$(Q)$(call PK_OPEN_PATHLEN_sh,$(srctree))
