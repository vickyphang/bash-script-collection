#!/bin/bash

# What it does:
# - Finds .log files older than X days (default: 7)
# - Compresses them into .gz archives with date-stamped names
# - Stores them in a separate directory
# - Deletes the original logs after archiving

# Usage: ./rotate_logs.sh /var/log /var/log/archived 5

LOG_DIR=${1:-/var/log}
ROTATE_DIR=${2:-/var/log/archived}
DAYS_OLD=${3:-7}
TIMESTAMP=$(date +%F)

mkdir -p "$ROTATE_DIR"

echo "🔁 Rotating logs in $LOG_DIR older than $DAYS_OLD days..."

find "$LOG_DIR" -type f -name "*.log" -mtime +"$DAYS_OLD" | while read FILE; do
  BASENAME=$(basename "$FILE")
  ARCHIVE_NAME="${BASENAME%.*}-$TIMESTAMP.log.gz"
  gzip -c "$FILE" > "$ROTATE_DIR/$ARCHIVE_NAME" && rm "$FILE"
  echo "📦 Archived $FILE → $ROTATE_DIR/$ARCHIVE_NAME"
done

echo "✅ Log rotation complete."