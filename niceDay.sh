#!/usr/bin/bash

# Conditional statement practice

read -p "How was your day? " answer

if [ "$answer" == "Fine" ]; then
	echo "Good"
else
	echo "Well, Naija is hot right now"
fi
