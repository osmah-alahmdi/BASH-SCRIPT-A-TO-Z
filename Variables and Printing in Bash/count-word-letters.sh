#!/bin/bash

var=pww3


wordcount=$(echo "$var" |  wc -w )
letter_count=$(echo "$var"|tr -cd '[:alpha:]' | wc -c)

echo "the number of word is  : $wordcount"
echo "the number of letters is  : $letter_count"
