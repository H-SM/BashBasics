#! /usr/bin/bash

echo "Enter names : "
read -a names 
echo ${names[0]} , ${names[1]}

echo "name: "
read  # if no variable here -> goes to reply var 
echo $REPLY
