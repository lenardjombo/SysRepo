#!/bin/bash

# Set the threshold values
cpu_threshold=90
disk_threshold=80

# Check CPU usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d'%' -f1)
if [ "$cpu_usage" -gt "$cpu_threshold" ]; then
    echo "High CPU usage detected! Sending notification..."
    # Send email notification here
fi

# Check disk usage
disk_usage=$(df -h / | awk 'NR==2{print $5}' | cut -d'%' -f1)
if [ "$disk_usage" -gt "$disk_threshold" ]; then
    echo "High disk usage detected! Sending notification..."
    # Send email notification here
fi
