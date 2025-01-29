# This script is a more advanced file backing up system than my previous one that creates a .tar for a user specified directory
# The script is paired with a config file at a specified location that can be used to dicate information such as the frequency of backups
# or the files to be backed up. 
# 
# Conf file options to set backup frequency:
# 0 = hourly
# 1 = daily
# 2 = monthly

#!/bin/bash

# Getting system date and time for backup

backup_time=$(date +%Y-%m-%d_%H-%M-%S)

# Creating backup file name
backup_name=backup$backup_time.tar.gz

# Getting location of config file
config_loc=/backup/backup_config.txt

# Checking if config file exists
while [ ! $config_loc ];
do
	echo "config file not found at: $config_loc"
	echo "please enter a new config file location: "
	read config_loc
done
echo "config found"
# Create a list of files to be backed up by reading from conifg

line_number=1

while IFS= read -r file_name
do
	echo "$file_name"
	if [ ! $file_name ]
	then 
		echo "WARNING: $file_name does not exist"
		echo "double check line $line_number of config file"
	fi
	backup_list="$backup_list $file_name"
done
echo "done test"
