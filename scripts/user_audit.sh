#!/bin/bash
LOG=~/project-orion/logs/user_audit.log

{
  echo "=== User Audit: $(date) ==="
  echo "--- Users ---"
  cut -d: -f1 /etc/passwd
  echo "--- Groups ---"
  cut -d: -f1 /etc/group
  echo "--- Total user count ---"
  cut -d: -f1 /etc/passwd | wc -l
} > "$LOG"
