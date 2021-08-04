SHMEM-$(CONFIG_PK_SHMEM_SERVER) 		+= BiscuitOS-SHMEM-server/
SHMEM-$(CONFIG_PK_SHMEM_CLIENT) 		+= BiscuitOS-SHMEM-client/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/SHMEM/%/Makefile, $(SHMEM-y))

include $(PACKAGE_MAKEDIR)
