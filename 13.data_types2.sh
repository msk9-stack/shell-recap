#!/bin/bash

read -s -p server_name "Enter server name: "
echo "server name is: $server_name"
echo

read -s -p CPU_cores "Enter number of CPU cores: "
echo "CPU cores: $CPU_cores"
echo

read -s -p memory "Enter memory in GB: "
echo "memory in GB: $memory"
echo

SERVER_NAME=jklx1
CPU=2
MEMORY=20
echo

TOTAL_CAPACITY=$(($CPU+$MEMORY))
echo

SERVICES=("nginx" "docker" "jenkins")
echo

echo "{all services[@]}"
echo

echo "{first service[0]}"
echo

if [ $TOTAL_CAPACITY -gt 20 ]; then
	echo "High capacity server"
else
	echo "Normal server"
fi
