################################################
#
# BiscuitOS-tcmalloc
#
################################################
PK_TCMALLOC_TOOLS_NAME        := BiscuitOS-tcmalloc
PK_TCMALLOC_TOOLS_VERSION     := $(CONFIG_PK_TCMALLOC_TOOLS_VERSION)
PK_TCMALLOC_TOOLS_SITE        := $(CONFIG_PK_TCMALLOC_TOOLS_URL)
PK_TCMALLOC_TOOLS_GITHUB      := $(CONFIG_PK_TCMALLOC_TOOLS_GITHUB)
PK_TCMALLOC_TOOLS_SUBNAME     :=
PK_TCMALLOC_TOOLS_BUILDARCH   := $(CONFIG_PK_TCMALLOC_TOOLS_BUILDARCH)
PK_TCMALLOC_TOOLS_DIR         := $(srctree)/package/tcmalloc/tcmalloc
PK_TCMALLOC_TOOLS_PATCH       := $(PK_TCMALLOC_TOOLS_DIR)/patch
PK_TCMALLOC_TOOLS_BSBIT       := BiscuitOS-tcmalloc-$(PK_TCMALLOC_TOOLS_VERSION).bsbit
PK_TCMALLOC_TOOLS_OUT         :=
PK_TCMALLOC_TOOLS_SCRIPTS     := $(srctree)/scripts/package/package-tcmalloc.sh
PK_TCMALLOC_TOOLS_TAR         := $(CONFIG_PK_TCMALLOC_TOOLS_TAR)
PK_TCMALLOC_TOOLS_PACKAGE     :=
PK_TCMALLOC_TOOLS_CONFIG      := $(CONFIG_PK_TCMALLOC_TOOLS_CONFIG)
SUB_TARGET            += $(PK_TCMALLOC_TOOLS_DIR)/build

PK_TCMALLOC_TOOLS_sh = $(CONFIG_SHELL) $(PK_TCMALLOC_TOOLS_SCRIPTS) \
                 $1X \
                 $(PK_TCMALLOC_TOOLS_NAME)X \
                 $(PK_TCMALLOC_TOOLS_VERSION)X \
                 $(PK_TCMALLOC_TOOLS_SITE)X \
                 $(PK_TCMALLOC_TOOLS_GITHUB)X \
                 $(PK_TCMALLOC_TOOLS_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_TCMALLOC_TOOLS_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_TCMALLOC_TOOLS_SUBNAME)X \
                 $(CONFIG_PK_TCMALLOC_TOOLS_CONFIG)X \
                 $(CONFIG_PK_TCMALLOC_TOOLS_LIBPATH)X \
                 $(CONFIG_PK_TCMALLOC_TOOLS_CPPFLAGS)X \
                 $(CONFIG_PK_TCMALLOC_TOOLS_DPKCONFIG)X \
                 $(CONFIG_PK_TCMALLOC_TOOLS_CFLAGS)X \
                 $(CONFIG_PK_TCMALLOC_TOOLS_LDFLAGS)X \
                 $(CONFIG_PK_TCMALLOC_TOOLS_CXXFLAGS)X \
                 $(CONFIG_PK_TCMALLOC_TOOLS_ASFLAGS)X \
                 $(PK_TCMALLOC_TOOLS_BSBIT)X \
                 $(PK_TCMALLOC_TOOLS_BUILDARCH)X

$(PK_TCMALLOC_TOOLS_DIR)/build: FORCE
	$(Q)$(call PK_TCMALLOC_TOOLS_sh,$(srctree))
