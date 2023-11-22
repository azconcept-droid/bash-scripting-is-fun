#!/bin/bash

# Ingryd certificate

echo "########### WELCOME ##############"

echo "This app check if you are eligible"

if [ "$#" == 3 ]; then
	if [ "$1" -ge 70 ] && [ "$2" -ge 80 ] && [ "$3" -ge 4 ]; then
		echo "You are eligible for Certificate"
	else
		echo "You are not eligible for Certificate"
	fi
else
	echo "Usage: ./ingrydSch.sh <avg pass mark> <attendance> <project>"
fi

