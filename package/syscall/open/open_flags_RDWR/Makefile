################################################
#
# open_flags_RDWR
#
################################################
PK_OPEN_FLAGS_RDWR_NAME        := open_flags_RDWR
PK_OPEN_FLAGS_RDWR_VERSION     := $(CONFIG_PK_OPEN_FLAGS_RDWR_VERSION)
PK_OPEN_FLAGS_RDWR_SITE        := $(CONFIG_PK_OPEN_FLAGS_RDWR_URL)
PK_OPEN_FLAGS_RDWR_GITHUB      := $(CONFIG_PK_OPEN_FLAGS_RDWR_GITHUB)
PK_OPEN_FLAGS_RDWR_SUBNAME     :=
PK_OPEN_FLAGS_RDWR_BUILDARCH   := $(CONFIG_PK_OPEN_FLAGS_RDWR_BUILDARCH)
PK_OPEN_FLAGS_RDWR_DIR         := $(srctree)/package/syscall/open/open_flags_RDWR
PK_OPEN_FLAGS_RDWR_PATCH       := $(PK_OPEN_FLAGS_RDWR_DIR)/patch
PK_OPEN_FLAGS_RDWR_BSBIT       := open_flags_RDWR-$(PK_OPEN_FLAGS_RDWR_VERSION).bsbit
PK_OPEN_FLAGS_RDWR_OUT         :=
PK_OPEN_FLAGS_RDWR_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_OPEN_FLAGS_RDWR_TAR         := $(CONFIG_PK_OPEN_FLAGS_RDWR_TAR)
PK_OPEN_FLAGS_RDWR_PACKAGE     :=
PK_OPEN_FLAGS_RDWR_CONFIG      := $(CONFIG_PK_OPEN_FLAGS_RDWR_CONFIG)
SUB_TARGET                  += $(PK_OPEN_FLAGS_RDWR_DIR)/build

PK_OPEN_FLAGS_RDWR_sh = $(CONFIG_SHELL) $(PK_OPEN_FLAGS_RDWR_SCRIPTS) \
                 $1X \
                 $(PK_OPEN_FLAGS_RDWR_NAME)X \
                 $(PK_OPEN_FLAGS_RDWR_VERSION)X \
                 $(PK_OPEN_FLAGS_RDWR_SITE)X \
                 $(PK_OPEN_FLAGS_RDWR_GITHUB)X \
                 $(PK_OPEN_FLAGS_RDWR_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_OPEN_FLAGS_RDWR_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_OPEN_FLAGS_RDWR_SUBNAME)X \
                 $(CONFIG_PK_OPEN_FLAGS_RDWR_CONFIG)X \
                 $(CONFIG_PK_OPEN_FLAGS_RDWR_LIBPATH)X \
                 $(CONFIG_PK_OPEN_FLAGS_RDWR_CPPFLAGS)X \
                 $(CONFIG_PK_OPEN_FLAGS_RDWR_DPKCONFIG)X \
                 $(CONFIG_PK_OPEN_FLAGS_RDWR_CFLAGS)X \
                 $(CONFIG_PK_OPEN_FLAGS_RDWR_LDFLAGS)X \
                 $(CONFIG_PK_OPEN_FLAGS_RDWR_CXXFLAGS)X \
                 $(CONFIG_PK_OPEN_FLAGS_RDWR_ASFLAGS)X \
                 $(PK_OPEN_FLAGS_RDWR_BSBIT)X \
                 $(PK_OPEN_FLAGS_RDWR_BUILDARCH)X \
		 $(PK_OPEN_FLAGS_RDWR_CSRCFILE)X \
                 $(CONFIG_PK_OPEN_FLAGS_RDWR_SRCFILE)X \
                 $(CONFIG_PK_OPEN_FLAGS_RDWR_CSRCFILE)

$(PK_OPEN_FLAGS_RDWR_DIR)/build: FORCE
	$(Q)$(call PK_OPEN_FLAGS_RDWR_sh,$(srctree))
