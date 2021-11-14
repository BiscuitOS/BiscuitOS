################################################
#
# libhugetlbfs
#
################################################
PK_LIBHUGETLBFS_NAME        := libhugetlbfs
PK_LIBHUGETLBFS_VERSION     := $(CONFIG_PK_LIBHUGETLBFS_VERSION)
PK_LIBHUGETLBFS_SITE        := $(CONFIG_PK_LIBHUGETLBFS_URL)
PK_LIBHUGETLBFS_GITHUB      := $(CONFIG_PK_LIBHUGETLBFS_GITHUB)
PK_LIBHUGETLBFS_SUBNAME     :=
PK_LIBHUGETLBFS_BUILDARCH   := $(CONFIG_PK_LIBHUGETLBFS_BUILDARCH)
PK_LIBHUGETLBFS_DIR         := $(srctree)/package/hugetlb/libhugetlbfs
PK_LIBHUGETLBFS_PATCH       := $(PK_LIBHUGETLBFS_DIR)/patch
PK_LIBHUGETLBFS_BSBIT       := libhugetlbfs-$(PK_LIBHUGETLBFS_VERSION).bsbit
PK_LIBHUGETLBFS_OUT         :=
PK_LIBHUGETLBFS_SCRIPTS     := $(srctree)/scripts/package/package-libhugetlbfs.sh
PK_LIBHUGETLBFS_TAR         := $(CONFIG_PK_LIBHUGETLBFS_TAR)
PK_LIBHUGETLBFS_PACKAGE     :=
PK_LIBHUGETLBFS_CONFIG      := $(CONFIG_PK_LIBHUGETLBFS_CONFIG)
SUB_TARGET            += $(PK_LIBHUGETLBFS_DIR)/build

PK_LIBHUGETLBFS_sh = $(CONFIG_SHELL) $(PK_LIBHUGETLBFS_SCRIPTS) \
                 $1X \
                 $(PK_LIBHUGETLBFS_NAME)X \
                 $(PK_LIBHUGETLBFS_VERSION)X \
                 $(PK_LIBHUGETLBFS_SITE)X \
                 $(PK_LIBHUGETLBFS_GITHUB)X \
                 $(PK_LIBHUGETLBFS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_LIBHUGETLBFS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_LIBHUGETLBFS_SUBNAME)X \
                 $(CONFIG_PK_LIBHUGETLBFS_CONFIG)X \
                 $(CONFIG_PK_LIBHUGETLBFS_LIBPATH)X \
                 $(CONFIG_PK_LIBHUGETLBFS_CPPFLAGS)X \
                 $(CONFIG_PK_LIBHUGETLBFS_DPKCONFIG)X \
                 $(CONFIG_PK_LIBHUGETLBFS_CFLAGS)X \
                 $(CONFIG_PK_LIBHUGETLBFS_LDFLAGS)X \
                 $(CONFIG_PK_LIBHUGETLBFS_CXXFLAGS)X \
                 $(CONFIG_PK_LIBHUGETLBFS_ASFLAGS)X \
                 $(PK_LIBHUGETLBFS_BSBIT)X \
                 $(PK_LIBHUGETLBFS_BUILDARCH)X

$(PK_LIBHUGETLBFS_DIR)/build: FORCE
	$(Q)$(call PK_LIBHUGETLBFS_sh,$(srctree))
