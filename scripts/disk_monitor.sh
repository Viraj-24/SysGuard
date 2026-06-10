#!/bin/bash

THRESHOLD=80

DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

echo "$TIMESTAMP - Disk Usage: $DISK_USAGE%" >> ../logs/disk.log

if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
    echo "$TIMESTAMP - ALERT! High Disk Usage: $DISK_USAGE%" >> ../alerts/alerts.log
fi
