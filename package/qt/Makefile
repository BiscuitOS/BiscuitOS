################################################
#
# Qt
#
################################################
QT_NAME		:= qt
QT_VERSION	:= $(CONFIG_QT_VERSION)
QT_SITE		:= $(CONFIG_QT_URL)
QT_GITHUB	:= 
QT_SUBNAME	:= 
QT_DIR		:= $(srctree)/package/qt_app
QT_PATCH	:= $(srctree)/package/qt_app/patch
QT_DEMO	:= $(srctree)/package/qt_app/qt.c
QT_OUT		:= 
QT_SCRIPTS	:= $(srctree)/scripts/package/GNU-qt.sh
QT_TAR		:= $(CONFIG_QT_TAR)
QT_PACKAGE	:= 
QT_CONFIG	:=
SUB_TARGET		+= $(QT_DIR)/build

QT_sh = $(CONFIG_SHELL) $(QT_SCRIPTS) \
               $1 $(QT_NAME)X $(QT_VERSION)X \
               $(QT_SITE)X $(QT_GITHUB)X \
               $(QT_PATCH)X 5.0 \
	       $(CONFIG_QT_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(QT_TAR)X $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(QT_SUBNAME)X \
               $(QT_CONFIG)X $(CONFIG_QT_CONFIG)X \
	       $(CONFIG_QT_LDFLAGS)X $(CONFIG_QT_CFLAGS)X \
	       $(CONFIG_QT_SRC)X $(CONFIG_QT_PACKAGE_NAME)X

$(QT_DIR)/build: FORCE
	$(Q)$(call QT_sh,$(srctree))
