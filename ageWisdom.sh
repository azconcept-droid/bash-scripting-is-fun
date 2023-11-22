#!/bin/bash

# AND Illustration

read -p "How old are you? : " age
read -p "What is your IQ? : " iq

if [ $age -ge 18 ] && [ $iq -ge 120 ]; then
	echo "You are a wise man"
else
	echo "You are still learning"
fi
