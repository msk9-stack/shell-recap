#!/bin/bash

echo
USERID=$(id u)
echo

if [ "$USERID" -ne 0 ]; then
	echo "ERROR: script can be installed only with root user"
	exit 1
fi

echo
read -p "enter the script name: " script
echo

dns install $script -y
echo

if [ $? -eq 0 ]; then
	echo "script installed successfully"
else
	echo "ERROR: installation failed"
fi

echo