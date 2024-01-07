#! /usr/bin/bash

# function name(){ 
#     cmd1
#     cmd2
#     ---
# }

# name () {
#     cmd1
#     cmd2
#     ---
# }

function hello_here() { 
    echo $1 $2
}

quit(){ 
    exit
}

hello_here "hello message" hi hsm

function printer() { 
    local name=$1 # local variable
    # name=$1 # this isnt a local representation for "name" and will change the global value for "name"
    echo $name 
}

printer hsm

quit

echo this is the main part