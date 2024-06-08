################################################
#
# BiscuitOS-jemalloc
#
################################################
PK_JEMALLOC_TOOLS_NAME        := BiscuitOS-jemalloc
PK_JEMALLOC_TOOLS_VERSION     := $(CONFIG_PK_JEMALLOC_TOOLS_VERSION)
PK_JEMALLOC_TOOLS_SITE        := $(CONFIG_PK_JEMALLOC_TOOLS_URL)
PK_JEMALLOC_TOOLS_GITHUB      := $(CONFIG_PK_JEMALLOC_TOOLS_GITHUB)
PK_JEMALLOC_TOOLS_SUBNAME     :=
PK_JEMALLOC_TOOLS_BUILDARCH   := $(CONFIG_PK_JEMALLOC_TOOLS_BUILDARCH)
PK_JEMALLOC_TOOLS_DIR         := $(srctree)/package/jemalloc/jemalloc
PK_JEMALLOC_TOOLS_PATCH       := $(PK_JEMALLOC_TOOLS_DIR)/patch
PK_JEMALLOC_TOOLS_BSBIT       := BiscuitOS-jemalloc-$(PK_JEMALLOC_TOOLS_VERSION).bsbit
PK_JEMALLOC_TOOLS_OUT         :=
PK_JEMALLOC_TOOLS_SCRIPTS     := $(srctree)/scripts/package/package-jemalloc.sh
PK_JEMALLOC_TOOLS_TAR         := $(CONFIG_PK_JEMALLOC_TOOLS_TAR)
PK_JEMALLOC_TOOLS_PACKAGE     :=
PK_JEMALLOC_TOOLS_CONFIG      := $(CONFIG_PK_JEMALLOC_TOOLS_CONFIG)
SUB_TARGET            += $(PK_JEMALLOC_TOOLS_DIR)/build

PK_JEMALLOC_TOOLS_sh = $(CONFIG_SHELL) $(PK_JEMALLOC_TOOLS_SCRIPTS) \
                 $1X \
                 $(PK_JEMALLOC_TOOLS_NAME)X \
                 $(PK_JEMALLOC_TOOLS_VERSION)X \
                 $(PK_JEMALLOC_TOOLS_SITE)X \
                 $(PK_JEMALLOC_TOOLS_GITHUB)X \
                 $(PK_JEMALLOC_TOOLS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_JEMALLOC_TOOLS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_JEMALLOC_TOOLS_SUBNAME)X \
                 $(CONFIG_PK_JEMALLOC_TOOLS_CONFIG)X \
                 $(CONFIG_PK_JEMALLOC_TOOLS_LIBPATH)X \
                 $(CONFIG_PK_JEMALLOC_TOOLS_CPPFLAGS)X \
                 $(CONFIG_PK_JEMALLOC_TOOLS_DPKCONFIG)X \
                 $(CONFIG_PK_JEMALLOC_TOOLS_CFLAGS)X \
                 $(CONFIG_PK_JEMALLOC_TOOLS_LDFLAGS)X \
                 $(CONFIG_PK_JEMALLOC_TOOLS_CXXFLAGS)X \
                 $(CONFIG_PK_JEMALLOC_TOOLS_ASFLAGS)X \
                 $(PK_JEMALLOC_TOOLS_BSBIT)X \
                 $(PK_JEMALLOC_TOOLS_BUILDARCH)X

$(PK_JEMALLOC_TOOLS_DIR)/build: FORCE
	$(Q)$(call PK_JEMALLOC_TOOLS_sh,$(srctree))
