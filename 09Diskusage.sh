#!/bin/bash

DISK_USAGE=$(dnf -hT | grep xfs)
DISK_THERSHOULD=6

while IFS= read -r line
do
  USAGE=$(echo $line | awk -F " " '{print $6F}' | cut -d "%" -f1)
  FOLDER=$(echo $line | awk -f " " '{print $Nf}')
  if [ $USAGE -ge $DISK_THERSHOULD ]
  then
  echo "$FOLDER is greater than $DISK_THERSHOULD, CURRENT USAGE=$usage"
  fi
done <<< DISK_USAGE