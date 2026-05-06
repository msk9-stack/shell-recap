#!/bin/bash

# using ENV variables from the shell

echo
echo "type the below syntax in the shell"
echo
echo "export gold_rate_gms=10000"
echo
echo "then type below syntax"
echo
echo 'echo "$gold_rate_gms"'
echo
echo "you will see 10000"
echo
echo "here: -->"
echo 
echo "export -->is a command"
echo 
echo "gold_rate_gms -->is environmental variable, which was created by export command"
echo 
printf 'echo "$gold_rate_gms" -->will print the value 10000'
echo
echo
echo "that's all"