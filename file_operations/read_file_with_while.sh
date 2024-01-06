#! /usr/bin/bash

# Types of ways to read files 

# 1. input read direction way

# while read p
# do 
#     echo $p
# done < read_file_with_while.sh

# while loop gets the content (<) file were the content is 

# 2. single variable read

# cat read_file_with_while.sh | while read p
# do 
#     echo $p
# done 

# 3. reading using IFS(Internal Feild seperator)
# IFS=' ' hered (the seperator )
# -r flag -> prevents updation of the content by "\" commands in it 
while IFS= read -r line
do 
    echo $line
done < file_test.sh 
# echo ${line[@]} #TODO: look over what the value here is
