# This script is a more advanced file backing up system than my previous one that creates a .tar for a user specified directory
# The script is paired with a config file at a specified location that can be used to dicate information such as the frequency of backups
# or the files to be backed up. 
# 
# Conf file options to set backup frequency:
# 0 = hourly
# 1 = daily
# 2 = monthly
#
#!/bin/bash

# Getting system date and time for archive

archive_time = $(date + "%Y-%m-%d %H:%M-%S")
