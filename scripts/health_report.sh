#!/bin/bash
REPORT_DIR=~/project-orion/reports
mkdir -p "$REPORT_DIR"
FILE="$REPORT_DIR/health_$(date +%F_%H-%M-%S).txt"

HOSTNAME=$(hostname)
DATE=$(date +%F)
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8"%"}')
MEM=$(free | awk '/Mem/{printf "%.0f%%", $3/$2*100}')
DISK=$(df -h / | awk 'NR==2{print $5}')
UPTIME=$(uptime -p)

{
  echo "Hostname: $HOSTNAME"
  echo "Date: $DATE"
  echo "CPU: $CPU   Memory: $MEM   Disk: $DISK   Uptime: $UPTIME"
} | tee "$FILE"
