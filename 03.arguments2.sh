#!/bin/bash

#this script is for creating with variables

NAME1=$1
NAME2=$2

if [ $# -lt 2 ]; then
	echo "need to enter the arguments from out side like $0 <NAME1> < NAME2>"
	exit 1
fi

echo "siva:: hi krishna, how are you?"
echo "krishna:: hi siva, i am good, thanks for asking siva. how are you doing"
echo "siva:: thank you too krishna, its been one year since met"
echo "krishn:: yes siva, i really missed you in this past one year"