#!/bin/bash

echo
printf '*****user info*****\n'
echo

read -p "enter your name: " NAME
echo

read -p "enter your age: " AGE
echo

printf '******system info******\n'
echo

USER=$(whoami)
PWD=$(pwd)
HOSTNAME=$(hostname)
echo

echo "user: $USER"
echo "pwd: $PWD"
echo "hostname: $HOSTNAME"
echo

if [ $AGE -gt 25 ]; then
	echo "experienced professional"
else
	echo "young professional"
fi

echo

TOOLS=("CICD" "docker" "kuberneties")

echo "TOOLS: ${TOOLS[@]}
echo

echo "TOOLS: ${TOOLS[0]}"
echo



