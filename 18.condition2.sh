#!/bin/bash

echo
printf '***conditions***\n'
echo

printf '%s\n' '-lt' '-eq' '-gt' '-ne'
echo

read -p "enter user name: " NAME
echo

read -p "enter user age: " AGE
echo

printf '***experience***\n'
echo

if [ "$AGE" -gt 30 ]; then
	echo "senior engineer"
else
	echo "junior engineer"
fi

echo

printf '***skills***\n'
echo

SKILLS=("linux" "shell_scripting" "ansible")
echo

echo "all skills: ${SKILLS[@]}"
echo

echo "first skill: ${SKILLS[0]}"
echo

