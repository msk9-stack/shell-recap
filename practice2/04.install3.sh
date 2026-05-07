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
		echo "sucess: $2 installed "$R successfully $N" "
	fi
}

echo 

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
echo

for software in "$@"
do  
	dnf install $software -y
	check $? "$software"
done

echo
