#!/bin/bash
echo "Hostname: $(hostname)"
echo "IP Address: $(hostname -I | awk '{print $1}')"
echo "OS Version: $(lsb_release -d | cut -f2)"
echo "Memory: $(free -h | awk '/Mem/{print $2}')"
echo "Disk Size: $(df -h / | awk 'NR==2{print $2}')"
