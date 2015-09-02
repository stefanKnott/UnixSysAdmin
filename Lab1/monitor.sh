#!/bin/bash

echo "DISK USAGE: " `df -h / | tail -1 | cut -d ' ' -f12`
echo "MONITORING..."

while true;do
	if [ `df -h / | tail -1 | cut -d ' ' -f12` == '80%' ]
	then
		echo "Disk is 80% FULL! Sending email..."
		mail -s "Server storage 80% full" server@admin.com <<< "Server storage 80% full"
	else
		`sleep 1s`
	fi
done
