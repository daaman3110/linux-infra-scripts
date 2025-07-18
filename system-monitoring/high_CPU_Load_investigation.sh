#!/bin/bash

#Step 1:Check Current Load
load=$(uptime | awk '{print $(NF -2)}' | tr -d ',')

if [[ $(echo "$load > 2.0" | bc -l) ]]
then
	# Step 2: List the top 5 processes and log into the cpu_report.txt
	echo "Damn Brotha!! Ur CPU is getting Cooked rn and the top culprits are logged into /tmp/cpu_report.txt"
	ps aux --sort=-%cpu | head -n 6 >> /tmp/cpu_report.txt

else
	echo "Chill Bro!! CPU's under total control"

fi


