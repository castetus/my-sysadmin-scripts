#!/bin/bash

INTERVAL=5
while true
do
  echo "---$(date "+%Y-%m-%d %H:%M:%S")---" >> monitor.log
  free -h >> monitor.log
  df -h >> monitor.log
  uptime >> monitor.log
  sleep $INTERVAL
done