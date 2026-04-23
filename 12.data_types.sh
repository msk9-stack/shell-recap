#!/bin/bash

echo "this script will demonstrate what are the date types and how they work"
echo
printf "if we take creicketer's as an examples, let's see below\n"
echo
BATTERS=4
BOWLERS=3
ALL_ROUNDERS=4
GAME=cricket
echo
TOTAL=$(($BATTERS+$BOWLERS+$ALL_ROUNDERS+GAME))
echo

echo "TOTAL PLAYERS: $TOTAL "

BATTER_NAMES=("ROHIT" "KOHLI" "SREYAS" "TILAK")
echo

echo "BATSMAEN: ${BATTER_NAMES[@]}"
echo
echo "OPENER1: ${BATTER_NAMES[0]}"
echo
echo "OPENER2: ${BATTER_NAMES[1]}"
echo
echo "ONE_DOWN: ${BATTER_NAMES[2]}"
echo
echo "TWO_DOWN: ${BATTER_NAMES[3]}"
echo