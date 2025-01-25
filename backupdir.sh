# This script creates a backup of a user specified directory at a user specified destination
# It will automatically use an existing backup directory if one exists, or create one if it doesn't
# Note that if this script will overwrite all files of the same name in the destination directory

#!/bin/bash

while :
do
	echo "Enter the source path: "
	read srce
	if [ ! -d "$srce" ]; then
		echo "Error: source directory not found. Check the spelling and path."
	else
		echo "Source found"
		break
	fi 
done

echo "Enter the destination path: "
read dest

if [ ! -d "$dest" ]; then
	mkdir "$dest"
fi

cp -r "$srce" "$dest"

echo "Backup complete"
