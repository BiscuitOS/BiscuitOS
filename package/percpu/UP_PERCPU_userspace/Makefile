################################################
#
# PERCPU(UP) Allocator Userspace
#
################################################
PK_UP_PERCPU_USERSPACE_NAME        := UP_PERCPU_userspace
PK_UP_PERCPU_USERSPACE_VERSION     := $(CONFIG_PK_UP_PERCPU_USERSPACE_VERSION)
PK_UP_PERCPU_USERSPACE_SITE        := $(CONFIG_PK_UP_PERCPU_USERSPACE_URL)
PK_UP_PERCPU_USERSPACE_GITHUB      := $(CONFIG_PK_UP_PERCPU_USERSPACE_GITHUB)
PK_UP_PERCPU_USERSPACE_SUBNAME     :=
PK_UP_PERCPU_USERSPACE_BUILDARCH   := $(CONFIG_PK_UP_PERCPU_USERSPACE_BUILDARCH)
PK_UP_PERCPU_USERSPACE_DIR         := $(srctree)/package/percpu/UP_PERCPU_userspace
PK_UP_PERCPU_USERSPACE_PATCH       := $(PK_UP_PERCPU_USERSPACE_DIR)/patch
PK_UP_PERCPU_USERSPACE_BSBIT       := UP_PERCPU_userspace-$(PK_UP_PERCPU_USERSPACE_VERSION).bsbit
PK_UP_PERCPU_USERSPACE_OUT         :=
PK_UP_PERCPU_USERSPACE_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_UP_PERCPU_USERSPACE_TAR         := $(CONFIG_PK_UP_PERCPU_USERSPACE_TAR)
PK_UP_PERCPU_USERSPACE_PACKAGE     :=
PK_UP_PERCPU_USERSPACE_CONFIG      := $(CONFIG_PK_UP_PERCPU_USERSPACE_CONFIG)
SUB_TARGET                  += $(PK_UP_PERCPU_USERSPACE_DIR)/build

PK_UP_PERCPU_USERSPACE_sh = $(CONFIG_SHELL) $(PK_UP_PERCPU_USERSPACE_SCRIPTS) \
                 $1X \
                 $(PK_UP_PERCPU_USERSPACE_NAME)X \
                 $(PK_UP_PERCPU_USERSPACE_VERSION)X \
                 $(PK_UP_PERCPU_USERSPACE_SITE)X \
                 $(PK_UP_PERCPU_USERSPACE_GITHUB)X \
                 $(PK_UP_PERCPU_USERSPACE_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_UP_PERCPU_USERSPACE_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_UP_PERCPU_USERSPACE_SUBNAME)X \
                 $(CONFIG_PK_UP_PERCPU_USERSPACE_CONFIG)X \
                 $(CONFIG_PK_UP_PERCPU_USERSPACE_LIBPATH)X \
                 $(CONFIG_PK_UP_PERCPU_USERSPACE_CPPFLAGS)X \
                 $(CONFIG_PK_UP_PERCPU_USERSPACE_DPKCONFIG)X \
                 $(CONFIG_PK_UP_PERCPU_USERSPACE_CFLAGS)X \
                 $(CONFIG_PK_UP_PERCPU_USERSPACE_LDFLAGS)X \
                 $(CONFIG_PK_UP_PERCPU_USERSPACE_CXXFLAGS)X \
                 $(CONFIG_PK_UP_PERCPU_USERSPACE_ASFLAGS)X \
                 $(PK_UP_PERCPU_USERSPACE_BSBIT)X \
                 $(PK_UP_PERCPU_USERSPACE_BUILDARCH)X \
		 $(PK_UP_PERCPU_USERSPACE_CSRCFILE)X \
                 $(CONFIG_PK_UP_PERCPU_USERSPACE_SRCFILE)X \
                 $(CONFIG_PK_UP_PERCPU_USERSPACE_CSRCFILE)

$(PK_UP_PERCPU_USERSPACE_DIR)/build: FORCE
	$(Q)$(call PK_UP_PERCPU_USERSPACE_sh,$(srctree))
