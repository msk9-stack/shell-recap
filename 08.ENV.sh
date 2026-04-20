#!/bin/bash

# using ENV variables from the shell

echo "export gold_rate_gms=10000"
echo "\echo "$gold_rate_gms"
echo
echo "export -->is a command"
echo 
echo "gold_rate_gms -->is environmental variable, which was created by export command"
echo 
echo "echo "\$gold_rate_gms" -->will print the value 10000"
