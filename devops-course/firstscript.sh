#!/bin/bash
# title: first script
# date: 19/3/2025

### This script prints system info ###

echo "Welcome to bash script"
echo

# checking system uptime
echo "########################################"
echo "The uptime of the system is: "
uptime
echo

# Memory Utilization
echo "########################################"
echo "Memory Utilization"
free -m

# Disk Utilization
echo "#######################################3"
echo "Disk Utilization"
df -h

echo "Done!"
echo "happy hacking!!!"
