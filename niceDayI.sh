#!/bin/bash

# Case insensitive practice

read -p "How has your day been? " reply

reply_lower=$(echo "$reply" | tr '[:upper:]' '[:lower:]')

if [ "$reply_lower" == "fine" ]; then
	echo "Good"
else
	echo "Well, Naija is hot right now"
fi
