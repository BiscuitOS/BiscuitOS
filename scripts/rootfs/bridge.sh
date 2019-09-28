#!/bin/bash

# This is a bridge script for bridging.
# You can use it when starting a KVM guest with bridge mode network.
# set your bridge name
#
# (C) 2019.09.06 BiscuitOS <buddy.zhang@aliyun.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.
#

echo "[BiscuitOS] Default Brigde: bsBridge0 Configure"

# Tap
TAP=bsTap0
# Bridge
BRIDGE=bsBridge0
IP=
MASK=
AIP=192
BIP=88
uBIP=
CIP=28
DIP=88
NIC=
GW=
# ROOT
NET_CFG=/tmp/BiscuitOS_NetCfg.cfg
UBUNTU_VERSION=`lsb_release -r --short`

# Check whether special net device exist
# @$1: Device name (Include: Bridge, Eth, Tap ...etc)
# 
# Common command:
# -> ls /sys/class/net
# -> ifconfig | grep "Link" | awk '{print $1}'
nic_check()
{
	local nics=`ls /sys/class/net`
	for nic in ${nics}
	do
		# Find special device nic
		[ ${nic}X = ${1}X ] && return 0		
	done
	# No fond
	return 1
}

#
# Obtain valid netcard and IP
# Current IP addr
# -> ifconfig $nic | grep 'inet addr:' | grep -v '127.0.0.1' | cut -d: -f2 | awk '{print $2}'
# -> ifconfig $nic | awk '/inet addr:/{ print $2 }' | awk -F: '{print $2}'
#
get_current_ip_nic()
{
	nics=$(route -n | grep ^0.0.0.0 | awk '{print $8}')
	for nic in ${nics}
	do
		if [ ${UBUNTU_VERSION} = "16.04" ]; then
			ip=$(ifconfig $nic | awk '/inet addr:/{ print $2 }' | awk -F: '{print $2}')
		else
			ip=$(ifconfig $nic | grep 'inet ' | grep -v '127.0.0.1' | cut -d: -f2 | awk '{print $2}')
		fi
		ping -I ${nic} www.baidu.com -c1 -W1 -w 0.1 > /dev/null 2>&1
		[ $? -eq 0 ] && NIC=${nic} && IP=${ip} && return 0
	done

	[ -z ${NIC} ] && echo "Can't find valid NetCard." && return 1
	[ -z ${IP} ] && echo "Invalid IP for ${NIC}" && return 1
}

# 
# Check NIC whether configure IP
check_ip()
{
	ip=$(ifconfig $1 | grep -E 'inet\s+' | sed -E -e 's/inet\s+\S+://g' | awk '{print $2}')
	[ ! ${ip} ] && return 1
	return 0
}

# Calculate AIP, BIP, CIP, DIP field. Default MASK is 255.255.255.0
# 
ip_calculate()
{
	# A class IP Address field
	AIP=${IP%%.*}
	# D class IP Address field
	DIP=${IP##*.}

	tmpip1=${IP%.*}
	tmpip2=${IP#*.}

	# B class IP Address field
	uBIP=${tmpip2%%.*}
	# User private B class field
	[ "${uBIP}"X = "${BIP}"X ] && BIP=$((${BIP}-1))
	# C class IP Address field
	CIP=${tmpip1##*.}

	# MASK
	MASK=255.255.255.0
}


# Establish Connect
#
establish_net()
{
	# Establish bridge on Host
	nic_check ${BRIDGE} ; [ $? = 1 ] && sudo brctl addbr ${BRIDGE}
}

# Search a unused IP
allocate_ip()
{
	for i in {1..254}
	do
		ping -c 1 -w 1 ${AIP}.${BIP}.${CIP}.${i} > /dev/null 2>&1
		[ $? -ne 0 ] && DIP=${i} && return 0
	done
	return 1
}

# Default gw
default_gw()
{
	echo `route -n | grep ${NIC} | grep UG | awk '{print $2}'` > .tmp
	uGW=`cat .tmp`
	GW=${uGW%% *}
}

# Get Current IP and NIC
get_current_ip_nic ; [ $? = 1 ] && exit 0

# Calculate IP: A,B,C,D field and Mask
ip_calculate

# Establish Birdge
establish_net

# Allocate IP for Birdge
check_ip ${BRIDGE}
[ $? = 0 ] && exit 0
sudo ifconfig ${BRIDGE} ${AIP}.${BIP}.1.1/24 promisc up

# Setup Gatway
# obtain default gw for $NIC
default_gw
[ ! ${GW} ] && GW=${AIP}.${BIP}.1.1 && sudo route add default gw ${GW}
# Add all IP field into default gatway
# sudo route add -net 0.0.0.0 netmask 0.0.0.0 gw ${GW} 

# Tun on forward on Host
sudo echo 1 > /proc/sys/net/ipv4/ip_forward

# Setup NAT
sudo iptables -F
sudo iptables -X
sudo iptables -Z
sudo iptables -t nat -A POSTROUTING -o ${NIC} -j MASQUERADE

# Store Netwrok configure information
cat << EOF > ${NET_CFG}
[bsBridge0] ${AIP}.${BIP}.1.1
[GatWay] ${GW}
[NIC] ${NIC}
EOF
