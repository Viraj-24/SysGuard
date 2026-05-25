#!/bin/bash

THRESHOLD=80

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

echo "$TIMESTAMP - CPU Usage: $CPU_USAGE%" >> ../logs/cpu.log

CPU_INT=${CPU_USAGE%.*}

if [ "$CPU_INT" -gt "$THRESHOLD" ]; then
    echo "ALERT! High CPU Usage: $CPU_USAGE%" >> ../alerts/alerts.log
fi
