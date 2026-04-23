#!/bin/bash

read -s -p "Enter server name: "
echo "server name is: $@"
echo

read -s -p "Enter number of CPU cores: "
echo "CPU cores: $@"
echo

read -s -p "Enter memory in GB: "
echo "memory in GB: $@"
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
