#!bin/bash

printf '******user info**********'
echo

read -p "Enter your name: $NMAE "
echo "Name: $NAME"
echo

read p "Enter your age: $AGE "
echo "Age: $AGE"
echo

printf '*******system info********'
echo

USER=$(user)
PWD=$(pwd)
HOSTNAME=$(hostname)
echo

echo "user: $USER"
echo "pwd: $PWD"
echo "hostname: $hostname"

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
