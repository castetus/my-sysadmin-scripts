echo "---$(date "+%Y-%m-%d %H:%M:%S")---" >> monitor.txt
free -h >> monitor.txt
df -h >> monitor.txt
uptime >> monitor.txt