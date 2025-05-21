#!/bin/bash

backup=$1

if  [ $# $backup  ]; then

	echo " enter your path to the file that you wants to make a bakup"
	echo " [ $0 ]  [path/to/the/file"
	exit
fi

date=$(date +"%F")

if ! [ -d  $backup ]; then

	echo "your file is not existing  $backup"
	exit
fi

	 rsync -avb "$backup" "pww@192.168.2.4:/home/pww/Desktop/$date"

	
	cd /home/pww/Desktop" || exit
	ls -1t | tail -n +4 | xargs rm -rf
