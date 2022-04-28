BiscuitOS-THP-$(CONFIG_PK_THP_USERSPACE)			+= BiscuitOS-THP-userspace/
BiscuitOS-THP-$(CONFIG_PK_THP_SHMEMHUGE_ANON)			+= BiscuitOS-THP-ShmemHugepage-anonymous/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/THP/%/Makefile, $(BiscuitOS-THP-y))

include $(PACKAGE_MAKEDIR)
