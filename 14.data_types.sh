#!/bin/bash

read -p "Enter server name: " NAME
echo "***server name: $NAME *********"
echo

uptime
df -h /
free -m
echo

system_load="uptime"
echo

disk_usage="df -h /"
echo

memory="free -m"
echo

AVAILABLE_MEMORY=$(($memory-$disk_usage))
echo

echo "$available memory: $AVAILABLE_MEMORY"
echo

if [ "$AVAILABLE_MEMORY -gt 80% ]; then
	echo "Disk is almost full"
else
	echo "Disk is healthy"
fi

if [ "$memory" -lt 500 ]; then
	echo "Low memory warning"
else
	echo "Memory is sufficient"
fi

