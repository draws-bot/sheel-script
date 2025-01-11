#!/bin/bash

SOURCE_DIRECTORY=/home/ec2-user/

if [ -d $SOURCE_DIRECTORY ]
then
    echo "$SOURCE_DIRECTORY source_directory is exists"
else
    echo "$SOURCE_DIRECTORY make sure it should exists"
    exit 1
fi

FILES=$(find $SOURCE_DIRECTORY -name "*.txt")

while IFS= read -r line                                                        #WHAT IT IS READING $FILES THAT WHY DONE <<< $FILES
do
  echo "file_name=$line"
  echo "number_of_lines=$(wc --lines < $line)"                                      # to open the text file that that why we are writing here {--line < $line} remeber this ...
  echo "vowCount=$(echo $string | grep -o -i "[aeiou]" | wc --lines < $line)"         #it will give vowels in a string...
  echo "number_of_words=$(wc --word < $line)"
done <<< $FILES