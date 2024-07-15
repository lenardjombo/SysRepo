#!/bin/bash

# Get CPU usage
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}')

# Get memory usage
memory_usage=$(free -m | awk 'NR==2{printf "%.2f%%", $3*100/$2}')

# Get disk usage
disk_usage=$(df -h / | awk 'NR==2{print $5}')

# Get network statistics
network_stats=$(ifconfig eth0 | grep "RX packets\|TX packets")

echo "CPU Usage: $cpu_usage"
echo "Memory Usage: $memory_usage"
echo "Disk Usage: $disk_usage"
echo "Network Statistics:"
echo "$network_stats"
