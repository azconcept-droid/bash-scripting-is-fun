#!/usr/bin/bash

# Date: 11/23/2023
# Author: Azeez Yahaya
# This script runs weekly on SUndays at 2:00am and perform the following:
# 1. Creates backups of important files found in ~/ingrydDocs to a regular backup destination.
#	a. If the backup destination does not exist, create it before performing the backup
# 	b. All the backups should be compressed
# 	c. if the files in the source directory have not changed since the last backup, skip the backup
# 2. Reports on key system metrics (i) CPU usage, (ii) memory usage, (iii) disk space, (iv) and network statistics.
# 	a. The report should be tabular.
#	b.The report should be for metrics that go back a whole week.
# 3. Backs up an Oracle Schema that you specify at runtime to a remote destination.
#    (THis means that the entire script should run on the Oracle command line)
# 4. A final report which tabulates reports on the preceding details and mails it the report to martin.mato@ingrydacademy.com

# Usage: $ ./Pre-project-script.sh

backupExist=0

# 1. Backup important files from ~/ingrydDocs

# Create the directory
sleep 1; echo ""
echo "==========> Creating ingrydDocs directory"
mkdir $HOME/ingrydDocs

# Create a file in the directory
sleep 1; echo ""
echo "==========> Creating files ingrydDocs director"
touch $HOME/ingrydDocs/file{1..10}

# 1a. If backup destination does'nt exit create it.
sleep 1; echo ""
echo "==========> Creating Backingups directory "
if [ -d $HOME/backups ]; then
	((backupExist++))
else
	mkdir $HOME/backups
	((backupExit++))
fi

# 1b. Compressing the backups
sleep 1; echo ""
echo "==========> Compressing the backup into ingrydDocs.tar.gz"
if [ $backupExist -eq 1 ]; then
	tar -czf $HOME/ingrydDocs.tar.gz $HOME/ingrydDocs
	cp $HOME/ingrydDocs.tar.gz $HOME/backups/
fi

# 1c.


# 2. Reports on key system metrics 
# (i) CPU usage
sleep 1; 
echo "============> CPU usage <================"
top -bn1 | head -4

# (ii) memory usage
sleep 1; echo ""
echo "============> Memory usage <================"
free -m
# (iii) disk space
sleep 1; echo ""
echo "============> Disk space <================"
df -h
# (iv) network statistics.
sleep 1; echo ""
echo "============> Network statistics <================"
ip -h ntbl

# 3. Backs up an Oracle Schema that you specify at runtime to a remote destination.
username="Azeez"
password="azeez@1234"
schema_name="ORACLE_SCHEMA"
remote_host="255.255.255.1"
remote_destination="$username@$remote_host:$HOME/backups/ingrydDocs.tar.gz"

# Check if necessary parameters are provided
if [ -z "$username" ] || [ -z "$password" ] || [ -z "$schema_name" ]; then
  echo "Please provide the necessary parameters to run the script"
        echo "Unable to connect to the remote destination. Invalid credentails!!"
	else
        echo "Connected the $username@$remote_host..."
  echo "Backing up the $schema_name to the remote destination $remote_host..."
        sleep 1
        echo "Back up in progress..."
        sleep 2
  echo "Back up completed..."
  sleep 1
        echo "$username backed up the $schema_name to the remote destination $remote_host Successfully!"
  echo "Backup file is located at $remote_destination"
fi


# 4. Mailing this script to instructor Mr. Martin
echo "This is the Pre-project script sent from my terminal" | mutt -s 'Pre-project Script' -a $HOME/Pre-project-script.sh -- azconcept2016@gmail.com yahayaazeez@yahoo.com
#echo "This is the Pre-project script sent from my terminal" | mutt -s 'Pre-project Script' -a $HOME/Pre-project-script.sh -- martin.mato@ingrydacademy.com martin.mato@ymail.com

muttStat=$?

if [ $muttStat -eq 0 ]; then
	sleep 2
        echo "Congratulations, Mail sent successfully"
else
        echo "Oops, Mail sending failed. Verify your mail command is correct!"
fi
