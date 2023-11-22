#!/bin/bash

echo "################# WELCOME ##############"; echo ""

echo "This app check if a file is a regular file"

read -p "Enter the file name: " filename

if [ -e "$filename" ]; then
	if [ -f "$filename" ]; then
		echo "This is a regular file"
	elif [ -d "$filename" ]; then
		echo "This is a directory"
	else
		echo "This is not a file or a directory"
	fi
else
	echo "This file does'nt exit"
fi
