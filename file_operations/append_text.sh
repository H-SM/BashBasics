#! /usr/bin/bash

echo -e "Enter the name of the file : \c"
read file_name 
# -f -> file exist and is a valid file or not 
if [ -f $file_name ] 
then 
    if [ -w $file_name ]
    then 
        echo -e "Type something to the file...(text data).\n[ctrl + d to exit]"
        cat >> $file_name 
    else
        echo "$file_name doesn't have required permissions" 
    fi
else 
    echo $file_name not exists
fi