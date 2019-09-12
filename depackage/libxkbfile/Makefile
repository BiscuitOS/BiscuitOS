################################################
#
# libxkbfile
#
################################################
LIBXKBFILE_NAME		:= libxkbfile
LIBXKBFILE_VERSION	:= $(CONFIG_LIBXKBFILE_VERSION)
LIBXKBFILE_SITE		:= $(CONFIG_LIBXKBFILE_URL)
LIBXKBFILE_GITHUB	:= 
LIBXKBFILE_SUBNAME	:= 
LIBXKBFILE_DIR		:= $(srctree)/package/libxkbfile
LIBXKBFILE_PATCH	:= $(srctree)/package/libxkbfile/patch
LIBXKBFILE_DEMO		:= $(srctree)/package/libxkbfile/demo.c
LIBXKBFILE_OUT		:= 
LIBXKBFILE_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
LIBXKBFILE_TAR		:= $(CONFIG_LIBXKBFILE_TAR)
LIBXKBFILE_PACKAGE	:= 
LIBXKBFILE_CONFIG	:=
SUB_TARGET		+= $(LIBXKBFILE_DIR)/build

LIBXKBFILE_sh = $(CONFIG_SHELL) $(LIBXKBFILE_SCRIPTS) \
               $1 $(LIBXKBFILE_NAME)X $(LIBXKBFILE_VERSION)X \
               $(LIBXKBFILE_SITE)X $(LIBXKBFILE_GITHUB)X \
               $(LIBXKBFILE_PATCH)X 5.0 \
	       $(CONFIG_LIBXKBFILE_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(LIBXKBFILE_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(LIBXKBFILE_SUBNAME)X \
               $(LIBXKBFILE_CONFIG)X $(CONFIG_LIBXKBFILE_CONFIG)X \
	       $(CONFIG_LIBXKBFILE_LDFLAGS) $(CONFIG_LIBXKBFILE_CFLAGS)

$(LIBXKBFILE_DIR)/build: FORCE
	$(Q)$(call LIBXKBFILE_sh,$(srctree))
