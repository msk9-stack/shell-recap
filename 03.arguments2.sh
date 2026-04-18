#!/bin/bash

#this script is for creating with variables

NAME1=$1
NAME2=$2

if [ $# -lt 2 ]; then
	echo "need to enter the arguments from out side like $0 <NAME1> < NAME2>"
	exit 1
fi

echo "$NAME1:: hi $NAME2, how are you?"
echo "$NAME2:: hi $NAME1, i am good, thanks for asking $NAME1. how are you doing"
echo "$NAME1:: thank you too $NAME2, its been one year since met"
echo "$NAME2:: yes $NAME1, i really missed you in this past one year"