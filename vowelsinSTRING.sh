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
read x

numCount=$(echo $x | grep -o "[0-9]" | wc --lines)
vowCount=$(echo $x | grep -o -i "[aeiou]" | wc --lines)
#vowCount=$(echo $x | grep -o -i "[AEIOUaeiou]" | wc --lines)
consCount=$(echo $x | grep -o -i "[bcdfghjklmnpqrstvwxyz]" | wc --lines)

echo "The given string has $vowCount vowels, $consCount consonants and $numCount numbers in it."

 