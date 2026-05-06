#!/bin/bash

USERID=$(id -u)
echo

if [ $USERID -eq 0 ]; then
	echo "package will be installed"
	exit 1
fi

echo

read -p "enter the pakage: " pakage_name

sudo dnf install $pakage_name -y

if [ $? -eq 0 ]; then
	echo "package installed successfully"
else
	echo "ERROR: installation failed"
fi

echo
