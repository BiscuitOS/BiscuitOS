#!/bin/bash

# This is a qemu-ifup script for bridging.
# You can use it when starting a KVM guest with bridge mode network.
# set your bridge name

PORT=eth0
USER=BiscuitOS
NET_SET=91.10.16

if test -z $1 ; then
	echo "Need a argument: down/up"
	exit
fi 
 
if [ "up" = $1 ] ; then
	brctl addbr br0
 
	ifconfig ${PORT} down
	brctl addif br0 ${PORT}
 
	brctl stp br0 off
 
	ifconfig br0 ${NET_SET}.3 netmask 255.255.255.0 promisc up
	ifconfig ${PORT} ${NET_SET}.2 netmask 255.255.255.0 promisc up
 
	tunctl -t tap0 -u ${USER}
	ifconfig tap0 ${NET_SET}.4 netmask 255.255.255.0 promisc up
	brctl addif br0 tap0
else
	ifconfig tap0 down
	brctl delif br0 tap0
 
	ifconfig ${PORT} down
	brctl delif br0 ${PORT}
 
	ifconfig br0 down
	brctl delbr br0
fi
