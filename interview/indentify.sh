#!/bin/bash

for i in $@
do
    echo "indetify repeating name=grep "s" <<< "$!" | wc -l
done

