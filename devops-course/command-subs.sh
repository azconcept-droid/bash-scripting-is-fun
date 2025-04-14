#!/bin/bash
# Date: 14/4/2025

UP="uptime"
echo $UP
echo `uptime`
CURRENT_USER=$(who)
echo $CURRENT_USER
echo $(uptime)
free -m
free -m | grep Mem
free -m | grep Mem | awk '{print $4}'
free -m | grep Mem
FREE_RAM=`free -m | grep Mem | awk '{print $4}'`
echo $FREE_RAM
echo "Free RAM is $FREE_RAM mb"
