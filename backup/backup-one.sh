#!/bin/bash
# save tow parameters to varible file & backup
file=$1
backup=$2
#check if enter any thing or no
if [ $# -ne  2 ]; then 
	
	echo " you must enter file pat and  backup path "
	echo " $0    [ project ]  [ backup path ]"
	exit

fi

#set date varible to save backup as  date name
today=$(date +"%F")
#check if the file is existing or no
if ! [ -d $backup ] ;then
 	#if not existing then will take him out of the script
	echo "your bath is uncrect  "
	sleep 3
	exit

fi

	#this for do backup form main folder to the backup folder
	 rsync -avb "$file/" "$backup/$today/"
#chech if the backup existing or no 
if [ -d "/$backup/$today" ]; then
	echo "backup is scessful in : $backup  : $today "
else 
	echo "backup is not scessful "
fi
