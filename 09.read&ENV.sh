#!/bin/bash

echo
printf "learning both read and ENV in this script\n"
echo
printf "let's see the read command\n"
echo
printf 'read -s -p "enter your paasword: " password -->it's a security and you can't see your password while typing it\n'
echo 
printf 'echo "$password" --> this will print your password (for practice purpose, dont use it in real environment\n'
echo
echo
echo "let's see ENV"
echo
printf 'export name=kiran\n'
echo
printf 'export -->is a command\n'
echo
printf "name -->will become environmental variable\n"
echo
printf 'echo "$name" -->this will print the name kiran\n'
echo
printf 'unset --> is a command to remove the env variable\n'
echo
echo "example"
echo
printf 'unset name\n'
echo
echo
printf 'example of read command\n'
echo
echo
read -s -p "enter your paasword: " password
echo
echo "$password"
echo
echo
printf 'for ENV try the export syntax in the shell\n'
echo

