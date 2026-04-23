#!/bin/bash

echo "this script will demonstrate what are the date types and how they work"
echo

BATTERS=4
BOWLERS=3
ALL_ROUNDERS=4
GAME=cricket
echo

SUM=$(($BATTERS+$BOWLERS+$ALL_ROUNDERS+GAME))
echo

BATTER_NAMES=("ROHIT" "KOHLI" "SREYAS" "TILAK")
echo

echo "BATTERS: ${BATTER_NAMES(0)} "
echo