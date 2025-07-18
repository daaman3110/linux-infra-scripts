#!/bin/bash

USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')
THRESHOLD=80

if [[ $USAGE -gt $THRESHOLD ]]
then
	echo " Disk Space is Running Low "
fi


