#!/bin/bash

echo "################# WELCOME ##############"; echo ""

echo "This is a Login system"; echo ""

read -p "Enter your user name: " userName
read -p "Enter your paassword: " password

if [ "$userName" == "admin" ] && [ "$password" == "password123" ]; then
	echo "Welcome $userName"
else
	echo "Out of bound!!! if you are not an admin"
fi
