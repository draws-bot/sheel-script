#!/bin/bash



DISK_USAGE=$(df -hT | grep xfs)
DISK_THERSHOULD=6

#xfs storage all lines will come to read this lines we use while loop 

while IFS= read -r line
do
  USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
  FOLDER=$(echo $line | awk -F " " '{print $NF}')
  if [ $USAGE -ge $DISK_THERSHOULD ]
  then
  echo "$FOLDER is greater than $DISK_THERSHOULD, CURRENT USAGE=$USAGE"
  fi
done <<< $DISK_USAGE