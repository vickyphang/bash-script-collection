#!/bin/bash

# What it does:
# - Shows free and used memory in human-readable form
# - Displays current CPU load and user sessions
# - Lists how much disk space is left on /
# - Ranks the top 5 processes hogging memory

echo "📊 System Health Report - $(date)"
echo "------------------------------------"

echo "🧠 Memory Usage:"
free -h
echo

echo "🔥 CPU Load:"
uptime
echo

echo "💾 Disk Space:"
df -h /
echo

echo "✅ Top 5 memory-hungry processes:"
ps -eo pid,comm,%mem,%cpu --sort=-%mem | head -n 6