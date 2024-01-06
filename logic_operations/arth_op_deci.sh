#! /usr/bin/bash

num1=20.5
num2=5.5

# using [ man bc ] for floating type arthematic operations
echo "20.5+5.5" | bc
echo "20.5*5.5" | bc
echo "20.5/5.5" | bc
echo "scale=2;20.5/5.5" | bc

echo "$num1+$num2" | bc
num=27
echo "scale=2;sqrt($num)" | bc -l
# -l -> to call the math library 
echo "scale=2;3^$num" | bc -l
