#!/bin/bash

userid=$(id -u)



if [ $userid -ne 0 ]
then
    echo "you are not in superuser"
    exit 1 #manually exit if error occurs
else
    echo "print you are  in superuser"
fi         




read  "Enter something"
if [ $char -eq [AEIOUaeiou] ]; 
then
    echo "vowel"
else
    echo "consonant"
fi  