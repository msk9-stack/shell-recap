#!/bin/bash

echo
printf '***conditions***\n'
echo

printf '-lt\n'
printf '-gt\n'
printf '-eq\n'
printf '-ne\n'
echo

NUMBER=$1

if [ "$NUMBER" -lt 10 ]; then
	echo "the given number $NUMBER is: less than 10"
elef [ "$NUMBER" -eq 10 ]; then
	echo "the given number $NUMBER is: eqal to 10"
elef [ "$NUMBER" -ne 10 ]: then
	echo "the given number $NUMBER is: not equal to 10"
else
	echo "the given number $NUMBER is: greater than 10"
fi

echo