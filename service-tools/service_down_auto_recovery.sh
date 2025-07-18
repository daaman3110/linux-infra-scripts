#!/bin/bash

# Step 1: Check if the crond is running and then if not automatically restart it

if [[ $(systemctl is-active crond) == "inactive" ]]
then
	echo "Crond is inactive!!! Dont worry bro I got ya!! Restarting the service"
	systemctl restart crond

	#Step 2: Logging it into /var/log/crond_monitor.log
	echo "$(date): Crond was found inactive and restarted" >> /var/log/crond_monitor.log


else
	echo "Not an issue bro, crond is running as usual"
fi


