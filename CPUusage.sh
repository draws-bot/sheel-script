#!/bin/bash

CPU_USAGE=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6)
CPU_THERSHOULD=1.0

while IFS =read -r is line 
do
  echo "this are the top five cpu consuming :$line"
done <<< $CPU_USAGE


