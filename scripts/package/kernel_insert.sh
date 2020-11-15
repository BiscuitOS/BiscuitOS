#!/bin/bash

# Running on Kernel anywhere.
#
# (C) 2020.10.16 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation


ROOT=$2
LINUX=${ROOT}/linux/linux
BISCUITOS_PACK_DIR=$3
INSTALL_PATH=${BISCUITOS_PACK_DIR}
INSTALL_FILE=BiscuitOS_Insert.bs
FILE_LINE=
FILE_NAME=
FILE_PATH=
FUNC_LINE=
FUNC_NAME=
CONT_LINE=
CONT_NAME=
CONT_BASE=

BiscuitOS_parse_target()
{
	cd ${INSTALL_PATH} > /dev/null
	# Parse file name
	FILE_LINE=$(grep "File" * -nr --include ${INSTALL_FILE} | cut -d : -f 2)
	[ -z ${FILE_LINE} ] && echo "Option 'File' doesn't exist" && exit 1
	FILE_LINE=$(expr ${FILE_LINE} + 1)
	FILE_NAME=$(sed -n ${FILE_LINE}p ${INSTALL_FILE})
	FILE_PATH=${LINUX}/${FILE_NAME}
	[ ! -f ${FILE_PATH} ] && echo "${FILE_PATH} doesn't exist!" && exit 1
	# Parse Insert point
	FUNC_LINE=$(grep "Func" * -nr --include ${INSTALL_FILE} | cut -d : -f 2)
	[ -z ${FUNC_LINE} ] && echo "Option 'Func' doesn't exist" && exit 1
	FUNC_LINE=$(expr ${FUNC_LINE} + 1)
	FUNC_NAME=$(sed -n ${FUNC_LINE}p ${INSTALL_FILE})
	FUNC_BASE=${FUNC_NAME%(*}
	# Parse Insert content
	CONT_LINE=$(grep "Content" * -nr --include ${INSTALL_FILE} | cut -d : -f 2)
	[ -z ${CONT_LINE} ] && echo "Option 'Content' doesn't exist" && exit 1
	CONT_LINE=$(expr ${CONT_LINE} + 1)
	CONT_NAME=$(sed -n ${CONT_LINE}p ${INSTALL_FILE})
	CONT_BASE=${CONT_NAME%(*}
	cd - > /dev/null
}

BiscuitOS_install_weak()
{
	_weak_file=BiscuitOS_weak.c
	_weak_dir=${LINUX}/lib
	_weak_Makefile=${_weak_dir}/Makefile
	if [ ! -f ${_weak_dir}/${_weak_file} ]; then
		# Create File
		touch ${_weak_dir}/${_weak_file}
		echo "__attribute__((weakref)) int ${CONT_BASE}(void) { return 0; }" >> ${_weak_dir}/${_weak_file}
		find ${_weak_dir} -name Makefile | xargs grep -s "BiscuitOS_weak.o" > /dev/null
		if [ $? -ne 0 ]; then
			echo "obj-y	+= BiscuitOS_weak.o" >> ${_weak_Makefile}
		fi
	else
		find ${_weak_dir} -name ${_weak_file} | xargs grep -s "\ ${CONT_BASE}(" > /dev/null
		if [ $? -ne 0 ]; then
			echo "__attribute__((weakref)) int ${CONT_BASE}(void) { return 0; }" >> ${_weak_dir}/${_weak_file}
		fi
	fi
}

BiscuitOS_install_strong()
{
	_strong_dir=${LINUX}/lib
	find ${_strong_dir} -name Makefile | xargs grep -s "BiscuitOS_strong.o" > /dev/null
	if [ $? -ne 0 ]; then
		echo "obj-y	+= BiscuitOS_strong.o" >> ${_strong_dir}/Makefile
	fi
	[ -L ${LINUX}/lib/BiscuitOS_strong.c ] && rm -rf ${LINUX}/lib/BiscuitOS_strong.c
	ln -s ${BISCUITOS_PACK_DIR}/main.c ${LINUX}/lib/BiscuitOS_strong.c
	# Inseart Content into target file
	_file_dir=${FILE_PATH%/*}
	_file_name=${FILE_PATH##*/}
	cd ${_file_dir} > /dev/null
	_content_line=$(grep "${FUNC_BASE}(" * -nr --include ${_file_name} | cut -d : -f 2)
	[ -z ${_content_line} ] && echo "Can't find ${FUNC_NAME} on ${FILE_PATH}" && exit 1
	content_line=$(expr ${_content_line} + 1)
	confirm_line=$(expr ${_content_line} - 1)
	confirm_content=$(sed -n ${confirm_line}p ${_file_name})
	if [ "${confirm_content}"X != "{extern int ${CONT_BASE}(void); ${CONT_BASE}();}"X ]; then
		sed -i "${_content_line}i {extern int ${CONT_BASE}(void); ${CONT_BASE}();}" ${_file_name}
	fi
	cd  - > /dev/null
}

BiscuitOS_remove_strong()
{
	_strong_dir=${LINUX}/lib
	find ${_strong_dir} -name Makefile | xargs grep -s "BiscuitOS_strong.o" > /dev/null
	if [ $? -eq 0 ]; then
		cd ${_strong_dir} > /dev/null
		_strong_line=$(grep "BiscuitOS_strong.o" * -nr --include Makefile | cut -d : -f 2)
		[ ${_strong_line} -ne 0 ] && sed -i "${_strong_line} d" Makefile 
		cd - > /dev/null
	fi
	# Remove Content into target file
	_file_dir=${FILE_PATH%/*}
	_file_name=${FILE_PATH##*/}
	cd ${_file_dir} > /dev/null
	_content_line=$(grep "${CONT_BASE}()" * -nr --include ${_file_name} | cut -d : -f 2)
	[ -z ${_content_line} ] && exit 0
	sed -i "${_content_line} d" ${_file_name}
	cd  - > /dev/null
	[ -L ${LINUX}/lib/BiscuitOS_strong.c ] && rm -rf ${LINUX}/lib/BiscuitOS_strong.c
	[ -f ${LINUX}/lib/BiscuitOS_strong.o ] && rm -rf ${LINUX}/lib/BiscuitOS_strong.o
}

BiscuitOS_install_initcall()
{
	_strong_dir=${LINUX}/lib
	find ${_strong_dir} -name Makefile | xargs grep -s "BiscuitOS_initcall" > /dev/null
	if [ $? -ne 0 ]; then
		echo "obj-y	+= BiscuitOS_initcall/" >> ${_strong_dir}/Makefile
	fi
	[ -L ${LINUX}/lib/BiscuitOS_initcall ] && rm -rf ${LINUX}/lib/BiscuitOS_initcall
	ln -s ${BISCUITOS_PACK_DIR}/ ${LINUX}/lib/BiscuitOS_initcall
	cd  - > /dev/null
}

BiscuitOS_remove_initcall()
{
	_strong_dir=${LINUX}/lib
	find ${_strong_dir} -name Makefile | xargs grep -s "BiscuitOS_initcall" > /dev/null
	if [ $? -eq 0 ]; then
		cd ${_strong_dir} > /dev/null
		_strong_line=$(grep "BiscuitOS_initcall" * -nr --include Makefile | cut -d : -f 2)
		[ ${_strong_line} -ne 0 ] && sed -i "${_strong_line} d" Makefile 
		cd - > /dev/null
	fi
	[ -L ${LINUX}/lib/BiscuitOS_initcall ] && rm -rf ${LINUX}/lib/BiscuitOS_initcall
}

case $1 in
	"install")
		BiscuitOS_parse_target
		BiscuitOS_install_strong
		echo "Install"
		;;
	"remove")
		BiscuitOS_parse_target
		BiscuitOS_remove_strong
		echo "Remove"
		;;
	"install_initcall")
		BiscuitOS_install_initcall
		;;
	"remove_initcall")
		BiscuitOS_remove_initcall
		;;
esac
