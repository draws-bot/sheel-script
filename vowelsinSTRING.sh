#!/bin/bash

userid= $(id -u)


if [ $userid -ne 0 ]
then
    echo "you are not in superuser"
else
    echo "you are in superuser"
fi


# cat for_vowels.sh



read  "Enter something"
if [ $char -eq [AEIOUaeiou]* ]; 
then
    echo "vowel"
else
    echo "consonant"
fi  