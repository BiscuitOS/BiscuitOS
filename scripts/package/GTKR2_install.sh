#!/bin/bash

set -e

src_dir=(
libffi-3.2
pcre-8.42
zlib-1.2.8
glib-2.48.1
atk-2.2.0
libpng-1.6.32
freetype-2.9
Python-2.7.13
libxml2-2.9.5
fontconfig-2.12.6
tiff-4.0.8
pixman-0.36.0
jpegsrc-v8d
xproto-7.0.23
xtrans-1.2.7
kbproto-1.0.6
inputproto-2.2
xcb-proto-1.7.1
libXau-1.0.7
libpthread-stubs-0.3
libxcb-1.8.1
xextproto-7.2.1
libX11-1.5.0
libXext-1.3.1
DirectFB-1.7.4
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

echo "**********************************************"
for i in ${src_dir[@]}
do
	echo ${i}
done
echo ""
echo " - Download - Compile - Install - Done "
echo "**********************************************"
