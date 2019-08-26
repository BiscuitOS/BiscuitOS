################################################
#
# libjpeg
#
################################################
LIB_LIBJPEG_NAME	:= jpegsrc
LIB_LIBJPEG_VERSION	:= $(CONFIG_LIB_LIBJPEG_VERSION)
LIB_LIBJPEG_SITE	:= $(CONFIG_LIB_LIBJPEG_URL)
LIB_LIBJPEG_GITHUB	:= 
LIB_LIBJPEG_SUBNAME	:= 
LIB_LIBJPEG_DIR		:= $(srctree)/package/libjpeg
LIB_LIBJPEG_PATCH	:= $(srctree)/package/libjpeg/patch
LIB_LIBJPEG_DEMO	:= $(srctree)/package/libjpeg/demo.c
LIB_LIBJPEG_OUT		:= 
LIB_LIBJPEG_SCRIPTS	:= $(srctree)/scripts/package/GNU-jpeg.sh
LIB_LIBJPEG_TAR		:= $(CONFIG_LIB_LIBJPEG_TAR)
LIB_LIBJPEG_PACKAGE	:= 
LIB_LIBJPEG_CONFIG	:=
SUB_TARGET		+= $(LIB_LIBJPEG_DIR)/build

LIB_LIBJPEG_sh = $(CONFIG_SHELL) $(LIB_LIBJPEG_SCRIPTS) \
               $1 $(LIB_LIBJPEG_NAME)X $(LIB_LIBJPEG_VERSION)X \
               $(LIB_LIBJPEG_SITE)X $(LIB_LIBJPEG_GITHUB)X \
               $(LIB_LIBJPEG_PATCH)X 5.0 \
	       $(CONFIG_LIB_LIBJPEG_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(LIB_LIBJPEG_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(LIB_LIBJPEG_SUBNAME)X \
               $(LIB_LIBJPEG_CONFIG)X $(CONFIG_LIB_LIBJPEG_CONFIG)X \
	       $(CONFIG_LIB_LIBJPEG_LDFLAGS) $(CONFIG_LIB_LIBJPEG_CFLAGS)

$(LIB_LIBJPEG_DIR)/build: FORCE
	$(Q)$(call LIB_LIBJPEG_sh,$(srctree))
