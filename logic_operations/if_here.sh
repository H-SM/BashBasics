#! /usr/bin/bash

# LIST OF OPERATORS 
# -eq - is equal to - if [ "$a" -eq "$b"]
# -ne - is not equal to 
# -gt - greater than 
# -ge - is greater than or equal to 
# -lt - is less than  
# -le - is less than or equal to 
# > - greater than - if (("$a" > "$b"))
# >= - is greater than or equal to 
# < - is less than  
# <= - is less than or equal to 

# STRING COMPARISON 
#  = - is equal to - if [ "$a" = "$b" ]
#  == - is equal to - if [ "$a" == "$b" ]
#  != - is not equal to - if [ "$a" != "$b" ]
# > - greater than (ASCII) - if [["$a" > "$b"]]
# < - is less than (ASCII) - if [["$a" < "$b"]]
# -z - string is null(0) 

word=abc
if [ $word == "abc" ]
then 
    echo yea
else
    echo no
fi 
echo this is $word
aplha=j
if [ $alpha ]
then 
    echo empty
elif [[ $aplha > "h" ]]
then
    echo greater ascii than h
else 
    echo lesser ascii than h
fi 
echo this is $aplha
