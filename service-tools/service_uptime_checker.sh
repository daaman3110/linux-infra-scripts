#!/bin/bash

for service in crond sshd nginx
do
	STATUS=$(systemctl is-active $service)
	if [[ "$STATUS" != "active" ]]
	then
		echo "ALERT: Service $service is down!! Current Status: $STATUS"
	fi
done

