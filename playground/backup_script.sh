#!/bin/bash

# Taking Source and Destination folders arguments
SOURCE=$1
DESTINATION=$2

# Making timestamp
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

#Final Folder Path
FOLDER="$DESTINATION/backup_$TIMESTAMP"

# Creating final destination folder with timestamp
mkdir -p "$FOLDER"

# Copying files from Souce to destination
cp -r "$SOURCE"/* "$FOLDER"

# Show confirmation message
echo "All Files backed up!!"

