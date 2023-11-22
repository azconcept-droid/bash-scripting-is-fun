#!/bin/bash

echo "################# WELCOME ##############"; echo ""

echo "This app check is a day is weekdays or weekends"

read -p "Enter a day of the week: " day

if [ "$day" == "Saturday" ] || [ "$day" == "Sunday" ]; then
	echo "This is a weekend day"
else
	echo "This is a week day"
fi
