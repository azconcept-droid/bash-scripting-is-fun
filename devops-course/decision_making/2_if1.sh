#!/bin/bash
# 16/4/2025

read -p "Enter a number: " NUM
echo

if [ $NUM -gt 100 ]
then
  echo "We have entered in IF block"
  sleep 3
  echo "YOur NUmber is greater than 100"
  echo
  date
else
  echo "You have entered number less than 100."
fi

echo "Script execution completed successfully."