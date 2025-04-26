#!/bin/bash

#set -x

for i in {1..100};
do
if [ `expr $i % 2` == 0 ] 
then
    echo "$i"
fi
done