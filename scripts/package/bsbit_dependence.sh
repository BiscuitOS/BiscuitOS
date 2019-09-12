#!/bin/bash

set -e
#
# Dependence for install package
#
# (C) 2019.09.06 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.
#

# Default bsfile
BSFILE=${1}
# Package root dir
PACKDIR=${2}
# Package
PACKAGE=${3}
# Tmpfile
TMPFILE=${PACKDIR}/.deptmp

# Check file exist and non-empty
[ ! -n "${BSFILE}" ] && exit 0
[ ! -f ${BSFILE} ] && exit 0
[ ! -d ${PACKDIR} ] && exit 0

if [ "${BS_SILENCE}X" != "trueX" ]; then
	figlet "BiscuitOS"
fi
# Read Bsbit file
for bsfile in `cat ${BSFILE}`
do
	cd ${PACKDIR}/${bsfile} > /dev/null 2>&1
	## Need rebuild package
	if [ ! -d bsbit ]; then
		make depence > /dev/null 2>&1
		echo "${bsfile}" >> ${TMPFILE}
	else
	## Only install package
		make depence > /dev/null 2>&1
		echo "${bsfile}" >> ${TMPFILE}
	fi
	cd - > /dev/null 2>&1
done

echo "******************************************************"
for bsfile in `cat ${TMPFILE}`
do
	echo "${bsfile}"
done
echo ""
echo "- Package ${PACKAGE} Dependence -"
echo "******************************************************"
