################################################
#
# open_flags
#
################################################
PK_OPEN_FLAGS_NAME        := open_flags
PK_OPEN_FLAGS_VERSION     := $(CONFIG_PK_OPEN_FLAGS_VERSION)
PK_OPEN_FLAGS_SITE        := $(CONFIG_PK_OPEN_FLAGS_URL)
PK_OPEN_FLAGS_GITHUB      := $(CONFIG_PK_OPEN_FLAGS_GITHUB)
PK_OPEN_FLAGS_SUBNAME     :=
PK_OPEN_FLAGS_BUILDARCH   := $(CONFIG_PK_OPEN_FLAGS_BUILDARCH)
PK_OPEN_FLAGS_DIR         := $(srctree)/package/syscall/open/open_flags
PK_OPEN_FLAGS_PATCH       := $(PK_OPEN_FLAGS_DIR)/patch
PK_OPEN_FLAGS_BSBIT       := open_flags-$(PK_OPEN_FLAGS_VERSION).bsbit
PK_OPEN_FLAGS_OUT         :=
PK_OPEN_FLAGS_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_OPEN_FLAGS_TAR         := $(CONFIG_PK_OPEN_FLAGS_TAR)
PK_OPEN_FLAGS_PACKAGE     :=
PK_OPEN_FLAGS_CONFIG      := $(CONFIG_PK_OPEN_FLAGS_CONFIG)
SUB_TARGET                  += $(PK_OPEN_FLAGS_DIR)/build

PK_OPEN_FLAGS_sh = $(CONFIG_SHELL) $(PK_OPEN_FLAGS_SCRIPTS) \
                 $1X \
                 $(PK_OPEN_FLAGS_NAME)X \
                 $(PK_OPEN_FLAGS_VERSION)X \
                 $(PK_OPEN_FLAGS_SITE)X \
                 $(PK_OPEN_FLAGS_GITHUB)X \
                 $(PK_OPEN_FLAGS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_OPEN_FLAGS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_OPEN_FLAGS_SUBNAME)X \
                 $(CONFIG_PK_OPEN_FLAGS_CONFIG)X \
                 $(CONFIG_PK_OPEN_FLAGS_LIBPATH)X \
                 $(CONFIG_PK_OPEN_FLAGS_CPPFLAGS)X \
                 $(CONFIG_PK_OPEN_FLAGS_DPKCONFIG)X \
                 $(CONFIG_PK_OPEN_FLAGS_CFLAGS)X \
                 $(CONFIG_PK_OPEN_FLAGS_LDFLAGS)X \
                 $(CONFIG_PK_OPEN_FLAGS_CXXFLAGS)X \
                 $(CONFIG_PK_OPEN_FLAGS_ASFLAGS)X \
                 $(PK_OPEN_FLAGS_BSBIT)X \
                 $(PK_OPEN_FLAGS_BUILDARCH)X \
		 $(PK_OPEN_FLAGS_CSRCFILE)X \
                 $(CONFIG_PK_OPEN_FLAGS_SRCFILE)X \
                 $(CONFIG_PK_OPEN_FLAGS_CSRCFILE)

$(PK_OPEN_FLAGS_DIR)/build: FORCE
	$(Q)$(call PK_OPEN_FLAGS_sh,$(srctree))
