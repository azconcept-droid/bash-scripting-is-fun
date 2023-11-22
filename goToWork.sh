#!/bin/bash

# CASE Illustration

read -p "Enter a day: " day

# convert to lower case letter
day_=$(echo "$day" | tr A-Z a-z)

case "$day_" in
	"monday") echo "Go to work and make a schedule" ;;
	"tuesday") echo "Go to work" ;;
	"wednesday") echo "Go to work and remember to call grandma" ;;
	"thursday") echo "Go to work but begin tp prepare for the weekend" ;;
	"friday") echo "Roundup at work and get ready to rest" ;;
	"saturday") echo "Relax!!!" ;;
	"sunday") echo "Relax!!!" ;;
	*) echo "This is not a day of the week" ;;
esac
