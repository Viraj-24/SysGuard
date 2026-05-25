#!/bin/bash

THRESHOLD=80

MEMORY_USAGE=$(free | grep Mem | awk '{print ($3/$2) * 100}')

TIMESTAMP=$(date "+%Y-%m-%d %H:%M:%S")

echo "$TIMESTAMP - Memory Usage: $MEMORY_USAGE%" >> ../logs/ram.log

MEMORY_INT=${MEMORY_USAGE%.*}

if [ "$MEMORY_INT" -gt "$THRESHOLD" ]; then
    echo "ALERT! High Memory Usage: $MEMORY_USAGE%" >> ../alerts/alerts.log
fi
