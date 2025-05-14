#!/bin/bash

#set -x




echo "enter the number"
read x
for i in {1..100};
do
if [ `expr $i % $x` -eq 0 ] || [ `expr $i % 5` -eq 0 ] && [ `expr $i % $x` -ne 0 ];
then
    echo "$i"
fi
done