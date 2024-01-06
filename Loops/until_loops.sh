#! /usr/bin/bash

# until loops (until the condition isn't true)
n=1
until [ $n -gt 10 ]
do 
    echo $n 
    ((n++))
done
