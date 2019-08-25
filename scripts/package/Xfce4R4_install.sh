#!/bin/bash

set -e

src_dir=(
libxfce4util-4.12.1
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
