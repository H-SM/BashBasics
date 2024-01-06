#! /usr/bin/bash

age=21
# if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
# OR 
# if [[ "$age" -gt 18 && "$age" -lt 30 ]]
# OR 
if [ "$age" -gt 18 -a "$age" -lt 30 ]
then 
    echo valid age 
else 
    echo invalid age 
fi 