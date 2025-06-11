#!/bin/bash

# What it does:
# - Scans the given directory (or current one if none is specified)
# - Calculates file sizes
# - Sorts them from largest to smallest
# - Lists the top 10 chonkers on your server

# Usage: ./find_biggest_files.sh /var/log

DIR=${1:-.}

echo "🔎 Searching for the biggest files in: $DIR"
echo "--------------------------------------------"

find "$DIR" -type f -exec du -h {} + 2>/dev/null | sort -rh | head -n 10