#!/bin/bash

read -p "Enter A Number: " number

if [[ (( $number%2 -eq 0 )) ]]
then
	echo "Your Number $number is Even!!"
else
	echo "Your Number $number is Odd!!"
fi

