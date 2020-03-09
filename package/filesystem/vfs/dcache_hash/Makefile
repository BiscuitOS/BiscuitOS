################################################
#
# dcache_hash
#
################################################
PK_DCACHE_HASH_NAME        := dcache_hash
PK_DCACHE_HASH_VERSION     := $(CONFIG_PK_DCACHE_HASH_VERSION)
PK_DCACHE_HASH_SITE        := $(CONFIG_PK_DCACHE_HASH_URL)
PK_DCACHE_HASH_GITHUB      := $(CONFIG_PK_DCACHE_HASH_GITHUB)
PK_DCACHE_HASH_SUBNAME     :=
PK_DCACHE_HASH_BUILDARCH   := $(CONFIG_PK_DCACHE_HASH_BUILDARCH)
PK_DCACHE_HASH_DIR         := $(srctree)/package/filesystem/vfs/dcache_hash
PK_DCACHE_HASH_PATCH       := $(PK_DCACHE_HASH_DIR)/patch
PK_DCACHE_HASH_BSBIT       := DCACHE_HASH-$(PK_DCACHE_HASH_VERSION).bsbit
PK_DCACHE_HASH_OUT         :=
PK_DCACHE_HASH_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_DCACHE_HASH_TAR         := $(CONFIG_PK_DCACHE_HASH_TAR)
PK_DCACHE_HASH_PACKAGE     :=
PK_DCACHE_HASH_CONFIG      := $(CONFIG_PK_DCACHE_HASH_CONFIG)
SUB_TARGET                  += $(PK_DCACHE_HASH_DIR)/build

PK_DCACHE_HASH_sh = $(CONFIG_SHELL) $(PK_DCACHE_HASH_SCRIPTS) \
                 $1X \
                 $(PK_DCACHE_HASH_NAME)X \
                 $(PK_DCACHE_HASH_VERSION)X \
                 $(PK_DCACHE_HASH_SITE)X \
                 $(PK_DCACHE_HASH_GITHUB)X \
                 $(PK_DCACHE_HASH_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_DCACHE_HASH_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_DCACHE_HASH_SUBNAME)X \
                 $(CONFIG_PK_DCACHE_HASH_CONFIG)X \
                 $(CONFIG_PK_DCACHE_HASH_LIBPATH)X \
                 $(CONFIG_PK_DCACHE_HASH_CPPFLAGS)X \
                 $(CONFIG_PK_DCACHE_HASH_DPKCONFIG)X \
                 $(CONFIG_PK_DCACHE_HASH_CFLAGS)X \
                 $(CONFIG_PK_DCACHE_HASH_LDFLAGS)X \
                 $(CONFIG_PK_DCACHE_HASH_CXXFLAGS)X \
                 $(CONFIG_PK_DCACHE_HASH_ASFLAGS)X \
                 $(PK_DCACHE_HASH_BSBIT)X \
                 $(PK_DCACHE_HASH_BUILDARCH)X \
		 $(PK_DCACHE_HASH_CSRCFILE)X \
                 $(CONFIG_PK_DCACHE_HASH_SRCFILE)X \
                 $(CONFIG_PK_DCACHE_HASH_CSRCFILE)

$(PK_DCACHE_HASH_DIR)/build: FORCE
	$(Q)$(call PK_DCACHE_HASH_sh,$(srctree))
