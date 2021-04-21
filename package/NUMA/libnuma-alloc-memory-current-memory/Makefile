################################################
#
# libnuma-alloc-memory-current-memory
#
################################################
PK_LIBNUMA_ALLOC_CUR_NAME        := libnuma-alloc-memory-current-memory
PK_LIBNUMA_ALLOC_CUR_VERSION     := $(CONFIG_PK_LIBNUMA_ALLOC_CUR_VERSION)
PK_LIBNUMA_ALLOC_CUR_SITE        := $(CONFIG_PK_LIBNUMA_ALLOC_CUR_URL)
PK_LIBNUMA_ALLOC_CUR_GITHUB      := $(CONFIG_PK_LIBNUMA_ALLOC_CUR_GITHUB)
PK_LIBNUMA_ALLOC_CUR_SUBNAME     :=
PK_LIBNUMA_ALLOC_CUR_BUILDARCH   := $(CONFIG_PK_LIBNUMA_ALLOC_CUR_BUILDARCH)
PK_LIBNUMA_ALLOC_CUR_DIR         := $(srctree)/package/NUMA/libnuma-alloc-memory-current-memory
PK_LIBNUMA_ALLOC_CUR_PATCH       := $(PK_LIBNUMA_ALLOC_CUR_DIR)/patch
PK_LIBNUMA_ALLOC_CUR_BSBIT       := libnuma-alloc-memory-current-memory-$(PK_LIBNUMA_ALLOC_CUR_VERSION).bsbit
PK_LIBNUMA_ALLOC_CUR_OUT         :=
PK_LIBNUMA_ALLOC_CUR_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_LIBNUMA_ALLOC_CUR_TAR         := $(CONFIG_PK_LIBNUMA_ALLOC_CUR_TAR)
PK_LIBNUMA_ALLOC_CUR_PACKAGE     :=
PK_LIBNUMA_ALLOC_CUR_CONFIG      := $(CONFIG_PK_LIBNUMA_ALLOC_CUR_CONFIG)
SUB_TARGET                  += $(PK_LIBNUMA_ALLOC_CUR_DIR)/build

PK_LIBNUMA_ALLOC_CUR_sh = $(CONFIG_SHELL) $(PK_LIBNUMA_ALLOC_CUR_SCRIPTS) \
                 $1X \
                 $(PK_LIBNUMA_ALLOC_CUR_NAME)X \
                 $(PK_LIBNUMA_ALLOC_CUR_VERSION)X \
                 $(PK_LIBNUMA_ALLOC_CUR_SITE)X \
                 $(PK_LIBNUMA_ALLOC_CUR_GITHUB)X \
                 $(PK_LIBNUMA_ALLOC_CUR_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBNUMA_ALLOC_CUR_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBNUMA_ALLOC_CUR_SUBNAME)X \
                 $(CONFIG_PK_LIBNUMA_ALLOC_CUR_CONFIG)X \
                 $(CONFIG_PK_LIBNUMA_ALLOC_CUR_LIBPATH)X \
                 $(CONFIG_PK_LIBNUMA_ALLOC_CUR_CPPFLAGS)X \
                 $(CONFIG_PK_LIBNUMA_ALLOC_CUR_DPKCONFIG)X \
                 $(CONFIG_PK_LIBNUMA_ALLOC_CUR_CFLAGS)X \
                 $(CONFIG_PK_LIBNUMA_ALLOC_CUR_LDFLAGS)X \
                 $(CONFIG_PK_LIBNUMA_ALLOC_CUR_CXXFLAGS)X \
                 $(CONFIG_PK_LIBNUMA_ALLOC_CUR_ASFLAGS)X \
                 $(PK_LIBNUMA_ALLOC_CUR_BSBIT)X \
                 $(PK_LIBNUMA_ALLOC_CUR_BUILDARCH)X \
		 $(PK_LIBNUMA_ALLOC_CUR_CSRCFILE)X \
                 $(CONFIG_PK_LIBNUMA_ALLOC_CUR_SRCFILE)X \
                 $(CONFIG_PK_LIBNUMA_ALLOC_CUR_CSRCFILE)

$(PK_LIBNUMA_ALLOC_CUR_DIR)/build: FORCE
	$(Q)$(call PK_LIBNUMA_ALLOC_CUR_sh,$(srctree))
