#!/bin/bash

# Step 1: Generate latest file list (fresh)
find /tmp/testdump -type f -size +30M -mtime +15 > /tmp/backup.txt

#Step 2: Safety Check : Only proceed if any files found
if [ -s /tmp/backup.txt ]

then
	echo "Archiving and deleting old large files from /tmp/testdump..."

	# Step 3: Archiving them into a zip file and deleting them
	zip /home/daamanpatel/backup_scripts_for_memory.zip -@ < /tmp/backup.txt

	# Step 4: Deleting them from testdump folder after archiving them to free up space
	xargs rm < /tmp/backup.txt

	echo "Cleanup Done!!!"

else

	echo "No files older than 15 days found"

fi


