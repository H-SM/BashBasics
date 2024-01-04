#! /usr/bin/bash

echo $0 $1 $2 $3 '> echo $1 $2 $3'

args=("$@")

echo ${args[1]} ${args[2]} ${args[0]}
echo $@
# $@ <- points to the arguments passed to the script

echo $#
# $# <- number of arguments passed