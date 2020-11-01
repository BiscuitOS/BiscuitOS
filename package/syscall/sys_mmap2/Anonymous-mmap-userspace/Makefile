################################################
#
# BiscuitOS-Anonymous-mmap-Userspace
#
################################################
PK_SYS_MMAP_ANON_USER_NAME        := BiscuitOS-Anonymous-mmap-Userspace
PK_SYS_MMAP_ANON_USER_VERSION     := $(CONFIG_PK_SYS_MMAP_ANON_USER_VERSION)
PK_SYS_MMAP_ANON_USER_SITE        := $(CONFIG_PK_SYS_MMAP_ANON_USER_URL)
PK_SYS_MMAP_ANON_USER_GITHUB      := $(CONFIG_PK_SYS_MMAP_ANON_USER_GITHUB)
PK_SYS_MMAP_ANON_USER_SUBNAME     :=
PK_SYS_MMAP_ANON_USER_BUILDARCH   := $(CONFIG_PK_SYS_MMAP_ANON_USER_BUILDARCH)
PK_SYS_MMAP_ANON_USER_DIR         := $(srctree)/package/syscall/sys_mmap2/Anonymous-mmap-userspace
PK_SYS_MMAP_ANON_USER_PATCH       := $(PK_SYS_MMAP_ANON_USER_DIR)/patch
PK_SYS_MMAP_ANON_USER_BSBIT       := BiscuitOS-Anonymous-mmap-Userspace-$(PK_SYS_MMAP_ANON_USER_VERSION).bsbit
PK_SYS_MMAP_ANON_USER_OUT         :=
PK_SYS_MMAP_ANON_USER_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_SYS_MMAP_ANON_USER_TAR         := $(CONFIG_PK_SYS_MMAP_ANON_USER_TAR)
PK_SYS_MMAP_ANON_USER_PACKAGE     :=
PK_SYS_MMAP_ANON_USER_CONFIG      := $(CONFIG_PK_SYS_MMAP_ANON_USER_CONFIG)
SUB_TARGET                  += $(PK_SYS_MMAP_ANON_USER_DIR)/build

PK_SYS_MMAP_ANON_USER_sh = $(CONFIG_SHELL) $(PK_SYS_MMAP_ANON_USER_SCRIPTS) \
                 $1X \
                 $(PK_SYS_MMAP_ANON_USER_NAME)X \
                 $(PK_SYS_MMAP_ANON_USER_VERSION)X \
                 $(PK_SYS_MMAP_ANON_USER_SITE)X \
                 $(PK_SYS_MMAP_ANON_USER_GITHUB)X \
                 $(PK_SYS_MMAP_ANON_USER_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_SYS_MMAP_ANON_USER_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_SYS_MMAP_ANON_USER_SUBNAME)X \
                 $(CONFIG_PK_SYS_MMAP_ANON_USER_CONFIG)X \
                 $(CONFIG_PK_SYS_MMAP_ANON_USER_LIBPATH)X \
                 $(CONFIG_PK_SYS_MMAP_ANON_USER_CPPFLAGS)X \
                 $(CONFIG_PK_SYS_MMAP_ANON_USER_DPKCONFIG)X \
                 $(CONFIG_PK_SYS_MMAP_ANON_USER_CFLAGS)X \
                 $(CONFIG_PK_SYS_MMAP_ANON_USER_LDFLAGS)X \
                 $(CONFIG_PK_SYS_MMAP_ANON_USER_CXXFLAGS)X \
                 $(CONFIG_PK_SYS_MMAP_ANON_USER_ASFLAGS)X \
                 $(PK_SYS_MMAP_ANON_USER_BSBIT)X \
                 $(PK_SYS_MMAP_ANON_USER_BUILDARCH)X \
		 $(PK_SYS_MMAP_ANON_USER_CSRCFILE)X \
                 $(CONFIG_PK_SYS_MMAP_ANON_USER_SRCFILE)X \
                 $(CONFIG_PK_SYS_MMAP_ANON_USER_CSRCFILE)

$(PK_SYS_MMAP_ANON_USER_DIR)/build: FORCE
	$(Q)$(call PK_SYS_MMAP_ANON_USER_sh,$(srctree))
