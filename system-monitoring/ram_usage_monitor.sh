#!/bin/bash

#Code for checking the free RAM currently
FREE_RAM=$(free -t | awk '/Total:/ {print $4}')

#Threshold
THRESHOLD=500

#Condition to check if the free ram is below threshold or not
if [[ $FREE_RAM -lt $THRESHOLD ]]
then
	echo "WAKE UP DROWSY ORGANISM!! YOUR MEMORY IS COOKED RN ☠️☠️☠️ ! FREE UP"
else
	echo "NO WORRIES!! YOU CAN CHILL!! ENOUGH MEMEORY IS THERE JUST LIKE THE SPACE FOR THAT GIRL U LOVE IN UR HEART"
fi

