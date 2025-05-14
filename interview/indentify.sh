#!/bin/bash


x=mississipisansaiswa

grep -o "s" <<< "$x" | wc -l


#indentify=$(echo $x | grep -o -i "s"  | wc --lines)
