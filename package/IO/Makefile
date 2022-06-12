IO-$(CONFIG_PK_IO_ASYNC)		+= Async/
IO-$(CONFIG_PK_IO_BISCUITOS_EPOLL)	+= BiscuitOS-epoll/
IO-$(CONFIG_PK_IO_BISCUITOS_POLL)	+= BiscuitOS-poll/
IO-$(CONFIG_PK_IO_BISCUITOS_SELECT)	+= BiscuitOS-select/

PACKAGE_MAKEDIR := $(patsubst %/, $(srctree)/package/IO/%/Makefile, $(IO-y))

include $(PACKAGE_MAKEDIR)
