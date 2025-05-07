#!/bin/bash

#set -x


echo "enter a number"
read x
for i in {1..100};
do
if [ `expr $i % $x` == 0 ] || [ `expr $i % 10` == 0 ] && [ `expr $i % 15` != 0 ];
then
    echo "$i"
fi
done