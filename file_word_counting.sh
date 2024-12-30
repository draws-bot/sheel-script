#!/bin/bash

SOURCE_DIRECTORY=/home/ec2-user

if [ -d $SOURCE_DIRECTORY ]
then
    echo "$SOURCE_DIRECTORY source_directory is exists"
else
    echo "$SOURCE_DIRECTORY make sure it should exists"
    exit 1
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.txt")
number_of_lines=wc --lines < $FILES
number_of_words=wc --word < $FILES

while IFS= read -r line                                                        #WHAT IT IS READING $FILES THAT WHY DONE <<< $FILES
do
  "number_of_lines=wc --lines < $line"
  "number_of_words=wc --word < $line"
  echo "Number of lines: $number_of_lines"
  echo "Number of words: $number_of_words"
done <<< $FILES