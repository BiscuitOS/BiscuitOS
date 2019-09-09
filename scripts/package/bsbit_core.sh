#!/bin/bash

set -e
#
# Deal with dependence and install package
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

# Check file exist and non-empty
[ ! -n "${BSFILE}" ] && exit 0
[ ! -f ${BSFILE} ] && exit 0
[ ! -d ${PACKDIR} ] && exit 0

# Read Bsbit file
for bsfile in `cat ${BSFILE}`
do
	cd ${PACKDIR}/${bsfile}
	## Need rebuild package
	if [ ! -d ${bsfile} ]; then
		make download ; make prepare; make tar
		make configure ; make ; make install
	else
	## Only install package
		make prepare ; make install
	fi
	cd -
done

if [ "${BS_SILENCE}X" != "trueX" ]; then
	figlet "BiscuitOS"
fi
echo "******************************************************"
echo ""
for bsfile in `cat ${BSFILE}`
do
	echo "${bsfile}"
done
echo ""
echo "- Download - Configure - Compile - Install - Done -"
echo "******************************************************"
