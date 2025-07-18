#!/bin/bash

LOAD=$(uptime | awk -F 'load average:' '{print $2}' | cut -d ',' -f1)

THRESHOLD=1.0

if (( $(echo "$LOAD > $THRESHOLD" | bc -l) ))
then
	echo "WARNING !!! LOAD EXCEEDED!!!"
else
	echo "CHILLAX BRO NO WORRIES!!"
fi

