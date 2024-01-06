#! /usr/bin/bash

age=90
# if [ "$age" -gt 18 ] || [ "$age" -gt 30 ]
# OR 
# if [[ "$age" -gt 18 || "$age" -lt 30 ]]
# OR 
if [ "$age" -gt 18 -o "$age" -gt 30 ]
then 
    echo valid age 
else 
    echo invalid age 
fi 