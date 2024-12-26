#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-log/

if [ -d $SOURCE_DIRECTORY ]
then
    echo "$SOURCE_DIRECTORY is exists"
else
    echo "$SOURCE_DIRECTORY make sure it should exists"
    exit 1
fi

FILES=$(find . -name "*.log" -mtime +14)

while IFS=read -r line
do
  echo "deleting files :$line"
  rm -rf $line
done <<< SOURCE_DIRECTORY
