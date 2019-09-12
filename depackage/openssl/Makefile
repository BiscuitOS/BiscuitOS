################################################
#
# openssl
#
################################################
OPENSSL_NAME		:= openssl
OPENSSL_VERSION		:= $(CONFIG_OPENSSL_VERSION)
OPENSSL_SITE		:= $(CONFIG_OPENSSL_URL)
OPENSSL_GITHUB		:= 
OPENSSL_SUBNAME		:= 
OPENSSL_DIR		:= $(srctree)/package/openssl
OPENSSL_PATCH		:= $(srctree)/package/openssl/patch
OPENSSL_DEMO		:= $(srctree)/package/openssl/demo.c
OPENSSL_OUT		:= 
OPENSSL_SCRIPTS		:= $(srctree)/scripts/package/GNU-openssl.sh
OPENSSL_TAR		:= $(CONFIG_OPENSSL_TAR)
OPENSSL_PACKAGE		:= 
OPENSSL_CONFIG		:=
SUB_TARGET		+= $(OPENSSL_DIR)/build

OPENSSL_sh = $(CONFIG_SHELL) $(OPENSSL_SCRIPTS) \
               $1 $(OPENSSL_NAME)X $(OPENSSL_VERSION)X \
               $(OPENSSL_SITE)X $(OPENSSL_GITHUB)X \
               $(OPENSSL_PATCH)X 5.0 \
	       $(CONFIG_OPENSSL_SRC)X $(CONFIG_MAIN_PROJ_NAME)X \
               $(OPENSSL_TAR) $(CONFIG_ARCH_MAGIC)X \
               $(CONFIG_LINUX_KERNEL_CROSS_COMPILE)X $(OPENSSL_SUBNAME)X \
               $(OPENSSL_CONFIG)X $(CONFIG_OPENSSL_CONFIG)X \
	       $(CONFIG_OPENSSL_LDFLAGS) $(CONFIG_OPENSSL_CFLAGS)

$(OPENSSL_DIR)/build: FORCE
	$(Q)$(call OPENSSL_sh,$(srctree))
