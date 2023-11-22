#!/bin/bash

# Testing files

read -p "Enter the file name: " filename

if [ -f $filename ]; then
	echo "This is a regular file"
else
	echo "This is not a regular file"
fi
