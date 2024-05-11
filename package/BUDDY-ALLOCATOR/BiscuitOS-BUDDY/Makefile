################################################
#
# BiscuitOS-BUDDY
#
################################################
PK_BUDDY_DEMO_NAME        := BiscuitOS-BUDDY
PK_BUDDY_DEMO_VERSION     := $(CONFIG_PK_BUDDY_DEMO_VERSION)
PK_BUDDY_DEMO_SITE        := $(CONFIG_PK_BUDDY_DEMO_URL)
PK_BUDDY_DEMO_GITHUB      := $(CONFIG_PK_BUDDY_DEMO_GITHUB)
PK_BUDDY_DEMO_SUBNAME     :=
PK_BUDDY_DEMO_BUILDARCH   := $(CONFIG_PK_BUDDY_DEMO_BUILDARCH)
PK_BUDDY_DEMO_DIR         := $(srctree)/package/BUDDY-ALLOCATOR/BiscuitOS-BUDDY
PK_BUDDY_DEMO_PATCH       := $(PK_BUDDY_DEMO_DIR)/patch
PK_BUDDY_DEMO_BSBIT       := BiscuitOS-BUDDY-$(PK_BUDDY_DEMO_VERSION).bsbit
PK_BUDDY_DEMO_OUT         :=
PK_BUDDY_DEMO_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_BUDDY_DEMO_TAR         := $(CONFIG_PK_BUDDY_DEMO_TAR)
PK_BUDDY_DEMO_PACKAGE     :=
PK_BUDDY_DEMO_CONFIG      := $(CONFIG_PK_BUDDY_DEMO_CONFIG)
SUB_TARGET                  += $(PK_BUDDY_DEMO_DIR)/build

PK_BUDDY_DEMO_sh = $(CONFIG_SHELL) $(PK_BUDDY_DEMO_SCRIPTS) \
                 $1X \
                 $(PK_BUDDY_DEMO_NAME)X \
                 $(PK_BUDDY_DEMO_VERSION)X \
                 $(PK_BUDDY_DEMO_SITE)X \
                 $(PK_BUDDY_DEMO_GITHUB)X \
                 $(PK_BUDDY_DEMO_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BUDDY_DEMO_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BUDDY_DEMO_SUBNAME)X \
                 $(CONFIG_PK_BUDDY_DEMO_CONFIG)X \
                 $(CONFIG_PK_BUDDY_DEMO_LIBPATH)X \
                 $(CONFIG_PK_BUDDY_DEMO_CPPFLAGS)X \
                 $(CONFIG_PK_BUDDY_DEMO_DPKCONFIG)X \
                 $(CONFIG_PK_BUDDY_DEMO_CFLAGS)X \
                 $(CONFIG_PK_BUDDY_DEMO_LDFLAGS)X \
                 $(CONFIG_PK_BUDDY_DEMO_CXXFLAGS)X \
                 $(CONFIG_PK_BUDDY_DEMO_ASFLAGS)X \
                 $(PK_BUDDY_DEMO_BSBIT)X \
                 $(PK_BUDDY_DEMO_BUILDARCH)X \
		 $(PK_BUDDY_DEMO_CSRCFILE)X \
                 $(CONFIG_PK_BUDDY_DEMO_SRCFILE)X \
                 $(CONFIG_PK_BUDDY_DEMO_CSRCFILE)

$(PK_BUDDY_DEMO_DIR)/build: FORCE
	$(Q)$(call PK_BUDDY_DEMO_sh,$(srctree))
