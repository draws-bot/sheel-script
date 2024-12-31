#!/bin/bash

CPU_USAGE=$(ps -eo pid,ppid,%mem,%cpu,cmd --sort=-%mem | head -n 8)
CPU_THERSHOULD=2.0


while IFS= read -r line
do
  USAGE=$(echo $line | awk -F " " '{print $3F}'  | cut -d "%" -f1)
  FOLDER=$(echo $line | awk -F " " '{print $5F}')
  if [ "$USAGE" > "$CPU_THERSHOULD" ]
  then
  echo "$FOLDER is greater than $CPU_THERSHOULD, CURRENT USAGE=$USAGE"
  fi
done <<< $CPU_USAGE











