#!/bin/bash

pass="linuxiscool"

wrong_counter=0

while [ "$epass" != "$pass" ]
do
	read -p "Enter Password: " -s epass

	if [[ "$epass" != "$pass" ]]
	then
		echo "Password Incorrect"
		let wrong_counter++
		if [[ $wrong_counter -eq 3 ]]
		then
			echo "Access Denied!! Too many attempts"
			break
		fi

	else
		echo "Welcome Hacker"
		break
	fi
done

