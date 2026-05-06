#!/bin/bash

echo
printf '***check even/odd numbers***\n'
echo

read -p "enter the number: " NUMBER
echo

if [ $(($NUMBER % 2)) -eq 0 ]; then
	echo "the given number $NUMBER is even"
else
	echo "the given number $NUMBER is odd"
fi

echo