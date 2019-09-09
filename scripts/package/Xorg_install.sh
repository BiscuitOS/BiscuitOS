#!/bin/bash

set -e

src_dir=(
zlib-1.2.8
expat-2.2.4
libpng-1.6.32
openssl-1.0.2e
xf86driproto-2.1.1
xcmiscproto-1.2.2
bigreqsproto-1.1.2
fontsproto-2.1.3
videoproto-2.3.3
recordproto-1.14
scrnsaverproto-1.2.2
resourceproto-1.2.0
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
libxkbfile-1.0.9
libfontenc-1.1.2
freetype-2.9
libXfont-1.5.4
libpciaccess-0.14
libXext-1.3.1/
xineramaproto-1.2.1
libXinerama-1.1.2
renderproto-0.11.1
damageproto-1.2.1
fixesproto-5.0
compositeproto-0.4.2
xf86vidmodeproto-2.3.1
libXdmcp-1.1.1
randrproto-1.3.2
glproto-1.4.15
Python-2.7.13
libxml2-2.9.5
libdrm-2.4.88
mesa-17.0.1
dri2proto-2.6
pixman-0.36.0
xorg-server-1.12.2
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
