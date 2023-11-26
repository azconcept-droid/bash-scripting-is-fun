#!/bin/bash

# THis script sort files gretaer than certain size

# Enter file size
# read -p "Enter the size of file you are searching for: " fileSize

# Enter the directory name
read -p "Which directory: " dir

minimumSize=10485700

if [ -d "$dir" ]; then
	echo "The files that are larger than 1GB are: "
	echo "---------------------------------------"

	find $dir -type f -size +"$minimumSize"c -exec ls -lh {} \;
else
	echo "Directory does not exit"
fi
