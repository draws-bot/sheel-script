#!/bin/bash

SOURCE_DIRECTORY=/tmp/app-log/

if [ -d $SOURCE_DIRECTORY ]
then
    echo "$SOURCE_DIRECTORY source_directory is exists"
else
    echo "$SOURCE_DIRECTORY make sure it should exists"
    exit 1
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

while IFS=read -r line   #WHAT IT IS READING $FILES THAT WHY DONE <<< $FILES
do
  echo "deleting files :$line"
  rm -rf $line
done <<< $FILES
