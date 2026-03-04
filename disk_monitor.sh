#!/bin/bash

THRESHOLD=80
LOG_FILE="$HOME/disk_monitor.log"

#Get disk usage of root partition
USAGE=$(df -h / | awk 'NR==2 {gsub("%",""); print $5}')

#Check if disk value is empty
if [ -z "$USAGE" ]; then
	echo "$(date): Unable to retreive disk usage" >> "$LOG_FILE"
        exit 1
fi

if [ "$USAGE" -gt "$THRESHOLD" ]; then
	echo "$(date): Warning - Disk usage is ${USAGE}% (THRESHOLD:$(THRESHOLD)%)" >> "$LOG_FILE"
else
	echo "$(date): Disk usage is normal: ${USAGE}%" >> "$LOG_FILE"
fi
