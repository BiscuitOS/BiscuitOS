################################################
#
# pgcache_scan
#
################################################
PK_PGCACHE_SCAN_NAME        := pgcache_scan
PK_PGCACHE_SCAN_VERSION     := $(CONFIG_PK_PGCACHE_SCAN_VERSION)
PK_PGCACHE_SCAN_SITE        := $(CONFIG_PK_PGCACHE_SCAN_URL)
PK_PGCACHE_SCAN_GITHUB      := $(CONFIG_PK_PGCACHE_SCAN_GITHUB)
PK_PGCACHE_SCAN_SUBNAME     :=
PK_PGCACHE_SCAN_BUILDARCH   := $(CONFIG_PK_PGCACHE_SCAN_BUILDARCH)
PK_PGCACHE_SCAN_DIR         := $(srctree)/package/pgcache_scan
PK_PGCACHE_SCAN_PATCH       := $(PK_PGCACHE_SCAN_DIR)/patch
PK_PGCACHE_SCAN_BSBIT       := pgcache_scan-$(PK_PGCACHE_SCAN_VERSION).bsbit
PK_PGCACHE_SCAN_OUT         :=
PK_PGCACHE_SCAN_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_PGCACHE_SCAN_TAR         := $(CONFIG_PK_PGCACHE_SCAN_TAR)
PK_PGCACHE_SCAN_PACKAGE     :=
PK_PGCACHE_SCAN_CONFIG      := $(CONFIG_PK_PGCACHE_SCAN_CONFIG)
SUB_TARGET                  += $(PK_PGCACHE_SCAN_DIR)/build

PK_PGCACHE_SCAN_sh = $(CONFIG_SHELL) $(PK_PGCACHE_SCAN_SCRIPTS) \
                 $1X \
                 $(PK_PGCACHE_SCAN_NAME)X \
                 $(PK_PGCACHE_SCAN_VERSION)X \
                 $(PK_PGCACHE_SCAN_SITE)X \
                 $(PK_PGCACHE_SCAN_GITHUB)X \
                 $(PK_PGCACHE_SCAN_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_PGCACHE_SCAN_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_PGCACHE_SCAN_SUBNAME)X \
                 $(CONFIG_PK_PGCACHE_SCAN_CONFIG)X \
                 $(CONFIG_PK_PGCACHE_SCAN_LIBPATH)X \
                 $(CONFIG_PK_PGCACHE_SCAN_CPPFLAGS)X \
                 $(CONFIG_PK_PGCACHE_SCAN_DPKCONFIG)X \
                 $(CONFIG_PK_PGCACHE_SCAN_CFLAGS)X \
                 $(CONFIG_PK_PGCACHE_SCAN_LDFLAGS)X \
                 $(CONFIG_PK_PGCACHE_SCAN_CXXFLAGS)X \
                 $(CONFIG_PK_PGCACHE_SCAN_ASFLAGS)X \
                 $(PK_PGCACHE_SCAN_BSBIT)X \
                 $(PK_PGCACHE_SCAN_BUILDARCH)X \
		 $(PK_PGCACHE_SCAN_CSRCFILE)X \
                 $(CONFIG_PK_PGCACHE_SCAN_SRCFILE)X \
                 $(CONFIG_PK_PGCACHE_SCAN_CSRCFILE)

$(PK_PGCACHE_SCAN_DIR)/build: FORCE
	$(Q)$(call PK_PGCACHE_SCAN_sh,$(srctree))
