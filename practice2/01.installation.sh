#!/bin/bash

USERID=$(id -u)
echo

if [ $USERID -ne 0 ]; then
	echo "ERROR: package will be installed only by root user"
	exit 1
fi

echo

read -p "enter the pakage: " pakage_name

dnf install $pakage_name -y

if [ $? -eq 0 ]; then
	echo "package installed successfully"
else
	echo "ERROR: installation failed"
fi

echo
