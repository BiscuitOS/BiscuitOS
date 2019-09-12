################################################
#
# python2.7
#
################################################
PYTHON2_7_NAME		:= Python
PYTHON2_7_VERSION	:= $(CONFIG_PYTHON2_7_VERSION)
PYTHON2_7_SITE		:= $(CONFIG_PYTHON2_7_URL)
PYTHON2_7_GITHUB	:= 
PYTHON2_7_SUBNAME	:= 
PYTHON2_7_DIR		:= $(srctree)/package/python2.7
PYTHON2_7_PATCH		:= $(srctree)/package/python2.7/patch
PYTHON2_7_DEMO		:= $(srctree)/package/python2.7/demo.c
PYTHON2_7_OUT		:= 
PYTHON2_7_SCRIPTS	:= $(srctree)/scripts/package/GNU-package.sh
PYTHON2_7_TAR		:= $(CONFIG_PYTHON2_7_TAR)
PYTHON2_7_PACKAGE	:= 
PYTHON2_7_CONFIG	:=
SUB_TARGET		+= $(PYTHON2_7_DIR)/build

PYTHON2_7_sh = $(CONFIG_SHELL) $(PYTHON2_7_SCRIPTS) \
               $1 $(PYTHON2_7_NAME)X $(PYTHON2_7_VERSION)X \
               $(PYTHON2_7_SITE)X $(PYTHON2_7_GITHUB)X \
               $(PYTHON2_7_PATCH)X 5.0 \
	       $(CONFIG_PYTHON2_7_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(PYTHON2_7_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(PYTHON2_7_SUBNAME)X \
               $(PYTHON2_7_CONFIG)X $(CONFIG_PYTHON2_7_CONFIG)X \
	       $(CONFIG_PYTHON2_7_LDFLAGS) $(CONFIG_PYTHON2_7_CFLAGS)

$(PYTHON2_7_DIR)/build: FORCE
	$(Q)$(call PYTHON2_7_sh,$(srctree))
