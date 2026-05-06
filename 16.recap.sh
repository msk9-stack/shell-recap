#!bin/bash

printf '******user info**********'
echo

read -p "Enter your name: $NMAE "
echo

read -p "Enter your age: $AGE "
echo

printf '*******system info********'
echo

USER=$(id)
PWD=$(pwd)
HOSTNAME=$(hostname)
echo

echo "user: $USER"
echo "pwd: $PWD"
echo "hostname: $HOSTNAME"

if [ "$AGE" -gt 25 ]; then
	echo "Experienced professional"
else
	echo "Young professional"
fi

echo

printf '*******expertise in********'
echo

TOOLS=("linux" "docker" "jenkins")
echo

echo "TOOLS: $@"
echo

echo "First tool: $0"
echo
