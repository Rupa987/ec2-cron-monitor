#!/bin/bash

LOG_FILE="/home/ec2-user/ec2-cron-monitor/disk_monitor.log"

DATE=$(date)
DISK_USAGE=$(df / | awk 'NR==2 {gsub("%","",$5); print $5}')

echo "--------------------------------" >> "$LOG_FILE"
echo "Date: $DATE" >> "$LOG_FILE"
echo "Disk Usage: $DISK_USAGE%" >> "$LOG_FILE"

if [ "$DISK_USAGE" -gt 80 ]; then
    echo "WARNING: Disk usage is HIGH!" >> "$LOG_FILE"
else
    echo "Status: Disk usage is NORMAL" >> "$LOG_FILE"
fi
