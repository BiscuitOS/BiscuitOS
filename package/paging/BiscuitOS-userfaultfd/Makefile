################################################
#
# BiscuitOS-userfaultfd
#
################################################
PK_USERFAULTFD_NAME        := BiscuitOS-userfaultfd
PK_USERFAULTFD_VERSION     := $(CONFIG_PK_USERFAULTFD_VERSION)
PK_USERFAULTFD_SITE        := $(CONFIG_PK_USERFAULTFD_URL)
PK_USERFAULTFD_GITHUB      := $(CONFIG_PK_USERFAULTFD_GITHUB)
PK_USERFAULTFD_SUBNAME     :=
PK_USERFAULTFD_BUILDARCH   := $(CONFIG_PK_USERFAULTFD_BUILDARCH)
PK_USERFAULTFD_DIR         := $(srctree)/package/paging/BiscuitOS-userfaultfd
PK_USERFAULTFD_PATCH       := $(PK_USERFAULTFD_DIR)/patch
PK_USERFAULTFD_BSBIT       := BiscuitOS-userfaultfd-$(PK_USERFAULTFD_VERSION).bsbit
PK_USERFAULTFD_OUT         :=
PK_USERFAULTFD_SCRIPTS     := $(srctree)/scripts/package/package-app.sh
PK_USERFAULTFD_TAR         := $(CONFIG_PK_USERFAULTFD_TAR)
PK_USERFAULTFD_PACKAGE     :=
PK_USERFAULTFD_CONFIG      := $(CONFIG_PK_USERFAULTFD_CONFIG)
SUB_TARGET                  += $(PK_USERFAULTFD_DIR)/build

PK_USERFAULTFD_sh = $(CONFIG_SHELL) $(PK_USERFAULTFD_SCRIPTS) \
                 $1X \
                 $(PK_USERFAULTFD_NAME)X \
                 $(PK_USERFAULTFD_VERSION)X \
                 $(PK_USERFAULTFD_SITE)X \
                 $(PK_USERFAULTFD_GITHUB)X \
                 $(PK_USERFAULTFD_PATCH)X \
                 $(CONFIG_LINUX_KERNEL_VERSION)X \
	         $(CONFIG_MAIN_PROJ_NAME)X \
                 $(PK_USERFAULTFD_TAR)X \
                 $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X \
                 $(PK_USERFAULTFD_SUBNAME)X \
                 $(CONFIG_PK_USERFAULTFD_CONFIG)X \
                 $(CONFIG_PK_USERFAULTFD_LIBPATH)X \
                 $(CONFIG_PK_USERFAULTFD_CPPFLAGS)X \
                 $(CONFIG_PK_USERFAULTFD_DPKCONFIG)X \
                 $(CONFIG_PK_USERFAULTFD_CFLAGS)X \
                 $(CONFIG_PK_USERFAULTFD_LDFLAGS)X \
                 $(CONFIG_PK_USERFAULTFD_CXXFLAGS)X \
                 $(CONFIG_PK_USERFAULTFD_ASFLAGS)X \
                 $(PK_USERFAULTFD_BSBIT)X \
                 $(PK_USERFAULTFD_BUILDARCH)X \
		 $(PK_USERFAULTFD_CSRCFILE)X \
                 $(CONFIG_PK_USERFAULTFD_SRCFILE)X \
                 $(CONFIG_PK_USERFAULTFD_CSRCFILE)

$(PK_USERFAULTFD_DIR)/build: FORCE
	$(Q)$(call PK_USERFAULTFD_sh,$(srctree))
