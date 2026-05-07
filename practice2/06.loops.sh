#!/bin/bash

echo
printf '***loops***\n'
echo

echo
echo "script started executing at: $(date)" | tee -a $LOG_FILE
echo

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo 

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
	echo "error: this script can be installed only with root user"
	exit 1
fi

echo

LOG_FOLDER="/var/log/loops_logs"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.logs"

echo

mkdir -p $LOG_FOLDER

echo

VALIDATE(){
	if [ $1 -ne 0 ]; then
		echo -e "error: the script $2 ${R}can not be installed${N}" | tee -a $LOG_FILE
	else
		echo -e "success: the script $2 ${G}will be installed${N}" | tee -a $LOG_FILE
	fi
}

echo

for package in "$@"
do
    dnf list installed "$package" &>>"$LOG_FILE"

    if [ $? -ne 0 ]; then

        echo "$package is installing..." | tee -a "$LOG_FILE"

        dnf install "$package" -y &>>"$LOG_FILE"

        VALIDATE $? "$package"

    else
        echo -e "$package already installed... ${Y}SKIPPING${N}" | tee -a "$LOG_FILE"
    fi
done

echo

echo "script execution ended at: $(date)" | tee -a $LOG_FILE

echo