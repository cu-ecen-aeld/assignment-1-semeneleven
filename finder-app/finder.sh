#!/bin/bash


if [[ $# -ne 2 ]]; then
    echo "invalid number of arguments, should be 2"
    exit 1
fi

if [[ !((-d $1)) ]]; then
    echo "$1 should be directory"
    exit 1
fi 

filesdir=$1
searchstr=$2

files=$(find $filesdir -type f | wc -l) 
matches=$(grep -r -n --binary-files without-match "$searchstr" $filesdir | wc -l)

echo "The number of files are $files and the number of matching lines are $matches"
