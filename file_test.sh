#! /usr/bin/bash

echo -e "Enter the name of the file : \c"
read file_name 

# if [ -e $file_name ] - if exist or not
# if [ -s $file_name ] - if a empty file or not
# if [ -r $file_name ] - if it has read permission
# if [ -w $file_name ] - if it has write permission 
# if [ -x $file_name ] - if it has executive permission
# if [ -f $file_name ] # if it's a regular file or not (made my touch)
# if [ -d $file_name ] # if it's a directory
# if [ -b $file_name ] # if it's a block special file (binary - image)
# if [ -c $file_name ] # if it's a character special file (text, data)
if [ -s $file_name ] # - if a empty file or not
then 
    echo $file_name found
else 
    echo $file_name not found
fi