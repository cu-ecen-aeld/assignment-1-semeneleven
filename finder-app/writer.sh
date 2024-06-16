#!/bin/bash

if [[ $# -ne 2 ]]; then
    exit 1
fi

writefile=$1
writestr=$2

dir=$(dirname $writefile)
if [[ !(( -d $dir)) ]]; then
    mkdir -p $dir
    if [[ $? -ne 0 ]]; then
        exit 1
    fi
fi

touch $writefile && echo "$writestr" > $writefile

if [[ $? -ne 0 ]]; then
    exit 1
fi   
