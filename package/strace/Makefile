################################################
#
# strace
#
################################################
PK_STRACE_NAME        := strace
PK_STRACE_VERSION     := $(CONFIG_PK_STRACE_VERSION)
PK_STRACE_SITE        := $(CONFIG_PK_STRACE_URL)
PK_STRACE_GITHUB      := $(CONFIG_PK_STRACE_GITHUB)
PK_STRACE_SUBNAME     :=
PK_STRACE_BUILDARCH   := $(CONFIG_PK_STRACE_BUILDARCH)
PK_STRACE_DIR         := $(srctree)/package/strace
PK_STRACE_PATCH       := $(PK_STRACE_DIR)/patch
PK_STRACE_BSBIT       := strace-$(PK_STRACE_VERSION).bsbit
PK_STRACE_OUT         :=
PK_STRACE_SCRIPTS     := $(srctree)/scripts/package/package.sh
PK_STRACE_TAR         := $(CONFIG_PK_STRACE_TAR)
PK_STRACE_PACKAGE     :=
PK_STRACE_CONFIG      := $(CONFIG_PK_STRACE_CONFIG)
SUB_TARGET            += $(PK_STRACE_DIR)/build

PK_STRACE_sh = $(CONFIG_SHELL) $(PK_STRACE_SCRIPTS) \
                 $1X \
                 $(PK_STRACE_NAME)X \
                 $(PK_STRACE_VERSION)X \
                 $(PK_STRACE_SITE)X \
                 $(PK_STRACE_GITHUB)X \
                 $(PK_STRACE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_STRACE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_STRACE_SUBNAME)X \
                 $(CONFIG_PK_STRACE_CONFIG)X \
                 $(CONFIG_PK_STRACE_LIBPATH)X \
                 $(CONFIG_PK_STRACE_CPPFLAGS)X \
                 $(CONFIG_PK_STRACE_DPKCONFIG)X \
                 $(CONFIG_PK_STRACE_CFLAGS)X \
                 $(CONFIG_PK_STRACE_LDFLAGS)X \
                 $(CONFIG_PK_STRACE_CXXFLAGS)X \
                 $(CONFIG_PK_STRACE_ASFLAGS)X \
                 $(PK_STRACE_BSBIT)X \
                 $(PK_STRACE_BUILDARCH)X

$(PK_STRACE_DIR)/build: FORCE
	$(Q)$(call PK_STRACE_sh,$(srctree))
