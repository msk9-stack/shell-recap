#!/bin/bash

echo
printf "learning both read and ENV in this script"
echo
printf "let's see the read command"
echo
printf "read -s -p "enter your paasword: " password -->it's a security and you can't see your password while typing it"
echo 
printf "echo "$password" --> this will print your password (for practice purpose, don't use it in real environment"
echo
echo
echo "let's see ENV"
echo
printf "export name=kiran"
echo
printf "export -->is a command"
echo
printf "name -->will become environmental variable"
echo
printf "echo "$name" -->this will print the name kiran"
echo
printf "unset --> is a command to remove the env variable"
echo
echo"example"
echo
printf "unset name=kiran"
echo
echo
printf "example of read command"
echo
echo
read -s -p "enter your paasword: " password
echo
echo "$password"
echo
echo
printf "for ENV try the export syntax in the shell"
