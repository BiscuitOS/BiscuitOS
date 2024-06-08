################################################
#
# BiscuitOS-BUDDY-GFP-USER
#
################################################
PK_BUDDY_GFP_USER_NAME        := BiscuitOS-BUDDY-GFP-USER
PK_BUDDY_GFP_USER_VERSION     := $(CONFIG_PK_BUDDY_GFP_USER_VERSION)
PK_BUDDY_GFP_USER_SITE        := $(CONFIG_PK_BUDDY_GFP_USER_URL)
PK_BUDDY_GFP_USER_GITHUB      := $(CONFIG_PK_BUDDY_GFP_USER_GITHUB)
PK_BUDDY_GFP_USER_SUBNAME     :=
PK_BUDDY_GFP_USER_BUILDARCH   := $(CONFIG_PK_BUDDY_GFP_USER_BUILDARCH)
PK_BUDDY_GFP_USER_DIR         := $(srctree)/package/BUDDY-ALLOCATOR/BiscuitOS-BUDDY-GFP-USER
PK_BUDDY_GFP_USER_PATCH       := $(PK_BUDDY_GFP_USER_DIR)/patch
PK_BUDDY_GFP_USER_BSBIT       := BiscuitOS-BUDDY-GFP-USER-$(PK_BUDDY_GFP_USER_VERSION).bsbit
PK_BUDDY_GFP_USER_OUT         :=
PK_BUDDY_GFP_USER_SCRIPTS     := $(srctree)/scripts/package/package-module.sh
PK_BUDDY_GFP_USER_TAR         := $(CONFIG_PK_BUDDY_GFP_USER_TAR)
PK_BUDDY_GFP_USER_PACKAGE     :=
PK_BUDDY_GFP_USER_CONFIG      := $(CONFIG_PK_BUDDY_GFP_USER_CONFIG)
SUB_TARGET                  += $(PK_BUDDY_GFP_USER_DIR)/build

PK_BUDDY_GFP_USER_sh = $(CONFIG_SHELL) $(PK_BUDDY_GFP_USER_SCRIPTS) \
                 $1X \
                 $(PK_BUDDY_GFP_USER_NAME)X \
                 $(PK_BUDDY_GFP_USER_VERSION)X \
                 $(PK_BUDDY_GFP_USER_SITE)X \
                 $(PK_BUDDY_GFP_USER_GITHUB)X \
                 $(PK_BUDDY_GFP_USER_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_BUDDY_GFP_USER_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_BUDDY_GFP_USER_SUBNAME)X \
                 $(CONFIG_PK_BUDDY_GFP_USER_CONFIG)X \
                 $(CONFIG_PK_BUDDY_GFP_USER_LIBPATH)X \
                 $(CONFIG_PK_BUDDY_GFP_USER_CPPFLAGS)X \
                 $(CONFIG_PK_BUDDY_GFP_USER_DPKCONFIG)X \
                 $(CONFIG_PK_BUDDY_GFP_USER_CFLAGS)X \
                 $(CONFIG_PK_BUDDY_GFP_USER_LDFLAGS)X \
                 $(CONFIG_PK_BUDDY_GFP_USER_CXXFLAGS)X \
                 $(CONFIG_PK_BUDDY_GFP_USER_ASFLAGS)X \
                 $(PK_BUDDY_GFP_USER_BSBIT)X \
                 $(PK_BUDDY_GFP_USER_BUILDARCH)X \
		 $(PK_BUDDY_GFP_USER_CSRCFILE)X \
                 $(CONFIG_PK_BUDDY_GFP_USER_SRCFILE)X \
                 $(CONFIG_PK_BUDDY_GFP_USER_CSRCFILE)

$(PK_BUDDY_GFP_USER_DIR)/build: FORCE
	$(Q)$(call PK_BUDDY_GFP_USER_sh,$(srctree))
