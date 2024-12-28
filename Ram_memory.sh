#!/bin/bash



DISK_USAGE=$(free -m)
DISK_THERSHOULD=200

#xfs storage all lines will come to read this lines we use while loop 

while IFS= read -r line
do
  USAGE=$(echo $line | awk -F " " '{print $3F}')
  FOLDER=$(echo $line | awk -F " " '{print $1F}')
  if [ $USAGE -ge $DISK_THERSHOULD ]
  
  then
  echo "$FOLDER is greater than $DISK_THERSHOULD, CURRENT USAGE=$USAGE"
  fi
done <<< $DISK_USAGE