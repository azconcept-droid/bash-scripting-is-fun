#!/bin/bash

# String comparison

read -p "Enter two strings below: " str1 str2

if [ "$str1" = "$str2" ]; then
	echo "These strings are the same"
else
	echo "These strings are different"
fi
