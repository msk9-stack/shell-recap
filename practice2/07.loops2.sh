#!/bin/bash

echo
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
echo

USERID=$(id -u)

if [ "$USERID" -ne 0 ]; then
	echo "error: run this script as root user"
	exit 1
fi

LOG_FOLDER="/var/log/loops_logs"
SCRIPT_NAME=$(echo "$0" | cut -d "." -f1)
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"

echo

mkdir -p $LOG_FOLDER

echo "script started executing at: $(date)" | tee -a $LOG_FILE
echo

VALIDATE(){
	if [ $1 -ne 0 ]; then
		echo -e "error: $2 ${R}failed${N} to install" | tee -a $LOG_FILE
	else
		echo -e "success: $2 installed ${G}successfully${N}" | tee -a $LOG_FILE
	fi
}

for package in "$@"
do
	dnf list installed "$package" &>>$LOG_FILE
	if [ $? -ne 0 ]; then
		echo "$package is installing..............." | tee -a $LOG_FILE
		dnf install "$package" -y &>>$LOG_FILE
		VALIDATE $? "$package"
	else
		echo -e "$package already ${G}installed${N}...${Y}SKIPPING${N}" | tee -a $LOG_FILE
	fi
done

echo

echo "script ended at: $(date)" | tee -a $LOG_FILE
echo

		
	