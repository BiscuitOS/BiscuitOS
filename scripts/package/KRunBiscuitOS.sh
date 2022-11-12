#!/bin/ash
# BiscuitOS <buddy.zhang@aliyun.com>

AFTER_NUM=0
BEFORE_NUM=0
COMMAND=

usage() {
	KRunBiscuitOS.sh [-a NUM] [-b NUM]
}

while getopts a:b:h OPT; do
  case ${OPT} in
    a)
        AFTER_NUM="$OPTARG";;
    b)
        BEFORE_NUM="$OPTARG";;
    h)
        usage;;
    ?)
        usage;;
  esac
done

[ $AFTER_NUM  != "0" ] && COMMAND="${COMMAND} -A $AFTER_NUM"
[ $BEFORE_NUM != "0" ] && COMMAND="${COMMAND} -B $BEFORE_NUM"

dmesg | grep "BiscuitOS-stub" ${COMMAND}
