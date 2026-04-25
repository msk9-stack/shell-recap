#!/bin/bash

read -p "enter server name: " SERVER
echo 
echo "*****$SERVER memory info*****"
echo

DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

AVAILABLE_MEMORY=$(free -m | awk 'NR==2 {print $7}')

if [ $DISK_USAGE -lt 70 ]; then
	echo "Disk Warning"
else
	echo "Disk OK"
fi

echo

if [ $AVAILABLE_MEMORY -lt 500 ]; then
	echo "Memory Low"
else
	echo "Memory OK"
fi

echo
