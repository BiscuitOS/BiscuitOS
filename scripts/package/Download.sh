#!/bin/bash

# ROOT
BSFILE=$1/dl/HardStack.BS

# DEFAULT URL
DEFAULT_URL=$2
# FILE
DLFILE=$3

[ ! -f $BSFILE ] && exit 0

# CLEAR
[ -f Makefile ] && exit 0

# TARGET DIR
TARGET_DIR=${DEFAULT_URL#https://gitee.com/BiscuitOS_team/HardStack/raw/Gitee/}

while IFS= read -r line; do
	if [ "$line" = "[PATH]" ]; then
		read -r FILE_PATH
		if [ -d ${FILE_PATH}/${TARGET_DIR} ]; then
			if [ $(find "${FILE_PATH}/${TARGET_DIR}" -type f | wc -l) -gt 0 ]; then
				# EXIST
				cp -rfa ${FILE_PATH}/${TARGET_DIR}/* ./ 
				echo "Download Finish"
				exit 0
			fi
		fi
	fi
done < "$BSFILE"

# DOWNLOAD FROM URL
for file in ${DLFILE}
do
	wget ${DEFAULT_URL}/${file} 
done
echo "Download Finish"
