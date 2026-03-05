#!/bin/bash

SOURCE_DIR="/mnt/c/Users/dpaul/data"
BACKUP_DIR="/mnt/c/Users/dpaul/backups"
LOGFILE="$HOME/backup_script.log"
DATE=$(date +%F)

#Check if source exists
if [ ! -d "$SOURCE_DIR" ]; then
	echo "$(date):Error - The source directory does not exist." >> "$LOGFILE"
	exit 1
fi

#Create backup directory if not exists

mkdir - p "$BACKUP_DIR"

#Perform backup

tar -czf "$BACKUP_DIR/backup_$DATE.tar.gz" "$SOURCE_DIR"

#Check if backup was successful

if [ $? -eq 0 ]; then
	echo "$(date):Backup sucessfull - backup_$DATE.tar.gz" >> "$LOG_FILE"
else
	echo "$(date):Error - Backup Failed" >> "$LOG_FILE"
	exit 1
fi
