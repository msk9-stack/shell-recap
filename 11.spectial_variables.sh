#!bin/bash

printf 'let's learn special variables in this script\n'
printf 

printf  'to pass all the arguments: $@\n'
printf 

printf  'to pass all the arguments: $*\n'
printf 

printf  'to print the script name: $0\n'
printf 

printf  'to find who is running this script: $USER\n'
printf 

printf 'to find the user's home directory: $HOME\n'
printf 

printf 'to find which directory we are currently in(present working directory): $PWD\n'
printf 

printf 'to find the PID of the file: $$\n'
printf 

sleep 50 &

printf 'to find last PID of the file: $!\n'
printf 

