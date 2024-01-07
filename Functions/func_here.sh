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
quit

echo this is the main part