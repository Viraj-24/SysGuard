#!/bin/bash

echo "================================="
echo "SysGuard Monitoring Started"
echo "Time: $(date)"
echo "================================="

./cpu_monitor.sh
./ram_monitor.sh
./disk_monitor.sh

echo "Monitoring Completed"
