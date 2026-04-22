#!/bin/bash

printf "let's learn variables in this script\n"
echo

printf "lets's see how much time this script will take to execute\n"
echo

START_TIME=$(date +%s)
echo

sleep 10
echo

END_TIME=$(date +%s)
echo

TOTAL_TIME=$((START_TIME-END_TIME))
echo

echo "the total duration of the script is: $TOTAL_TIME"
echo
