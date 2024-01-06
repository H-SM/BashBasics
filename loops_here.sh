#! /usr/bin/bash

# while loop
n=1
while [ $n -le 10 ]
do 
    echo $n
    # n=$((n+1))
    ((n++))
done
sleep 1 
n=1
# using sleep in while (delay)
while (($n <= 10))
do 
    echo $n
    # n=$((n+1))
    ((n++))
    sleep 1 # in sec
done
