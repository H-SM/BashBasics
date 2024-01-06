#! /usr/bin/bash

# case exp in 
#     pattern1 ) 
#         statements ;; 
#     pattern2 ) 
#         statements ;;   
#     ...
# esac 

# vehicle=$1 

# case $vehicle in 
#     "car" ) 
#         echo rent of $vehicle is 300 rupees ;; 
#     "van" ) 
#         echo rent of $vehicle is 600 rupees ;;   
#     "cycle" ) 
#         echo rent of $vehicle is 30 rupees ;;
#     "truck" ) 
#         echo rent of $vehicle is 800 rupees ;;
#     * ) 
#         echo wrong input ;;
# esac

echo -e "Enter some character : \c" 
read value 

case $value in 
    [a-z] ) 
        echo entered a character a - z ;; 
    [A-Z] ) 
        echo entered a capital character A - Z ;;   
    [0-9] ) 
        echo entered a number btw 0 - 9 ;;
    ? ) 
        echo special character ;;
    * ) 
        echo wrong input ;;
esac