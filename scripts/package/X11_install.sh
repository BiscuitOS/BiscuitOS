#!/bin/bash

src_dir=(
xproto-7.0.25
xtrans-1.3.0
kbproto-1.0.6
inputproto-2.1.99.6
xcb-proto-1.8
libXau-1.0.8
libxcb-1.12
libX11-1.6.5
)

do_all()
{
	for i in ${src_dir[@]}
	do
		cd ${i}
		make download;make tar;make configure;make;make install;
		cd -
	done
}

do_install()
{
	for i in ${src_dir[@]}
	do
		cd ${i}
		make install
		cd -
	done
}

if [ ${1}X = "install"X ]; then
	do_install
elif [ ${1}X = "all"X ]; then
	do_all
fi
