#!/bin/bash
# Rotate and compress logs
LOG_FILE="/path/to/logfile.log"
BACKUP_DIR="/path/to/log/backup"
TIMESTAMP=$(date +"%Y%m%d")
mv $LOG_FILE $BACKUP_DIR/log_$TIMESTAMP.log
gzip $BACKUP_DIR/log_$TIMESTAMP.log
touch $LOG_FILE
echo "Log rotation completed."