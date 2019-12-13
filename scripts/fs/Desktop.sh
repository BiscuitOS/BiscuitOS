#!/bin/bash

set -e

ROOT=${1%X}

# Add Sudo 
sudo ${ROOT}/scripts/fs/Desktop_in.sh ${1} ${2} ${3} ${4} \
				${5} ${6} ${7} ${8} ${9} \
				${10} ${11} ${12} ${13} \
				${14} ${15} ${16} ${17} ${18} ${19} \
				${20}
