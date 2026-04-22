#!/bin/bash

printf "let's learn special variables in this script\n"
echo 

printf  "to pass all the arguments: $@\n"
echo 

printf  "to pass all the arguments: $*\n"
echo

printf  "to print the script name: $0\n"
echo 

printf  "to find who is running this script: $USER\n"
echo 

printf "to find the user's home directory: $HOME\n"
echo 

printf "to find which directory we are currently in(present working directory): $PWD\n"
echo 

printf "to find the PID of the script: $$\n"
echo 

sleep 50 &

printf "to find last PID of the script: $!\n"
echo 

