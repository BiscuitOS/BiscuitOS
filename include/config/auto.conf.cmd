deps_config := \
	target/Host/Kconfig \
	fs/Kconfig \
	package/utils-linux/Kconfig \
	package/gcc/Kconfig \
	package/Kconfig \
	target/kernel/Kconfig \
	Kconfig

include/config/auto.conf: \
	$(deps_config)


$(deps_config): ;
