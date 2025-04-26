#!/bin/bash
userid=$(id -u)

if [ $userid -eq 0 ]
then
    echo "your are in superuser"
    exit 1
else
   echo "your are not in super user"
fi



FILES=$(grep 'pypi' sandeep.txt)

#xfs storage all lines will come to read this lines we use while loop 

while IFS= read -r line
do
  echo "text=$(echo $line | awk -F " " '{print $1, $3}')"
  awk -F " " '{print $1 " == " $2}' $line
done <<< $FILES


