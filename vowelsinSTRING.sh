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

numCount=$(echo $string | grep -o "[0-9]" | wc --lines)
vowCount=$(echo $string | grep -o -i "[aeiou]" | wc --lines)
consCount=$(echo $string | grep -o -i "[bcdfghjklmnpqrstvwxyz]" | wc --lines)

echo "The given string has $vowCount vowels, $consCount consonants and $numCount numbers in it."

 