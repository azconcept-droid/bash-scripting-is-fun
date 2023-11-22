#!/bin/bash

# Copy file and return the status

cp $1 ~/backups 2>/dev/null

if [ "$#" -eq 1 ]; then
	if [ "$?" == 0 ]; then
		echo "Operation Successful"
	else
		echo "Operation fails"
	fi
else
	echo "Usage: ./fileCopy <the_file_to_copy>"
fi
