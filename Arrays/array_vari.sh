#! /usr/bin/bash

# supports 1D arrays
os=('arch' 'windows' 'fedora' 'kali')

echo "${os[@]}"
echo "${os[0]}"
echo "${!os[@]}" # gives out the indexs 
echo "${#os[@]}" # gives the length of array

os[4]='debian'
echo "${os[@]}"

os[2]='mac'
echo "${os[@]}"

# remove an ele from array
unset os[2]
echo "${os[@]}"
echo "${!os[@]}" # 0 1 3 4

unset os[2] # this wont work now as the 2nd index is already null 
echo "${os[@]}"

string=qwerty
echo "${string[@]}"
echo "${string[0]}"
echo "${string[1]}" # this will be empty (string is in the 1st ele of 'string' heap array) it doesn't store the string in a heap fashion.


