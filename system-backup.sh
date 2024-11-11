#!/bin/bash
# Backup a directory and store it in a backup folder with a timestamp
# Ideal for scheduling backups via cron jobs
SOURCE="/path/to/important/data"
DEST="/path/to/backup/location"
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
tar -czvf $DEST/backup_$TIMESTAMP.tar.gz $SOURCE
echo "Backup completed: $DEST/backup_$TIMESTAMP.tar.gz"