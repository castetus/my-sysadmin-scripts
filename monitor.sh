#!/bin/bash

INTERVAL=5

if [ ! -f "monitor.log" ]; then
  echo "Log file doesn't exists, let's create it"
  touch monitor.log
fi

while true
do
  echo "---$(date "+%Y-%m-%d %H:%M:%S")---" >> monitor.log
  free -h >> monitor.log
  df -h >> monitor.log
  uptime >> monitor.log
  sleep "$INTERVAL"
done