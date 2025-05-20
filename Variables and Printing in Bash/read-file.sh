#!/bin/bash

read -p "enter the path to the file " file_name

if [ -f $file_name ]; then
cat $file_name
else 
echo "the file is not existing "
fi

