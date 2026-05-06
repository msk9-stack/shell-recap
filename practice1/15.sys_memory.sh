#!/bin/bash

read -p "enter server name: " SERVER
echo 
echo "*****$SERVER memory info*****"
echo

DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

AVAILABLE_MEMORY=$(free -m | awk 'NR==2 {print $7}')
echo

echo "disk usage is: $DISK_USAGE"
echo

if [ $DISK_USAGE -lt 70 ]; then
	echo "Disk Warning"
else
	echo "Disk OK"
fi

echo
echo "available memory is: $AVAILABLE_MEMORY"
echo

if [ $AVAILABLE_MEMORY -lt 500 ]; then
	echo "Memory Low"
else
	echo "Memory OK"
fi






