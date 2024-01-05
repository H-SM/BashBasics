#! /usr/bin/bash

num1=20
num2=5 

echo $((num1 + num2))
echo $((num1 - num2))
echo $((num1 * num2))
echo $((num1 / num2))
echo $((num1 % num2))

# using expr
echo $(expr $num1 / $num2)
echo $(expr $num1 + $num2)
echo $(expr $num1 - $num2)
echo $(expr $num1 \* $num2) # only for multiple
