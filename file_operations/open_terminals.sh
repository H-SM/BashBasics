#! /usr/bin/bash

# terminal -e command
n=1
# using sleep in while (delay)

while (($n <= 3))
do 
    konsole &
    ((n++))
    # sleep 1 # in sec
done
