#!/bin/bash


#save tow parameters to varible file & backup and set date varible 

file=$1
backup=$2
date=$(date +"%F")

#check if enter any thing when run the script

if [ $# -ne 2 ]; then
	echo -e " you must enter the path to the file who wants to make a backup  copy  "
	echo " and the path that wants to story in't"
	echo " example   [ $0 ]  [ /home/user/foldir ]  [ /home/backup/ ]"
	exit 1
fi 

#check if the path that enter it is existing or no

if ! [ -d $file ]; then

	echo "  your file|path that wants to make a backup  is not existing " 
	exit 3
fi

#check if the path that enter it is existing or no

if ! [ -d $backup ]; then

	echo " your path that you want to store a backup is not existing "
	exit 3
fi

#this for do backup from main folder to the backup folder


sudo rsync -avb "/$file" "/$backup/$date"


if [ -d "/$backup/$date" ]; then 

	sudo tar -czf "/$backup/$date.tar.gz" "/$backup/$date"
	sudo rm -rf "/$backup/$date"
fi
#this enable just three backup and the old one of thim removeit
cd "/$backup" || exit 
ls -1t | tail -n +4 |  xargs rm -rf 
