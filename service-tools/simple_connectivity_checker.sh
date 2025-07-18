#!/bin/bash

HOST=$1

ping -c 2 $HOST 

if [[ $? -eq 0 ]]
then
	echo "Connection successfully established"
else
	echo "Connection Unsucessful"
fi

