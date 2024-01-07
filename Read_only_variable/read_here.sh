#! /usr/bin/bash

var=31

readonly var 

var=3

echo $var

# ./read_here.sh: line 7: var: readonly variable
# 31

hello() { 
    echo hello world
}

readonly -f hello # use -f flag tto make a function a readonly func
hello 

hello() { 
    echo hello world again
}

echo
readonly # lists all readonly variable connected to the script
readonly -f # all functions which are readonly 
