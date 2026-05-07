#!/bin/bash

echo
printf '***loops***\n'
echo

echo
echo "script started executing at: $(date)" | tee -a $LOG_FILE

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
	echo "error: this script can be installed only with root user"
	exit 1
fi

LOG_FOLDER="/var/log/loops_logs"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.logs"

mkdir -p $LOG_FOLDER

VALIDATE(){
	if [ $1 -ne 0 ]; then
		echo "errpr: the script $2 ${R}can not be installed${N}" | tee -a $LOG_FILE
	else
		echo "success: the script $2 ${G}will be installed${N}" | tee -a $LOG_FILE
	fi
}

echo

for package in "$@"
do
	if [ $? -ne 0 ]; then
		echo "error: $package ${R}failed${N} to install" | tee -a $LOG_FILE
		dnf list installed $package 
		echo "the $package already intalled...${Y}sSKIPPING${N}" | tee -a $LOG_FILE
	else
		echo "$package is installing.........." | tee -a $LOG_FILE
		dnf install @package -y &>>$LOG_FILE
		VALIDATE $? $package
	fi
done

echo

echo "script execution ended at: $(date)" | tee -a $LOG_FILE

echo