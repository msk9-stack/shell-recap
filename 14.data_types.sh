#!/bin/bash

read -p "Enter server name" NAME
echo "***server name: $NAME *********"
echo

uptime
df -h /
free -m

system_load=$(uptime)
echo

disk_usage=$(df -h /)
echo

memory=$(free -m)
echo

AVAILABLE_MEMORY=$(($memory-$disk_usage))
echo

echo "$available memory: $AVAILABLE_MEMORY"
echo