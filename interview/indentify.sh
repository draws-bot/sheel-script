#!/bin/bash


x=mississipisansaiswa

#grep -o "s" <<< "$x" | wc -l


indentify=$(echo $x |grep -o "s"  | wc --lines)
