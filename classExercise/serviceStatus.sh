#!/bin/bash

# Check if service is included

if [ $# -ne 1 ]; then
	echo "usage: ./serviceStatus.sh <service_name>"
	exit 1
fi

# get the service name
serviceName=$1

# get the status of the service

case "$(systemctl is-active $serviceName)" in
	active)
		echo "The service is running"
		;;
	inactive)
		echo "The service is not up and kicking"
		;;
	*)
		echo "The service state is unknown"
		;;
esac

