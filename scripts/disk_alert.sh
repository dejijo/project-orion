#!/bin/bash
THRESHOLD=80
USAGE=$(df / | awk 'NR==2{gsub("%","",$5); print $5}')
if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "$(date): WARNING - Disk usage at ${USAGE}%" >> ~/project-orion/logs/disk_alert.log
fi
