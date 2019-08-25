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
