#! /usr/bin/bash

# select loops 

# select command in list 
# do 
#     cmd1
#     cmd2
#     ---
# done

# select name in hsm sid vin ben 
# do 
#     echo $name selected rn
# done

# 1) hsm
# 2) sid
# 3) vin
# 4) ben
# #? 3
# vin selected rn
# #? 1
# hsm selected rn
# #? 2
# sid selected rn
# #? 4
# ben selected rn
# #? 5
# selected rn
# #? 

# this loop is often used with case statements 

select name in hsm sid vin ben 
do 
    case $name in 
    hsm ) 
        echo this is me.
        ;;
    sid ) 
        echo this is a Sloth.
        ;;
    vin ) 
        echo he is a NOOB.
        ;;
    ben )
        echo unknown identity
        ;;
    * ) 
        echo "type correctly. You don't know how to type?"
    esac
done

