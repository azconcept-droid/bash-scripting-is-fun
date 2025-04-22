#!/bin/bash
# Date: 22/4/2025
# run for loop to display user

MYUSERS="alpha beta gamma"

for usr in $MYUSERS
do
  echo "Adding user $usr."
  useradd $usr
  id $usr
  echo "#########################################"
done