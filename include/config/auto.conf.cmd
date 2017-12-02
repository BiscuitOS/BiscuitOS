deps_config := \
	target/Host/qemu/Kconfig \
	target/Host/Kconfig \
	fs/Kconfig \
	target/kernel/Kconfig \
	package/utils-linux/Kconfig \
	package/gcc/Kconfig \
	package/demo/Kconfig \
	package/Kconfig \
	Kconfig

include/config/auto.conf: \
	$(deps_config)


$(deps_config): ;
