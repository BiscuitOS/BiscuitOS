BiscuitOS-THP-$(CONFIG_PK_THP_USERSPACE)			+= BiscuitOS-THP-userspace/
BiscuitOS-THP-$(CONFIG_PK_THP_SHMEMHUGE_ANON)			+= BiscuitOS-THP-ShmemHugepage-anonymous/
BiscuitOS-THP-$(CONFIG_PK_THP_SHMEMHUGE_FILE_SHARED)		+= BiscuitOS-THP-ShmemHugepage-file-shared/
BiscuitOS-THP-$(CONFIG_PK_THP_SHMEMHUGE_FILE_PRIVATE)		+= BiscuitOS-THP-ShmemHugepage-file-private/
BiscuitOS-THP-$(CONFIG_PK_THP_ANONHUGE)				+= BiscuitOS-THP-AnonHugepage/
BiscuitOS-THP-$(CONFIG_PK_THP_ANONHUGE_MERGE)			+= BiscuitOS-THP-AnonHugepage-merge/
BiscuitOS-THP-$(CONFIG_PK_THP_ANONHUGE_MADVISE)			+= BiscuitOS-THP-AnonHugepage-madvise/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/THP/%/Makefile, $(BiscuitOS-THP-y))

include $(PACKAGE_MAKEDIR)
