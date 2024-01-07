#! /usr/bin/bash

# for loops 

# for VARIABLE in 1 2 3 4 5 .. N
# do 
#     cmd1 
#     cmd2
#     --- 
# done

# ---OR---

# for VARIABLE in file1 file2 file3
# do 
#     cmd1 on $VARIABLE
#     cmd2
#     --- 
# done

# ---OR---

# for OUTPUT in $(Linux Command here)
# do 
#     cmd1 on $OUTPUT
#     cmd2 on $OUTPUT
#     --- 
# done

# ---OR---

# for ((EXP1; EXP2; EXP3)) <-- sam eas in cpp
# do 
#     cmd1 
#     cmd2 
#     --- 
# done

# for i in 1 2 3 4 5
# do 
#     echo $i
# done
# echo ${BASH_VERSION}

# for i in {10..1..2} #{START..END..INCREMENT}
# do 
#     echo $i
# done

for ((i=0;i<5;i++)) 
do 
    echo $i
done

# USING FOR LOOPS WITH COMMANDS 
echo 

for command in ls pwd date
do 
    echo ------$command------- 
    $command 
done

echo 

for item in *
do 
    if [ -d $item ] # if the sub-item is a directory
    then
        echo $item 
    fi
    if [ -f $item ] # if the sub-item is a file
    then
        echo "|- $item" 
    fi
done
