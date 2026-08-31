#!/bin/bash
if ! systemctl is-active --quiet nginx; then
  systemctl start nginx
  echo "$(date): Nginx was down, restarted it." >> ~/project-orion/logs/nginx_watchdog.log
fi
