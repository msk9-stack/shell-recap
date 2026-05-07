#!/bin/bash

echo

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo
USERID=$(id -u)
echo

if [ "$USERID" -ne 0 ]; then
	echo "error: run this script as root user"
	exit 1
fi

echo

log_folder="/var/log/shell-logs"
script_name="( echo $0 | cut -d "." -f2 )"
log_file="$log_folder/$script_name"

echo
mkdir -p $log_file
echo "script started executing at: $(date)" | tee -a $log_file
echo

VALIDATE(){
	if [ $1 -ne 0 ]; then
		echo "error: $2 failed to install...INSTALLATION $R FAILED $N" | tee -a $log_file
	else
		echo "success: $2 installed....INSTALLATION $G COMPLETED $N" | tee -a $log_file
	fi
}

echo

for package in "$@"
	do
		dnf list installed $package &>>$log_file
		
		if [ $? -ne 0 ]: then
			echo "$package is installing..." | tee -a $log_file
			dnf install $package -y &>>$log_file
			VALIDATE @? "$package"
		else
			echo "$package already installed..$Y skipping... $N" | tee -a $log_file
		fi
	done
	
echo
echo "script execution completed at: $(date)" | tee -a $log_file
echo
