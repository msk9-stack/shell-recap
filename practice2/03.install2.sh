#!/bin/bash

echo
printf '***functions***\n'
echo

USERID=$(id -u)
echo

if [ $USERID -ne 0 ]; then
	echo "error: execute this script as root user"
	exit 1
fi

echo

check(){
	if [ $1 -ne 0 ]; then
		echo "error: $2 installation failed"
		exit 1
	else
		echo "sucess: $2 installed successfully"
	fi
}

echo

read -p "enter the script name: " script

echo

dnf install $script -y
check $? "$script"

echo
