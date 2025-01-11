#!/bin/bash

userid=$(id -u)



if [ $userid -ne 0 ]
then
    echo "you are not in superuser"
    exit 1 #manually exit if error occurs
else
    echo "print you are  in superuser"
fi         




clear
echo "write something"
read str
len=$(expr length $str)
count=0
while [ $len -gt 0 ]
do
   ch=$(echo $str | cut -c $len)
   case $ch in
      [aeiouAEIOU] )
         count=$(($count + 1))
         echo $ch
      ;;
   esac
   len=$(( $len - 1 ))
done
echo $count
 