#!/bin/bash

handle_error(){
    echo "Error occured at line number: $1, error command: $2"
}

trap 'handle_error ${LINENO} "$BASH_COMMAND"' ERR

DISK_USAGE=$(df -hT | grep xfs)
DISK_THERSHOULD=6

while IFS= read -r line
do
  USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
  FOLDER=$(echo $line | awk -F " " '{print $NF}')
  if [ $USAGE -ge $DISK_THERSHOULD ]
  
  then
  echo "$FOLDER is greater than $DISK_THERSHOULD, CURRENT USAGE=$usage"
  fi
done <<< $DISK_USAGE