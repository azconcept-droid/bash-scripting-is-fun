#!/bin/bash
# Author: DevOps Guy
# Date: 19/3/2025
# Usage: ./<name of script>

# Variable Declaration
PACKAGE="httpd wget unzip"
SVC="httpd"
URL="https://www.tooplate.com/zip-templates/2098_health.zip"
ART_NAME="2098_health"
TEMDIR="/tmp/webfiles"

# Installing Dependencies
echo "#########################################"
echo "Installing packages"
echo "#########################################"
sudo yum install $PACKAGE -y > /dev/null
echo

# Start & Enable Service
echo "#########################################"
echo "Start & Enable HTTPD Service"
echo "#########################################"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo

# Creating Temp Directory
echo "#########################################"
echo "Starting Artifact Deployment"
echo "#########################################"
mkdir -p $TEMDIR
cd $TEMDIR
echo

wget $URL > /dev/null
unzip $ART_NAME.zip > /dev/null
sudo cp -r $ART_NAME/* /var/www/html
echo

# Bounce Service
echo "#########################################"
echo "Restarting HTTP service"
echo "#########################################"
systemctl restart $SVC
echo

# Clean Up
echo "#########################################"
echo "Removing Temporary Files"
echo "#########################################"
rm -rf $TEMDIR
echo

sudo systemctl status $SVC
ls /var/www/html/
