#!/bin/bash

# Find .log files older than 7 days and archive them
find /var/log -type f -name "*.log" -mtime +7 > /tmp/old_logs_list.txt

# Check if there are any old logs found
if [[ -s /tmp/log/old_logs_list.txt ]]
then
	tar -czf /tmp/old_logs.tar.gz -T /tmp/old_logs_list.txt
	echo "Archived old log files into /tmp/old_logs.tar.gz"
else
	echo "No old log files found older than 7 days"
fi

