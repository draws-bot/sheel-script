#!/bin/bash




for i in $@
do
    echo "indetify repeating name=grep -o "s" <<< "$i" | wc -l"
done

