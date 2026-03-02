#!/usr/bin/env bash
LOG_DIR="/var/log/myapp"
DAYS=7
LOG_FILE="$HOME/log_cleanup.log"

#check if directort exists
if [ ! -d "$LOG_DIR" ]; then
	echo "$(date): Log directory does not exist: $LOG_DIR" >> $LOG_FILE
	exit 1
fi

#find and delete old logs
find "$LOG_DIR" -type f -mtime +$DAYS -print -delete >> $LOG_FILE 2>&1

echo "$(date): Old logs older than $DAYS days have been deleted successfully" >> $LOG_FILE
