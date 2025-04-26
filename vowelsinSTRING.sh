#!/bin/bash

userid=$(id -u)



if [ $userid -ne 0 ]
then
    echo "you are not in superuser"
    exit 1 #manually exit if error occurs
else
    echo "print you are  in superuser"
fi         




echo "Enter a line of text"
read string

numCount=$(echo  grep -o "[0-9]" <<< $string | wc --lines)
vowCount=$(echo  grep -o  -i "[aeiou]" <<< $string | wc --lines)
#vowCount=$(echo $string | grep -o -i "[AEIOUaeiou]" | wc --lines)
consCount=$(echo  grep -o  -i "[bcdfghjklmnpqrstvwxyz]" <<< $string | wc --lines)

echo "The given string has $vowCount vowels, $consCount consonants and $numCount numbers in it."

 